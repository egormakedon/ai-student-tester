package by.makedon.aistudenttester.config.filter;

import by.makedon.aistudenttester.domain.bean.ApplicationUser;
import by.makedon.aistudenttester.util.BaseException;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.filter.GenericFilterBean;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashSet;
import java.util.Set;

/**
 * @author Yahor Makedon
 */
public class AdminFilter extends GenericFilterBean {
	private static Set<String> urlSet;

	static {
		urlSet = new HashSet<>();

		urlSet.add("/admin");
		urlSet.add("/static");
		urlSet.add("/logout");
		urlSet.add("/error");
	}

	@Override
	public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
		HttpServletRequest httpServletRequest = (HttpServletRequest) servletRequest;
		HttpServletResponse httpServletResponse = (HttpServletResponse) servletResponse;

		boolean containsUrl = containsUrl(httpServletRequest.getServletPath());
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();

		if (authentication == null) {
			filterChain.doFilter(servletRequest, servletResponse);
			return;
		}

		Object principal = authentication.getPrincipal();

		if (principal instanceof ApplicationUser) {
			ApplicationUser applicationUser = (ApplicationUser) principal;

			if (applicationUser.isAdmin() && containsUrl) {
				filterChain.doFilter(servletRequest, servletResponse);
			} else if (applicationUser.isAdmin() && !containsUrl) {
				httpServletResponse.sendRedirect("/admin");
			} else {
				throw new BaseException("Unexpected behavior!");
			}
		} else {
			filterChain.doFilter(servletRequest, servletResponse);
		}
	}

	private boolean containsUrl(String servletPath) {
		return urlSet.stream().anyMatch(servletPath::startsWith);
	}
}