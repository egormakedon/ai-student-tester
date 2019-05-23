package by.makedon.aistudenttester.domain.bean;

import by.makedon.aistudenttester.domain.AbstractBean;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.ToString;
import org.hibernate.annotations.Type;
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
@EqualsAndHashCode(of = {"questionID"}, callSuper = true)
@ToString(callSuper = true)
public class Question extends AbstractBean {
	public static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long questionID;

	@Type(type = "text")
	private String questionName;

	@Type(type = "text")
	private String firstAnswer;

	@Type(type = "text")
	private String secondAnswer;

	@Type(type = "text")
	private String thirdAnswer;

	@Type(type = "text")
	private String fourthAnswer;

	@Type(type = "text")
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