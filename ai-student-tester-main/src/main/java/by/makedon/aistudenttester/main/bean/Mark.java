package by.makedon.aistudenttester.main.bean;

import org.hibernate.annotations.CacheConcurrencyStrategy;

import javax.persistence.*;
import java.util.Objects;

/**
 * Mark entity class to define mapping with database table
 *
 * @author Yahor Makedon
 */
@Entity(name = "mark")
@Table(name = "MARK")
@org.hibernate.annotations.Cache(usage = CacheConcurrencyStrategy.READ_ONLY)
public class Mark extends AbstractBean {
	public static final long serialVersionUID = 1L;
	
	@Id
	@Column(name = "MARKID")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long markId;
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "STRATEGYID")
	private Strategy strategy;
	@Column(name = "NUMBEROFRIGHTQUESTIONS")
	private int numberOfRightQuestions;
	@Column(name = "MARK")
	private int mark;
	
	/**
	 * Default constructor
	 */
	public Mark() {
	}
	
	@Override
	public void setId(Long id) {
		setMarkId(id);
	}
	
	@Override
	public Long getId() {
		return getMarkId();
	}
	
	public Long getMarkId() {
		return markId;
	}
	
	public void setMarkId(Long markId) {
		this.markId = markId;
	}
	
	public Strategy getStrategy() {
		return strategy;
	}
	
	public void setStrategy(Strategy strategy) {
		this.strategy = strategy;
	}
	
	public int getNumberOfRightQuestions() {
		return numberOfRightQuestions;
	}
	
	public void setNumberOfRightQuestions(int numberOfRightQuestions) {
		this.numberOfRightQuestions = numberOfRightQuestions;
	}
	
	public int getMark() {
		return mark;
	}
	
	public void setMark(int mark) {
		this.mark = mark;
	}
	
	@Override
	public boolean equals(Object o) {
		if (this == o) {
			return true;
		}
		if (!(o instanceof Mark)) {
			return false;
		}
		Mark mark1 = (Mark) o;
		return getNumberOfRightQuestions() == mark1.getNumberOfRightQuestions() &&
		       getMark() == mark1.getMark() &&
		       Objects.equals(getMarkId(), mark1.getMarkId()) &&
		       Objects.equals(getStrategy(), mark1.getStrategy());
	}
	
	@Override
	public int hashCode() {
		return Objects.hash(getMarkId(), getStrategy(), getNumberOfRightQuestions(), getMark());
	}
	
	@Override
	public String toString() {
		return "Mark{" +
		       "markId=" + markId +
		       ", strategy=" + strategy +
		       ", numberOfRightQuestions=" + numberOfRightQuestions +
		       ", mark=" + mark +
		       ", active=" + active +
		       '}';
	}
}