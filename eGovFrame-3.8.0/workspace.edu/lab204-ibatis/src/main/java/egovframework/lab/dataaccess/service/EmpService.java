package egovframework.lab.dataaccess.service;

import java.math.BigDecimal;
import java.util.List;

public interface EmpService {
    
    // TODO [Step 2-1] EmpService Interface 확인
        
    public BigDecimal insertEmp(EmpVO empVO) throws Exception;

    public void updateEmp(EmpVO empVO) throws Exception;

    public void deleteEmp(EmpVO empVO) throws Exception;

    public EmpVO selectEmp(EmpVO empVO) throws Exception;
    
    public List<EmpVO> selectEmpList(EmpVO searchVO) throws Exception;
    
}
