package egovframework.lab.dataaccess.service;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertTrue;
import static org.junit.Assert.fail;

import java.math.BigDecimal;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

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

import egovframework.rte.fdl.cmmn.exception.EgovBizException;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath*:META-INF/spring/context-*" })
@TransactionConfiguration(transactionManager = "txManager", defaultRollback = false)
@Transactional
public class EmpServiceTest {
    
    // TODO [Step 3-1] EmpServiceTest 실행
	
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

    @Test
    public void testInsertEmp() throws Exception {
        EmpVO vo = makeVO();

        // insert
        BigDecimal empNo = empService.insertEmp(vo);
        vo.setEmpNo(empNo);

        // select
        EmpVO resultVO = empService.selectEmp(vo);

        // check
        checkResult(vo, resultVO);
    }

    @Test
    public void testUpdateEmp() throws Exception {
        EmpVO vo = makeVO();

        // insert
        BigDecimal empNo = empService.insertEmp(vo);
        vo.setEmpNo(empNo);

        // data change
        vo.setEmpName("홍길순");
        vo.setJob("설계자");

        // update
        empService.updateEmp(vo);

        // select
        EmpVO resultVO = empService.selectEmp(vo);

        // check
        checkResult(vo, resultVO);
    }

    @Test
    public void testDeleteEmp() throws Exception {
        EmpVO vo = makeVO();

        // insert
        BigDecimal empNo = empService.insertEmp(vo);
        vo.setEmpNo(empNo);

        // delete
        empService.deleteEmp(vo);

        // select
        try {
            @SuppressWarnings("unused")
            EmpVO resultVO = empService.selectEmp(vo);
            fail("EgovBizException 이 발생해야 합니다.");
        } catch (Exception e) {
            assertNotNull(e);
            // 여기서는 비지니스 단에서 명시적으로 exception 처리 하였음.
            // AbstractServiceImpl 을 extends 하고
            // processException("info.nodata.msg"); 과
            // 같이 메서드 콜 형태로 처리
            assertTrue(e instanceof EgovBizException);
            assertEquals("info.nodata.msg", ((EgovBizException) e)
                .getMessageKey());
            assertEquals("해당 데이터가 없습니다.", e.getMessage());
        }
    }

    @Test
    public void testSelectEmpList() throws Exception {
        EmpVO vo = makeVO();

        // insert
        BigDecimal empNo = empService.insertEmp(vo);
        vo.setEmpNo(empNo);

        // 검색조건으로 key 설정
        EmpVO searchVO = new EmpVO();
        searchVO.setEmpNo(vo.getEmpNo());

        // selectList
        List<EmpVO> resultList = empService.selectEmpList(searchVO);

        // key 조건에 대한 결과는 한건일 것임
        assertNotNull(resultList);
        assertTrue(resultList.size() > 0);
        assertEquals(1, resultList.size());
        checkResult(vo, resultList.get(0));

        // 검색조건으로 name 설정 - '%' || #empName# || '%'
        EmpVO searchVO2 = new EmpVO();
        searchVO2.setEmpName(""); // '%' || '' || '%'
                                  // --> '%%'

        // selectList
        List<EmpVO> resultList2 = empService.selectEmpList(searchVO2);

        // like 조건에 대한 결과는 한건 이상일 것임
        assertNotNull(resultList2);
        assertTrue(resultList2.size() > 0);
    }
                 
}
