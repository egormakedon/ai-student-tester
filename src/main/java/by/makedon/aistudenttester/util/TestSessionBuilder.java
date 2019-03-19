package by.makedon.aistudenttester.util;

import by.makedon.aistudenttester.domain.Question;
import by.makedon.aistudenttester.domain.TestSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * Class builder for TestSession entity.
 *
 * @author Yahor Makedon
 */
public final class TestSessionBuilder {
	private static final Logger logger = LoggerFactory.getLogger(TestSessionBuilder.class);
	private static final TestSessionBuilder builder = new TestSessionBuilder();
	private static TestSession testSession = null;

	private TestSessionBuilder() {}

	public static TestSessionBuilder setTestSession(TestSession testSession) {
		TestSessionBuilder.testSession = testSession;
		return builder;
	}

	public final TestSessionBuilder build(Question question, int index) {
		switch (index) {
			case 1:
				testSession.setQ1(question);
				return builder;
			case 2:
				testSession.setQ2(question);
				return builder;
			case 3:
				testSession.setQ3(question);
				return builder;
			case 4:
				testSession.setQ4(question);
				return builder;
			case 5:
				testSession.setQ5(question);
				return builder;
			case 6:
				testSession.setQ6(question);
				return builder;
			case 7:
				testSession.setQ7(question);
				return builder;
			case 8:
				testSession.setQ8(question);
				return builder;
			case 9:
				testSession.setQ9(question);
				return builder;
			case 10:
				testSession.setQ10(question);
				return builder;
			case 11:
				testSession.setQ11(question);
				return builder;
			case 12:
				testSession.setQ12(question);
				return builder;
			case 13:
				testSession.setQ13(question);
				return builder;
			case 14:
				testSession.setQ14(question);
				return builder;
			case 15:
				testSession.setQ15(question);
				return builder;
			case 16:
				testSession.setQ16(question);
				return builder;
			case 17:
				testSession.setQ17(question);
				return builder;
			case 18:
				testSession.setQ18(question);
				return builder;
			case 19:
				testSession.setQ19(question);
				return builder;
			case 20:
				testSession.setQ20(question);
				return builder;
			default:
				logger.error("Error index: " + index + ". Index must be from 1 to 20");
				throw new IllegalArgumentException("Error index: " + index + ". Index must be from 1 to 20");
		}
	}

	public final void build() {
		testSession = null;
	}
}