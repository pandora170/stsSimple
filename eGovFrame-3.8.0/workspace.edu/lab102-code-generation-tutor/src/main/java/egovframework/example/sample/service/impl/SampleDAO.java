package egovframework.example.sample.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.rte.psl.dataaccess.EgovAbstractDAO;
import egovframework.example.sample.service.SampleVO;
import egovframework.example.sample.service.SampleDefaultVO;

/**
 * @Class Name : SampleDAO.java
 * @Description : Sample DAO Class
 * @Modification Information
 *
 * @author 홍길동
 * @since 0000/00/00
 * @version 1.0
 * @see
 *  
 *  Copyright (C)  All right reserved.
 */

@Repository("sampleDAO")
public class SampleDAO extends EgovAbstractDAO {

	/**
	 * SAMPLE을 등록한다.
	 * @param vo - 등록할 정보가 담긴 SampleVO
	 * @return 등록 결과
	 * @exception Exception
	 */
    public String insertSample(SampleVO vo) throws Exception {
        return (String)insert("sampleDAO.insertSample_S", vo);
    }

    /**
	 * SAMPLE을 수정한다.
	 * @param vo - 수정할 정보가 담긴 SampleVO
	 * @return void형
	 * @exception Exception
	 */
    public void updateSample(SampleVO vo) throws Exception {
        update("sampleDAO.updateSample_S", vo);
    }

    /**
	 * SAMPLE을 삭제한다.
	 * @param vo - 삭제할 정보가 담긴 SampleVO
	 * @return void형 
	 * @exception Exception
	 */
    public void deleteSample(SampleVO vo) throws Exception {
        delete("sampleDAO.deleteSample_S", vo);
    }

    /**
	 * SAMPLE을 조회한다.
	 * @param vo - 조회할 정보가 담긴 SampleVO
	 * @return 조회한 SAMPLE
	 * @exception Exception
	 */
    public SampleVO selectSample(SampleVO vo) throws Exception {
        return (SampleVO) select("sampleDAO.selectSample_S", vo);
    }

    /**
	 * SAMPLE 목록을 조회한다.
	 * @param searchMap - 조회할 정보가 담긴 Map
	 * @return SAMPLE 목록
	 * @exception Exception
	 */
    public List<?> selectSampleList(SampleDefaultVO searchVO) throws Exception {
        return list("sampleDAO.selectSampleList_D", searchVO);
    }

    /**
	 * SAMPLE 총 갯수를 조회한다.
	 * @param searchMap - 조회할 정보가 담긴 Map
	 * @return SAMPLE 총 갯수
	 * @exception
	 */
    public int selectSampleListTotCnt(SampleDefaultVO searchVO) {
        return (Integer)select("sampleDAO.selectSampleListTotCnt_S", searchVO);
    }

}
