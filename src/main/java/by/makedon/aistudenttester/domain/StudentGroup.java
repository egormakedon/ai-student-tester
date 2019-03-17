package by.makedon.aistudenttester.domain;

import javax.persistence.*;
import java.util.Objects;

/**
 * @author Yahor Makedon
 */
@Entity
@Table(name = "STUDENTGROUP")
public class StudentGroup extends AbstractBean {
	public static final long serialVersionUID = 1L;
	
	@Id
	@Column(name = "STUDENTGROUPID")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long studentGroupId;
	@Column(name = "STUDENTGROUPNUMBER")
	private String studentGroupNumber;
	@Column(name = "STUDENTGROUPYEAR")
	private String studentGroupYear;
	
	/**
	 * Default constructor
	 */
	public StudentGroup() {
	}
	
	@Override
	public void setId(Long id) {
		setStudentGroupId(id);
	}
	
	@Override
	public Long getId() {
		return getStudentGroupId();
	}
	
	public Long getStudentGroupId() {
		return studentGroupId;
	}
	
	public void setStudentGroupId(Long studentGroupId) {
		this.studentGroupId = studentGroupId;
	}
	
	public String getStudentGroupNumber() {
		return studentGroupNumber;
	}
	
	public void setStudentGroupNumber(String studentGroupNumber) {
		this.studentGroupNumber = studentGroupNumber;
	}
	
	public String getStudentGroupYear() {
		return studentGroupYear;
	}
	
	public void setStudentGroupYear(String studentGroupYear) {
		this.studentGroupYear = studentGroupYear;
	}
	
	@Override
	public boolean equals(Object o) {
		if (this == o) {
			return true;
		}
		if (!(o instanceof StudentGroup)) {
			return false;
		}
		StudentGroup that = (StudentGroup) o;
		return Objects.equals(getStudentGroupId(), that.getStudentGroupId()) &&
		       Objects.equals(getStudentGroupNumber(), that.getStudentGroupNumber()) &&
		       Objects.equals(getStudentGroupYear(), that.getStudentGroupYear());
	}
	
	@Override
	public int hashCode() {
		return Objects.hash(getStudentGroupId(), getStudentGroupNumber(), getStudentGroupYear());
	}
	
	@Override
	public String toString() {
		return "StudentGroup{" +
		       "studentGroupId=" + studentGroupId +
		       ", studentGroupNumber='" + studentGroupNumber + '\'' +
		       ", studentGroupYear='" + studentGroupYear + '\'' +
		       ", active=" + active +
		       '}';
	}
}
