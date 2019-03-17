package by.makedon.aistudenttester.config;

import by.makedon.aistudenttester.BaseConstants;
import org.springframework.web.filter.GenericFilterBean;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * @author Yahor Makedon
 */
public class TestSessionSecurityFilter extends GenericFilterBean {
    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest httpServletRequest = (HttpServletRequest) servletRequest;
        HttpServletResponse httpServletResponse = (HttpServletResponse) servletResponse;

        if (!checkHttpSessionIsCreated(httpServletRequest) || checkResourcesOrErrorServletPath(httpServletRequest)) {
            filterChain.doFilter(servletRequest, servletResponse);

            return;
        }

        if (isStrictecServletPath(httpServletRequest.getServletPath())) {
            if (Boolean.valueOf((String) httpServletRequest.getSession().getAttribute(BaseConstants.IS_TEST_STARTED))) {
                filterChain.doFilter(servletRequest, servletResponse);
            } else {
                httpServletResponse.sendRedirect("/tester");
            }
        } else {
            if (Boolean.valueOf((String) httpServletRequest.getSession().getAttribute(BaseConstants.IS_TEST_STARTED))) {
                httpServletResponse.sendRedirect("/tester/test");
            } else {
                filterChain.doFilter(servletRequest, servletResponse);
            }
        }
    }

    private boolean checkHttpSessionIsCreated(HttpServletRequest httpServletRequest) {
        HttpSession httpSession = httpServletRequest.getSession();

        return httpSession != null && httpSession.getAttribute(BaseConstants.IS_TEST_STARTED) != null;
    }

    private boolean checkResourcesOrErrorServletPath(HttpServletRequest httpServletRequest) {
        String servletPath = httpServletRequest.getServletPath();

        return servletPath.startsWith("/error") || servletPath.startsWith("/resources/");
    }

    private boolean isStrictecServletPath(String servletPath) {
        return servletPath.startsWith("/test") || servletPath.startsWith("/ajax/updateAnswer")
                || servletPath.startsWith("/test/nextQuestion") || servletPath.startsWith("/test/prevQuestion")
                || servletPath.startsWith("/completeTest");
    }
}