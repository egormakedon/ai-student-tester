package by.makedon.aistudenttester.domain.bean;

import org.springframework.security.core.GrantedAuthority;

import java.io.Serializable;

/**
 * Role enum define role for application user
 *
 * @author Yahor Makedon
 */
public enum Role implements Serializable, GrantedAuthority {
	ADMIN;

	public static final long serialVersionUID = 1L;

	@Override
	public String getAuthority() {
		return name();
	}
}