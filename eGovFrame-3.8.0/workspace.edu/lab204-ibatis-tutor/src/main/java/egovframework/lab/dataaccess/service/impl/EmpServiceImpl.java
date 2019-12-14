package egovframework.lab.dataaccess.service.impl;

import java.math.BigDecimal;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.lab.dataaccess.service.EmpService;
import egovframework.lab.dataaccess.service.EmpVO;
import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import egovframework.rte.fdl.idgnr.EgovIdGnrService;

@Service("empService")
public class EmpServiceImpl extends EgovAbstractServiceImpl implements EmpService {
    
    // TODO [Step 2-3] EmpServiceImpl 작성 추가 
	
	@Resource(name = "primaryTypeSequenceIds")
    EgovIdGnrService egovIdGnrService;

    @Resource(name = "empDAO")
    private EmpDAO empDAO;   

	

	public BigDecimal insertEmp(EmpVO empVO) throws Exception {
        // ID generation Service 를 사용하여 key 를 땀. 여기서
        // primaryTypeSequenceIds 는 Sequence 기반임.
        BigDecimal generatedEmpNo = egovIdGnrService.getNextBigDecimalId();
        egovLogger.debug("EmpServiceImpl.insertEmp - generated empNo : " + generatedEmpNo);

        empVO.setEmpNo(generatedEmpNo);

        empDAO.insertEmp(empVO);

        return generatedEmpNo;
    }

    public void updateEmp(EmpVO empVO) throws Exception {
        empDAO.updateEmp(empVO);
    }

    public void deleteEmp(EmpVO empVO) throws Exception {
        empDAO.deleteEmp(empVO);
    }

    public EmpVO selectEmp(EmpVO empVO) throws Exception {
        EmpVO resultVO;
        resultVO = empDAO.selectEmp(empVO);

        if (resultVO == null) {
            throw processException("info.nodata.msg");
        }

        return resultVO;
    }

    public List<EmpVO> selectEmpList(EmpVO searchVO) throws Exception {
        return empDAO.selectEmpList(searchVO);
    }
}
