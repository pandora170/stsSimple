package egovframework.mbl.rte.guide.web;

/*
 * Copyright 2008-2011 the original author or authors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 가이드 코드용 controller 클래스
 * @author 모바일 프레임워크 실행환경 개발팀 윤병욱
 * @since 2011.08.31
 * @version 1.0
 * @see
 *
 * <pre>
 *  == 개정이력(Modification Information) ==
 *   
 *   수정일      수정자           수정내용
 *  -------    --------    ---------------------------
 *   2011.08.31  윤병욱          최초 생성
 *
 * </pre>
 */

@Controller
public class EgovGuideController {

    /**
     * log4j
     */
	private static final Logger LOG = Logger.getLogger(EgovGuideController.class.getClass());

    /**
     * guide 하위에서  들어오는 주소를 JSP로 변환
     * @param request
     * @param model
     * @return  JSP name
     * @throws Exception
     */   
    @RequestMapping(value = "/guide/*.do")
    public String guideOneDepth(HttpServletRequest request, ModelMap model) throws Exception {
        return getJspName(request.getRequestURI());
    }

    /**
     * guide 하위에서  들어오는 주소를 JSP로 변환
     * @param request
     * @param model
     * @return  JSP name
     * @throws Exception
     */     
    @RequestMapping(value = "/guide/*/*.do")
    public String guideTwoDepth(HttpServletRequest request) throws Exception {
        return getJspName(request.getRequestURI());
    }

    /**
     * guide 하위에서  들어오는 주소를 JSP로 변환
     * @param request
     * @param model
     * @return  JSP name
     * @throws Exception
     */   
    @RequestMapping(value = "/guide/*/*/*.do")
    public String guideThreeDepth(HttpServletRequest request) throws Exception {
        return getJspName(request.getRequestURI());
    }
    
    /**
     * guide 하위에서  들어오는 주소를 JSP로 변환
     * @param request
     * @param model
     * @return  JSP name
     * @throws Exception
     */   
    @RequestMapping(value = "/guide/*/*/*/*.do")
    public String guideFourthDepth(HttpServletRequest request) throws Exception {
        return getJspName(request.getRequestURI());
    }

    /**
     * do로 들어온 주소를 JSP 명으로 변경
     * @param requestURI
     * @return
     */
    private static String getJspName(String requestURI) {
        return requestURI.substring(requestURI.indexOf("/guide"), requestURI.length() - 3);
    }

}