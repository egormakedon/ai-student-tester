package by.makedon.aistudenttester.service;

import by.makedon.aistudenttester.domain.bean.QuestionMap;
import by.makedon.aistudenttester.repository.QuestionMapRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * @author Yahor Makedon
 */
@Service
public class QuestionMapService {
	private QuestionMapRepository repository;

	@Transactional
	public QuestionMap save(QuestionMap questionMap) {
		return repository.save(questionMap);
	}

	@Transactional
	public QuestionMap removeByQuestionID(Long questionID) {
		QuestionMap questionMap = repository.findQuestionMapByQuestion_QuestionID(questionID).get();
		questionMap.setActive(false);
		return save(questionMap);
	}

//	Getters/Setters

	@Autowired
	public void setRepository(QuestionMapRepository repository) {
		this.repository = repository;
	}
}