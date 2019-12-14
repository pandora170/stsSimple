package egovframework.lab.web;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import egovframework.lab.web.model.LoginCommand;
import egovframework.lab.web.model.LoginType;


//TODO [Step 1-3-2] LoginController.java 에 login 명의 객체에 대해  @SessionAttributes 설정 하기
//이 부분은 login 객체를 Session 객체에 저장하는 방법이다.
@Controller
@SessionAttributes("login") 
public class LoginController {

	private String formView = "login/loginForm";
	private String successView = "login/loginSuccess";

	private String getFormView() {
		return formView;
	}

	private String getSuccessView() {
		return successView;
	}

	public void setFormView(String formView) {
		this.formView = formView;
	}

	public void setSuccessView(String successView) {
		this.successView = successView;
	}

	/*
	 * TODO [Step 1-2-2] LoginController.java 메소드 추가하기
	 * 웹을 통해 들어오는 url 은 loginProcess1.do 이며 Get/Post 형식으로 넘어온다. 
	 * 두가지를 다받는 메소드를 만들어보자.
	 * 또 ModelAttribute를 이용하여 loginTypes와 login 객체를 초기화 해주는 메소드를 만든다.
	 * 
	 * TODO [Step 1-3-3] loginProcess 메소드에 SessionStatus 를 받아와 complete 하기 
	 * 
	 * TODO [Step 1-4-1] LoginController.java 에서 loginProcess 메소드 수정하기.  Validator 이용하여  값 검증하기
	 */
	@RequestMapping(value = "/loginProcess1.do", method = RequestMethod.GET)
	public String loginFormSetUp() {
		return getFormView();
	}

	@RequestMapping(value = "/loginProcess1.do", method = RequestMethod.POST)
	public String loginProcess(@ModelAttribute("login") LoginCommand loginCommand) {
		return getSuccessView();
	}

	@ModelAttribute("loginTypes")
	protected List<LoginType> referenceData() throws Exception {
		List<LoginType> loginTypes = new ArrayList<LoginType>();
		loginTypes.add(new LoginType("A", "개인회원"));
		loginTypes.add(new LoginType("B", "기업회원"));
		loginTypes.add(new LoginType("C", "관리자"));
		return loginTypes;
	}
	
	@ModelAttribute("login")
	protected Object referenceData4login() throws Exception {
		return new LoginCommand();
	}

}
