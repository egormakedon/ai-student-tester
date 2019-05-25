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
@EqualsAndHashCode(of = {"topicID", "topicName"}, callSuper = true)
@ToString(of = {"topicID", "topicName"}, callSuper = true)
public class Topic extends AbstractBean {
	public static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long topicID;

	@Type(type = "text")
	private String topicName;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "SubjectID")
	@Where(clause = "ActiveFlag = 'Y'")
	private Subject subject;
	
	@ManyToMany(mappedBy = "topics", fetch = FetchType.LAZY)
	@Where(clause = "ActiveFlag = 'Y'")
	private Set<Question> questions = new HashSet<>();
	
	@Override
	public void setID(Long id) {
		setTopicID(id);
	}
	
	@Override
	public Long getID() {
		return getTopicID();
	}
}