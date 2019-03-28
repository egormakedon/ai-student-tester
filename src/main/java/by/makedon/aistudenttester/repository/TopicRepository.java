package by.makedon.aistudenttester.repository;

import by.makedon.aistudenttester.domain.Topic;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

/**
 * @author Yahor Makedon
 */
public interface TopicRepository extends JpaRepository<Topic, Long> {
    List<Topic> findTopicsByActiveIsTrueAndSubject_SubjectIDAndSubject_ActiveIsTrue(Long subjectID);
}