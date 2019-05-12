package by.makedon.aistudenttester.repository;

import by.makedon.aistudenttester.domain.bean.TestSession;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

/**
 * @author Yahor Makedon
 */
public interface TestSessionRepository extends JpaRepository<TestSession, Long> {
	TestSession findTestSessionByTestSessionID(Long testSessionID);
	List<TestSession> findTestSessionsByActiveIsTrue();
}