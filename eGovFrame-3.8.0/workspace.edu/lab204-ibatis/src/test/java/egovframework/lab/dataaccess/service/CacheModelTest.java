package egovframework.lab.dataaccess.service;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertNotSame;
import static org.junit.Assert.assertSame;

import java.math.BigDecimal;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.annotation.Resource;
import javax.sql.DataSource;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.core.io.ClassPathResource;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.transaction.TransactionConfiguration;
import org.springframework.test.jdbc.JdbcTestUtils;
import org.springframework.transaction.annotation.Transactional;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath*:META-INF/spring/context-*.xml" })
@TransactionConfiguration(transactionManager = "txManager", defaultRollback = false)
@Transactional
public class CacheModelTest {

	 // TODO [Step 3-2] CacheModelTest 실행
	 // iBatis 캐시 설정 테스트, DAO 클래스의 selectEmp() 메소드 주석을 변경한 후 테스트
	/*public EmpVO selectEmp(EmpVO vo) {
		// return (EmpVO) select("selectEmp", vo);
		return (EmpVO) select("selectEmpUsingCacheModelLRU", vo);
	}*/
	
	
	@Resource(name = "dataSource")
    DataSource dataSource;

    @Resource(name = "empService")
    EmpService empService;

    @Before
    public void onSetUp() throws Exception {
        // 테스트 편의상 매 테스트메서드 수행전 외부의 sql file 로부터 DB 초기화
        // (기존 테이블 삭제/생성)
        JdbcTestUtils.executeSqlScript(new JdbcTemplate(dataSource), new ClassPathResource("META-INF/testdata/sample_schema_hsql.sql"), true);
    }

    @Test
    public void testSelectUsingCacheModelLRU() throws Exception {

        
        EmpVO vo = makeVO();
        
        // insert
        empService.insertEmp(vo);
        
        
        // select1 - cache model use
        EmpVO resultVO = empService.selectEmp(vo);
        // check
        checkResult(vo, resultVO);

        // select2 - 같은 조건으로 동일한 쿼리 재실행
        EmpVO resultVO2 = empService.selectEmp(vo);
        // check
        checkResult(vo, resultVO2);

        // 두번째 select 결과는 캐시에 저장된 객체이므로, 두 객체는 동일한 객체 (readonly=true)
        assertEquals(resultVO, resultVO2);
        assertSame(resultVO, resultVO2);
        
        
        // update
        vo.setEmpName("홍길순");
        empService.updateEmp(vo);

        // update 후에 기존 캐시 객체가 flush되므로, 두 객체는 다른 객체
        EmpVO resultVO3 = empService.selectEmp(vo);
        assertNotEquals(resultVO, resultVO3);
        assertNotSame(resultVO, resultVO3);
        
        // insert, update, delete 어떤 호출도 일어나지 않음
        // 다시 한번 쿼리 호출
        EmpVO resultVO4 = empService.selectEmp(vo);
        assertNotEquals(resultVO, resultVO4);
        assertNotSame(resultVO, resultVO4);
        assertEquals(resultVO3, resultVO4);
        assertSame(resultVO3, resultVO4);
    }
    
    public EmpVO makeVO() throws ParseException {
        EmpVO vo = new EmpVO();

        // empNo 는 Biz. 서비스 내에서 id generation service 에
        // 의해 key 를 따고 설정할 것임.

        vo.setEmpName("홍길동");
        vo.setJob("개발자");
        vo.setMgr(new BigDecimal(7902));
        SimpleDateFormat sdf =
            new SimpleDateFormat("yyyy-MM-dd", java.util.Locale.getDefault());
        vo.setHireDate(sdf.parse("2009-07-09"));
        vo.setSal(new BigDecimal(1000));
        vo.setComm(new BigDecimal(0));
        vo.setDeptNo(new BigDecimal(20));

        return vo;
    }
    
    public void checkResult(EmpVO vo, EmpVO resultVO) {
        assertNotNull(resultVO);
        assertEquals(vo.getEmpNo(), resultVO.getEmpNo());
        assertEquals(vo.getEmpName(), resultVO.getEmpName());
        assertEquals(vo.getJob(), resultVO.getJob());
        assertEquals(vo.getMgr(), resultVO.getMgr());
        assertEquals(vo.getHireDate(), resultVO.getHireDate());
        assertEquals(vo.getSal(), resultVO.getSal());
        assertEquals(vo.getComm(), resultVO.getComm());
        assertEquals(vo.getDeptNo(), resultVO.getDeptNo());
    }
   
}
