package by.makedon.aistudenttester.repository;

import by.makedon.aistudenttester.domain.bean.Topic;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;
import java.util.Optional;

/**
 * @author Yahor Makedon
 */
public interface TopicRepository extends JpaRepository<Topic, Long> {
    @Query("SELECT t FROM Topic t " +
           "WHERE t.active = true AND t.subject.subjectID = :subjectID AND t.subject.active = true " +
           "ORDER BY t.topicName ASC")
    List<Topic> findTopicsBySubjectID(@Param("subjectID") Long subjectID);

    @Query("SELECT t FROM Topic t " +
            "WHERE t.active = true AND t.topicName = :topicName AND t.subject.active = true AND t.subject.subjectName = :subjectName")
    Topic findTopic(@Param("topicName") String topicName, @Param("subjectName") String subjectName);

    @Query("SELECT t FROM Topic t " +
            "WHERE t.subject.subjectID = :subjectID AND t.subject.active = true AND t.topicName = :topicName AND t.active = true")
    Optional<Topic> findTopicBySubjectIDAndTopicName(@Param("subjectID") Long subjectID, @Param("topicName") String topicName);
}