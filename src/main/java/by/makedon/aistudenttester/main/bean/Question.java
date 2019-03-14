package by.makedon.aistudenttester.main.bean;

import org.hibernate.annotations.CacheConcurrencyStrategy;
import org.hibernate.annotations.Where;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;

/**
 * @author Yahor Makedon
 */
@Entity(name = "question")
@Table(name = "QUESTION")
@org.hibernate.annotations.Cache(usage = CacheConcurrencyStrategy.READ_WRITE)
public class Question extends AbstractBean {
	public static final long serialVersionUID = 1L;
	
	@Id
	@Column(name = "QUESTIONID")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long questionId;
	@Column(name = "QUESTIONNAME")
	private String questionName;
	@Column(name = "FIRSTANSWER")
	private String firstAnswer;
	@Column(name = "SECONDANSWER")
	private String secondAnswer;
	@Column(name = "THIRDANSWER")
	private String thirdAnswer;
	@Column(name = "FOURTHANSWER")
	private String fourthAnswer;
	@Column(name = "FIFTHANSWER")
	private String fifthAnswer;
	@Column(name = "RIGHTANSWER")
	private char rightAnswer;
	
	@ManyToMany(fetch = FetchType.LAZY)
	@JoinTable(
			name = "QUESTIONMAP",
			joinColumns = { @JoinColumn(name = "QUESTIONID") },
			inverseJoinColumns = { @JoinColumn(name = "TOPICID") }
	)
	@Where(clause = "ACTIVEFLAG = 'Y'")
	private Set<Topic> topics = new HashSet<>(1);
	
	/**
	 * Default constructor
	 */
	public Question() {
	}
	
	@Override
	public void setId(Long id) {
		setQuestionId(id);
	}
	
	@Override
	public Long getId() {
		return getQuestionId();
	}
	
	public Long getQuestionId() {
		return questionId;
	}
	
	public void setQuestionId(Long questionId) {
		this.questionId = questionId;
	}
	
	public String getQuestionName() {
		return questionName;
	}
	
	public void setQuestionName(String questionName) {
		this.questionName = questionName;
	}
	
	public String getFirstAnswer() {
		return firstAnswer;
	}
	
	public void setFirstAnswer(String firstAnswer) {
		this.firstAnswer = firstAnswer;
	}
	
	public String getSecondAnswer() {
		return secondAnswer;
	}
	
	public void setSecondAnswer(String secondAnswer) {
		this.secondAnswer = secondAnswer;
	}
	
	public String getThirdAnswer() {
		return thirdAnswer;
	}
	
	public void setThirdAnswer(String thirdAnswer) {
		this.thirdAnswer = thirdAnswer;
	}
	
	public String getFourthAnswer() {
		return fourthAnswer;
	}
	
	public void setFourthAnswer(String fourthAnswer) {
		this.fourthAnswer = fourthAnswer;
	}
	
	public String getFifthAnswer() {
		return fifthAnswer;
	}
	
	public void setFifthAnswer(String fifthAnswer) {
		this.fifthAnswer = fifthAnswer;
	}
	
	public char getRightAnswer() {
		return rightAnswer;
	}
	
	public void setRightAnswer(char rightAnswer) {
		this.rightAnswer = rightAnswer;
	}
	
	public Set<Topic> getTopics() {
		return topics;
	}
	
	public void setTopics(Set<Topic> topics) {
		this.topics = topics;
	}
	
	@Override
	public boolean equals(Object o) {
		if (this == o) {
			return true;
		}
		if (!(o instanceof Question)) {
			return false;
		}
		Question question = (Question) o;
		return getRightAnswer() == question.getRightAnswer() &&
		       Objects.equals(getQuestionId(), question.getQuestionId()) &&
		       Objects.equals(getQuestionName(), question.getQuestionName()) &&
		       Objects.equals(getFirstAnswer(), question.getFirstAnswer()) &&
		       Objects.equals(getSecondAnswer(), question.getSecondAnswer()) &&
		       Objects.equals(getThirdAnswer(), question.getThirdAnswer()) &&
		       Objects.equals(getFourthAnswer(), question.getFourthAnswer()) &&
		       Objects.equals(getFifthAnswer(), question.getFifthAnswer());
	}
	
	@Override
	public int hashCode() {
		return Objects.hash(getQuestionId(), getQuestionName(), getFirstAnswer(), getSecondAnswer(), getThirdAnswer(),
		                    getFourthAnswer(), getFifthAnswer(), getRightAnswer());
	}
	
	@Override
	public String toString() {
		return "Question{" +
		       "questionId=" + questionId +
		       ", questionName='" + questionName + '\'' +
		       ", firstAnswer='" + firstAnswer + '\'' +
		       ", secondAnswer='" + secondAnswer + '\'' +
		       ", thirdAnswer='" + thirdAnswer + '\'' +
		       ", fourthAnswer='" + fourthAnswer + '\'' +
		       ", fifthAnswer='" + fifthAnswer + '\'' +
		       ", rightAnswer=" + rightAnswer +
		       ", topics=" + topics +
		       ", active=" + active +
		       '}';
	}
}
