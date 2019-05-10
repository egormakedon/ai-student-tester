package by.makedon.aistudenttester.config.filter;

import by.makedon.aistudenttester.util.BaseConstants;
import org.springframework.web.filter.GenericFilterBean;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

/**
 * @author Yahor Makedon
 */
public class TestFilter extends GenericFilterBean {
    private static Map<String, Boolean> urlMap;

    static {
        urlMap = new HashMap<>();

        urlMap.put("/test", true);
        urlMap.put("/static", false);
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest httpServletRequest = (HttpServletRequest) servletRequest;
        HttpServletResponse httpServletResponse = (HttpServletResponse) servletResponse;
        HttpSession httpSession = httpServletRequest.getSession();

        String servletPath = httpServletRequest.getServletPath();
        boolean containsUrl = containsUrl(servletPath);

        if (containsUrl && !getValue(servletPath)) {
            filterChain.doFilter(servletRequest, servletResponse);
            return;
        }

        boolean isTestStarted = Boolean.valueOf((String) httpSession.getAttribute(BaseConstants.IS_TEST_STARTED));

        if (isTestStarted && containsUrl && getValue(servletPath)) {
            filterChain.doFilter(servletRequest, servletResponse);
        } else if (isTestStarted && !containsUrl) {
            httpServletResponse.sendRedirect("/test");
        } else if (!isTestStarted && containsUrl && getValue(servletPath)) {
            httpServletResponse.sendRedirect("/");
        } else if (!isTestStarted && !containsUrl) {
            filterChain.doFilter(servletRequest, servletResponse);
        }
    }

    private boolean containsUrl(String servletPath) {
        return urlMap.keySet().stream().anyMatch(servletPath::startsWith);
    }

    private boolean getValue(String servletPath) {
        return urlMap.get(urlMap.keySet().stream().filter(servletPath::startsWith).findFirst().get());
    }
}