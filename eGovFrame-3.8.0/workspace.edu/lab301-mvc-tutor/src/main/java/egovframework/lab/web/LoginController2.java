package egovframework.lab.web;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.naming.AuthenticationException;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Validator;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import egovframework.lab.cmm.authenticator.Authenticator;
import egovframework.lab.web.model.LoginCommand;
import egovframework.lab.web.model.LoginType;

@Controller
@SessionAttributes("login")
public class LoginController2 {

	private static final Logger LOGGER = LoggerFactory.getLogger(LoginController2.class);

	private String formView = "login/loginForm";
	private String successView = "login/loginSuccess";

	@Autowired
	@Qualifier("loginCommandValidator")
	private Validator loginCommandValidator;

	@Resource(name = "LoginAuthenticator")
	private Authenticator authenticator;

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

	@RequestMapping(value = "/loginProcess2.do", method = RequestMethod.GET)
	public String loginFormSetUp() {
		return getFormView();
	}

	@RequestMapping(value = "/loginProcess2.do", method = RequestMethod.POST)
	public String loginProcess(@ModelAttribute("login") LoginCommand loginCommand, BindingResult errors) {

		loginCommandValidator.validate(loginCommand, errors);
		if (errors.hasErrors()) {
			return getFormView();
		}

		try {
			authenticator.authenticate(loginCommand.getId(), loginCommand.getPassword());

			LOGGER.debug("loginCommand.getId()       : {}", loginCommand.getId());
			LOGGER.debug("loginCommand.getPassword() : {}", loginCommand.getPassword());
			LOGGER.debug("loginCommand.loginType()   : {}", loginCommand.getLoginType());

			return getSuccessView();

		} catch (AuthenticationException ex) {
			errors.reject("invalidIdOrPassword", new Object[] { loginCommand.getId() }, null);
			return getFormView();
		}
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

	@RequestMapping(value = "/memberInfo.do")
	public ModelAndView memberInfo(HttpSession httpSession ) {
		ModelAndView mav = new ModelAndView("login/memberInfo");
		
		if(httpSession.getAttribute("login")!= null)
			mav.addObject("login",httpSession.getAttribute("login"));
		
		return mav;
	}

	@RequestMapping(value = "/loginOut.do", method = RequestMethod.GET)
	public String logOut(SessionStatus sessionStatus) {
		if (!sessionStatus.isComplete())
			sessionStatus.setComplete();
		return "redirect:/loginProcess2.do";
	}
}
