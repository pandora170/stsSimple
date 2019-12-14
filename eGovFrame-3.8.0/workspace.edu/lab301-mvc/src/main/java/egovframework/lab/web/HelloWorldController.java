package egovframework.lab.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HelloWorldController {

    private String viewName = "hello/helloworld";

    public String getViewName() {
        return this.viewName;
    }

    /*
     * TODO [Step 1-1-1] Hello World Controller 메소드 만들기
     * http://localhost:8080/lab301-mvc/hello.do 로 요청이 들어오는 경우 실행되는 메소드를 만들어 보자.
     * 반환은 String 이고 getViewNanme 메소드를 이용한다.
     */

}
