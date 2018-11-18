package by.makedon.aistudenttester.main.bean;

import org.hibernate.annotations.CacheConcurrencyStrategy;
import org.hibernate.annotations.Where;

import javax.persistence.*;
import java.util.Objects;

/**
 * @author Yahor Makedon
 */
@Entity(name = "topic")
@Table(name = "TOPIC")
@org.hibernate.annotations.Cache(usage = CacheConcurrencyStrategy.READ_ONLY)
public class Topic extends AbstractBean {
	public static final long serialVersionUID = 1L;
	
	@Id
	@Column(name = "TOPICID")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long topicId;
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "SUBJECTID")
	@Where(clause = "subject.active = 'true'")
	private Subject subject;
	@Column(name = "TOPICNAME")
	private String topicName;
	
	/**
	 * Default constructor
	 */
	public Topic() {
	}
	
	@Override
	public void setId(Long id) {
		setTopicId(id);
	}
	
	@Override
	public Long getId() {
		return getTopicId();
	}
	
	public Long getTopicId() {
		return topicId;
	}
	
	public void setTopicId(Long topicId) {
		this.topicId = topicId;
	}
	
	public Subject getSubject() {
		return subject;
	}
	
	public void setSubject(Subject subject) {
		this.subject = subject;
	}
	
	public String getTopicName() {
		return topicName;
	}
	
	public void setTopicName(String topicName) {
		this.topicName = topicName;
	}
	
	@Override
	public boolean equals(Object o) {
		if (this == o) {
			return true;
		}
		if (!(o instanceof Topic)) {
			return false;
		}
		Topic topic = (Topic) o;
		return Objects.equals(getTopicId(), topic.getTopicId()) &&
		       Objects.equals(getSubject(), topic.getSubject()) &&
		       Objects.equals(getTopicName(), topic.getTopicName());
	}
	
	@Override
	public int hashCode() {
		return Objects.hash(getTopicId(), getSubject(), getTopicName());
	}
	
	@Override
	public String toString() {
		return "Topic{" +
		       "topicId=" + topicId +
		       ", subject=" + subject +
		       ", topicName='" + topicName + '\'' +
		       ", active=" + active +
		       '}';
	}
}
