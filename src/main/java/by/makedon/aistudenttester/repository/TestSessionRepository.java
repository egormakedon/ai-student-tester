package by.makedon.aistudenttester.repository;

import by.makedon.aistudenttester.domain.bean.TestSession;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

/**
 * @author Yahor Makedon
 */
public interface TestSessionRepository extends JpaRepository<TestSession, Long> {
	TestSession findTestSessionByTestSessionID(Long testSessionID);

	@Query("SELECT ts FROM TestSession ts " +
		   "WHERE ts.active = true " +
		   "ORDER BY ts.finishedDate DESC")
	List<TestSession> findTestSessions();

	@Query("SELECT ts FROM TestSession  ts " +
			"WHERE ts.subject.subjectID = :subjectID AND ts.active = true " +
			"ORDER BY ts.finishedDate DESC")
	List<TestSession> findTestSessionsBySubjectID(@Param("subjectID") Long subjectID);
}