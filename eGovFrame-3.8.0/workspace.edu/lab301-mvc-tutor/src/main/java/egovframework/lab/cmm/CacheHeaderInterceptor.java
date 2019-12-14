package egovframework.lab.cmm;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;

public class CacheHeaderInterceptor {
	 public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			 ModelAndView modelAndView) throws Exception 
		   {
			response.setHeader("Pragma", "public"); //캐쉬에 저장된 것을 안불러옴
			response.setHeader("Cache-Control", "public"); // 캐쉬 없애기
			response.setDateHeader("Expires", 100);
			//HTTP버전1.0인 경우 Pragma 헤더
			//HTTP버전1.1인경우 Cache-Control 헤더에 no-cache를 각각 지정함으로써 가능.
		    }
}
