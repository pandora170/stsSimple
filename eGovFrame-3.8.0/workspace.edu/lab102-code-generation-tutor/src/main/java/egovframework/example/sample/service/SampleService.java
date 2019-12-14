package egovframework.example.sample.service;

import java.util.List;
import egovframework.example.sample.service.SampleDefaultVO;
import egovframework.example.sample.service.SampleVO;

/**
 * @Class Name : SampleService.java
 * @Description : Sample Business class
 * @Modification Information
 *
 * @author 홍길동
 * @since 0000/00/00
 * @version 1.0
 * @see
 *  
 *  Copyright (C)  All right reserved.
 */
public interface SampleService {
	
	/**
	 * SAMPLE을 등록한다.
	 * @param vo - 등록할 정보가 담긴 SampleVO
	 * @return 등록 결과
	 * @exception Exception
	 */
    String insertSample(SampleVO vo) throws Exception;
    
    /**
	 * SAMPLE을 수정한다.
	 * @param vo - 수정할 정보가 담긴 SampleVO
	 * @return void형
	 * @exception Exception
	 */
    void updateSample(SampleVO vo) throws Exception;
    
    /**
	 * SAMPLE을 삭제한다.
	 * @param vo - 삭제할 정보가 담긴 SampleVO
	 * @return void형 
	 * @exception Exception
	 */
    void deleteSample(SampleVO vo) throws Exception;
    
    /**
	 * SAMPLE을 조회한다.
	 * @param vo - 조회할 정보가 담긴 SampleVO
	 * @return 조회한 SAMPLE
	 * @exception Exception
	 */
    SampleVO selectSample(SampleVO vo) throws Exception;
    
    /**
	 * SAMPLE 목록을 조회한다.
	 * @param searchVO - 조회할 정보가 담긴 VO
	 * @return SAMPLE 목록
	 * @exception Exception
	 */
    List selectSampleList(SampleDefaultVO searchVO) throws Exception;
    
    /**
	 * SAMPLE 총 갯수를 조회한다.
	 * @param searchVO - 조회할 정보가 담긴 VO
	 * @return SAMPLE 총 갯수
	 * @exception
	 */
    int selectSampleListTotCnt(SampleDefaultVO searchVO);
    
}
