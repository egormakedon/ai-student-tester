package by.makedon.aistudenttester.config.listener;

import by.makedon.aistudenttester.util.BaseConstants;

import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

/**
 * @author Yahor Makedon
 */
public class SessionListener implements HttpSessionListener {
    private static final int ONE_HOUR = 3600;

    @Override
    public void sessionCreated(HttpSessionEvent sessionEvent) {
        HttpSession session = sessionEvent.getSession();

        session.setMaxInactiveInterval(ONE_HOUR);
        session.setAttribute(BaseConstants.IS_TEST_STARTED, "false");
    }

    @Override
    public void sessionDestroyed(HttpSessionEvent sessionEvent) {
        HttpSession session = sessionEvent.getSession();

        session.removeAttribute(BaseConstants.TEST_SESSION_ID);
        session.removeAttribute(BaseConstants.QUESTION_NUMBER);
        session.removeAttribute(BaseConstants.IS_TEST_STARTED);
    }
}