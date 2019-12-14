package egovframework.mbl.uxcomponent;

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

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UXComponentController {

	private static final Logger LOGGER = LoggerFactory.getLogger(UXComponentController.class);

    /**
     * practice 하위에서  들어오는 주소를 JSP로 변환
     * @param request
     * @param model
     * @return  JSP name
     * @throws Exception
     */
    @RequestMapping(value = "/*/step*.do")
    public String pratice(HttpServletRequest request) throws Exception {
    	String jspName = getJspName(request.getRequestURI());
    	LOGGER.debug("Move to {}.jsp", jspName);
    	return jspName;
    }

    /**
     * tutor 하위에서  들어오는 주소를 JSP로 변환
     * @param request
     * @param model
     * @return  JSP name
     * @throws Exception
     */
    @RequestMapping(value = "/*.do")
    public void tutor(HttpServletRequest request) throws Exception {
    	String jspName = getJspName(request.getRequestURI());
    	LOGGER.debug("Move to {}.jsp", jspName);
        /*return jspName;*/
    }

    /**
     * do로 들어온 주소를 JSP 명으로 변경
     * @param requestURI
     * @return
     */
    private static String getJspName(String requestURI) {
    	return requestURI.substring(requestURI.indexOf("/"), requestURI.length() - 3);
    }

}