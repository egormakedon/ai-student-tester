package by.makedon.aistudenttester.domain.bean;

import by.makedon.aistudenttester.domain.AbstractBean;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.Where;

import javax.persistence.*;

/**
 * @author Yahor Makedon
 */
@Entity
@Data
@NoArgsConstructor
@EqualsAndHashCode(of = {"questionMapID"})
public class QuestionMap extends AbstractBean {
	public static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long questionMapID;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "QuestionID")
	@Where(clause = "ActiveFlag = 'Y'")
	private Question question;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "TopicID")
	@Where(clause = "ActiveFlag = 'Y'")
	private Topic topic;

	@Override
	public void setID(Long id) {
		setQuestionMapID(id);
	}

	@Override
	public Long getID() {
		return getQuestionMapID();
	}
}