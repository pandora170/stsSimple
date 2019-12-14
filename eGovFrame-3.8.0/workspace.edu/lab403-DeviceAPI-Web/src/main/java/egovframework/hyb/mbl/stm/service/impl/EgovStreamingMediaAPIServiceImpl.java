package egovframework.hyb.mbl.stm.service.impl;

import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import egovframework.hyb.mbl.stm.service.EgovStreamingMediaAPIService;
import egovframework.hyb.mbl.stm.service.StreamingMediaAPIFileVO;
import egovframework.hyb.mbl.stm.service.StreamingMediaAPIVO;
import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;

/**  
 * @Class Name : EgovStreamingMediaAPIServiceImpl.java
 * @Description : EgovStreamingMediaAPIServiceImpl Class
 * @Modification Information  
 * @
 * @  수정일            수정자        수정내용
 * @ ---------        ---------    -------------------------------
 * @ 2016. 7. 14.     장성호        최초생성
 * 
 * @author 디바이스 API 실행환경 팀
 * @since 2016. 7. 14.
 * @version 1.0
 * @see
 * 
 */
@Service("EgovStreamingMediaAPIService")
public class EgovStreamingMediaAPIServiceImpl extends EgovAbstractServiceImpl implements EgovStreamingMediaAPIService {

    @Resource(name="StreamingMediaAPIDAO")
    private StreamingMediaAPIDAO mediaAPIDAO;
    
    private static final Logger LOGGER = LoggerFactory.getLogger(EgovStreamingMediaAPIServiceImpl.class);
    
    
    /**
     * 미디어 목록을 조회한다.
     * @param VO - 조회할 정보가 담긴 StreamingMediaAPIVO
     * @return 조회 목록
     * @exception Exception
     */
    public List<?> selectMediaInfoList(StreamingMediaAPIVO vo) throws Exception {
        
        return mediaAPIDAO.selectMediaInfoList(vo);
    }
    
    /**
     * 미디어 파일을 조회한다.
     * @param VO - 조회할 정보가 담긴 StreamingMediaAPIFileVO
     * @return 파일 정보
     * @exception Exception
     */
    public StreamingMediaAPIFileVO selectMediaFileURL(StreamingMediaAPIFileVO vo) throws Exception {
        
        StreamingMediaAPIFileVO fileVO = mediaAPIDAO.selectMediaFileInfo(vo);
        return fileVO;       
    }

    @Override
	public int updateMediaInfoRevivCo(StreamingMediaAPIVO vo) throws Exception {
		// TODO Auto-generated method stub
    	return mediaAPIDAO.updateMediaInfoRevivCo(vo);
	}
    
    /**
     * 미디어 파일을 조회한다.
     * @param VO - 조회할 정보가 담긴 StreamingMediaAPIFileVO
     * @return 파일 정보
     * @exception Exception
     */
    public boolean selectMediaFileInf(HttpServletResponse response, StreamingMediaAPIFileVO vo) throws Exception {
        File file = null;
        FileInputStream fis = null;
    
        BufferedInputStream in = null;
        ByteArrayOutputStream bStream = null;
        
        StreamingMediaAPIFileVO fileVO = mediaAPIDAO.selectMediaFileInfo(vo);
        
        String type = "";

        boolean errorFlag = true;
        try {
            file = new File(fileVO.getFileStreCours(), fileVO.getStreFileNm());
            fis = new FileInputStream(file);
    
            in = new BufferedInputStream(fis);
            bStream = new ByteArrayOutputStream();
    
            int imgByte;
            while ((imgByte = in.read()) != -1) {
                bStream.write(imgByte);
            }
    
            if (fileVO.getMdCode() != null && !"".equals(fileVO.getMdCode()) && 
                    fileVO.getFileExtsn() != null && !"".equals(fileVO.getFileExtsn())) {
                
                type = "video/" + fileVO.getFileExtsn();
        
            } else {
            	LOGGER.debug("Media fileType is null.");
            }
        
            response.setHeader("Content-Type", type);
            response.setContentLength(bStream.size());
        
            bStream.writeTo(response.getOutputStream());
        
            response.getOutputStream().flush();
            response.getOutputStream().close();
    
        } catch(Exception e) {
        	LOGGER.debug("IGNORE: {}", e.getMessage());
            errorFlag = false;
        } finally {
            if (bStream != null) {
                try {
                    bStream.close();
                } catch (Exception e) {
                	LOGGER.debug("IGNORE: {}", e.getMessage());
                    errorFlag = false;
                }
            }
            if (in != null) {
                try {
                    in.close();
                } catch (Exception e) {
                	LOGGER.debug("IGNORE: {}", e.getMessage());
                    errorFlag = false;
                }
            }
            if (fis != null) {
                try {
                    fis.close();
                } catch (Exception e) {
                	LOGGER.debug("IGNORE: {}", e.getMessage());
                    errorFlag = false;
                }
            }
        }
        
        return errorFlag;
    }

	

	

}
