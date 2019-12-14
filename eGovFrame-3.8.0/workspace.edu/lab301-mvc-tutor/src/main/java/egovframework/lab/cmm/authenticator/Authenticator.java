package egovframework.lab.cmm.authenticator;

import javax.naming.AuthenticationException;

public interface Authenticator {

	public boolean authenticate(String id, String password) throws AuthenticationException;
}
