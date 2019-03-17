package by.makedon.aistudenttester.domain;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.Where;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

/**
 * @author Yahor Makedon
 */
@Entity
@Data
@NoArgsConstructor
@EqualsAndHashCode(of = {"questionID"})
public class Question extends AbstractBean {
	public static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long questionID;
	private String questionName;
	private String firstAnswer;
	private String secondAnswer;
	private String thirdAnswer;
	private String fourthAnswer;
	private String fifthAnswer;
	private int rightAnswer;
	
	@ManyToMany(fetch = FetchType.LAZY)
	@JoinTable(
			name = "QuestionMap",
			joinColumns = @JoinColumn(name = "QuestionID"),
			inverseJoinColumns = @JoinColumn(name = "TopicID")
	)
	@Where(clause = "ActiveFlag = 'Y'")
	private Set<Topic> topics = new HashSet<>(1);
	
	@Override
	public void setID(Long id) {
		setQuestionID(id);
	}
	
	@Override
	public Long getID() {
		return getQuestionID();
	}
}