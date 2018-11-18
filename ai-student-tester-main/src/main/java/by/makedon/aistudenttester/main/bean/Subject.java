package by.makedon.aistudenttester.main.bean;

import org.hibernate.annotations.CacheConcurrencyStrategy;

import javax.persistence.*;
import java.util.Objects;

/**
 * @author Yahor Makedon
 */
@Entity(name = "subject")
@Table(name = "SUBJECT")
@org.hibernate.annotations.Cache(usage = CacheConcurrencyStrategy.READ_ONLY)
public class Subject extends AbstractBean {
	public static final long serialVersionUID = 1L;
	
	@Id
	@Column(name = "SUBJECTID")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long subjectId;
	@Column(name = "SUBJECTNAME")
	private String subjectName;
	
	/**
	 * Default constructor
	 */
	public Subject() {
	}
	
	@Override
	public void setId(Long id) {
		setSubjectId(id);
	}
	
	@Override
	public Long getId() {
		return getSubjectId();
	}
	
	public Long getSubjectId() {
		return subjectId;
	}
	
	public void setSubjectId(Long subjectId) {
		this.subjectId = subjectId;
	}
	
	public String getSubjectName() {
		return subjectName;
	}
	
	public void setSubjectName(String subjectName) {
		this.subjectName = subjectName;
	}
	
	@Override
	public boolean equals(Object o) {
		if (this == o) {
			return true;
		}
		if (!(o instanceof Subject)) {
			return false;
		}
		Subject subject = (Subject) o;
		return Objects.equals(getSubjectId(), subject.getSubjectId()) &&
		       Objects.equals(getSubjectName(), subject.getSubjectName());
	}
	
	@Override
	public int hashCode() {
		return Objects.hash(getSubjectId(), getSubjectName());
	}
	
	@Override
	public String toString() {
		return "Subject{" +
		       "subjectId=" + subjectId +
		       ", subjectName='" + subjectName + '\'' +
		       ", active=" + active +
		       '}';
	}
}