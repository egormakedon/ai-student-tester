package by.makedon.aistudenttester.main;

public abstract class BaseConstants {
	// ACTIVE FLAG
	public static final Character ACTIVE_FLAG_TRUE = 'Y';
	public static final Character ACTIVE_FLAG_FALSE = 'N';
	
	// ROLE
	public static final Long ROLE_ADMIN_ID = 1L;
	public static final String ROLE_ADMIN_NAME = "ADMIN";
	
	// STRATEGY
	public static final Long STRATEGY_SIMPLE_ID = 1L;
	public static final Long STRATEGY_MULTI_ID = 2L;
	public static final String STRATEGY_SIMPLE_NAME = "SIMPLE";
	public static final String STRATEGY_MULTI_NAME = "MULTI";

	// QUESTION COUNT
	public static final int QUESTION_COUNT = 20;

	// SESSION ATTRIBUTES
	public static final String IS_TEST_STARTED = "isTestStarted";
	public static final String QUESTION_NUMBER = "questionNumber";
	public static final String TEST_SESSION_ID = "testSessionId";
}