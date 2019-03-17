package by.makedon.aistudenttester.repository;

import by.makedon.aistudenttester.domain.TestSession;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * @author Yahor Makedon
 */
public interface TestSessionRepository extends JpaRepository<TestSession, Long> {
	TestSession findTestSessionByTestSessionID(Long testSessionID);
}