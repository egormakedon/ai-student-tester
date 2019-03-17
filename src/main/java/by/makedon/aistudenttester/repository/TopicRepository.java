package by.makedon.aistudenttester.repository;

import org.springframework.data.repository.CrudRepository;

import java.util.List;

/**
 * @author Yahor Makedon
 */
public interface TopicRepository extends CrudRepository<Topic, Long> {
    List<Topic> findTopicsByActiveIsTrueAndSubject_SubjectNameAndSubject_ActiveIsTrue(String subjectName);
}