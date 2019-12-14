package egovframework.lab.cmm.authenticator;

import javax.naming.AuthenticationException;

import org.springframework.stereotype.Component;


@Component("LoginAuthenticator")
public class LoginAuthenticator implements Authenticator {

	public boolean authenticate(String id, String password) throws AuthenticationException{
//		if (!"홍길동".equalsIgnoreCase(id) || !"123".equalsIgnoreCase(password)) {
//			throw new AuthenticationException();
//		} 
		return true;
	}
}
