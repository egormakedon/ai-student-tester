package by.makedon.aistudenttester.config;

import by.makedon.aistudenttester.util.BaseConstants;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

/**
 * @author Yahor Makedon
 */
public class SessionListener implements HttpSessionListener {
    private static final Logger logger = LoggerFactory.getLogger(SessionListener.class);
    private static final int ONE_HOUR = 3600;

    @Override
    public void sessionCreated(HttpSessionEvent sessionEvent) {
        logger.info("Session created - " + sessionEvent.toString());

        HttpSession httpSession = sessionEvent.getSession();

        httpSession.setMaxInactiveInterval(ONE_HOUR);

        httpSession.setAttribute(BaseConstants.IS_TEST_STARTED, "false");
    }

    @Override
    public void sessionDestroyed(HttpSessionEvent sessionEvent) {
        logger.info("Session destroyed - " + sessionEvent.toString());

        HttpSession httpSession = sessionEvent.getSession();

        httpSession.removeAttribute(BaseConstants.TEST_SESSION_ID);
        httpSession.removeAttribute(BaseConstants.QUESTION_NUMBER);
        httpSession.removeAttribute(BaseConstants.IS_TEST_STARTED);
    }
}