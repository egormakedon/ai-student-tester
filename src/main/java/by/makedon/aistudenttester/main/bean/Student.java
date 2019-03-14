package by.makedon.aistudenttester.main.bean;

import org.hibernate.annotations.CacheConcurrencyStrategy;
import org.hibernate.annotations.Where;

import javax.persistence.*;
import java.util.Objects;

/**
 * @author Yahor Makedon
 */
@Entity(name = "student")
@Table(name = "STUDENT")
@org.hibernate.annotations.Cache(usage = CacheConcurrencyStrategy.READ_ONLY)
public class Student extends AbstractBean {
	public static final long serialVersionUID = 1L;
	
	@Id
	@Column(name = "STUDENTID")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long studentId;
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "STUDENTGROUPID")
	@Where(clause = "ACTIVEFLAG = 'Y'")
	private StudentGroup studentGroup;
	@Column(name = "STUDENTTICKET")
	private String studentTicket;
	@Column(name = "FIRSTNAME")
	private String firstName;
	@Column(name = "LASTNAME")
	private String lastName;
	@Column(name = "MIDDLENAME")
	private String middleName;
	
	/**
	 * Default constructor
	 */
	public Student() {
	}
	
	@Override
	public void setId(Long id) {
		setStudentId(id);
	}
	
	@Override
	public Long getId() {
		return getStudentId();
	}
	
	public Long getStudentId() {
		return studentId;
	}
	
	public void setStudentId(Long studentId) {
		this.studentId = studentId;
	}
	
	public StudentGroup getStudentGroup() {
		return studentGroup;
	}
	
	public void setStudentGroup(StudentGroup studentGroup) {
		this.studentGroup = studentGroup;
	}
	
	public String getStudentTicket() {
		return studentTicket;
	}
	
	public void setStudentTicket(String studentTicket) {
		this.studentTicket = studentTicket;
	}
	
	public String getFirstName() {
		return firstName;
	}
	
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	
	public String getLastName() {
		return lastName;
	}
	
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	
	public String getMiddleName() {
		return middleName;
	}
	
	public void setMiddleName(String middleName) {
		this.middleName = middleName;
	}
	
	@Override
	public boolean equals(Object o) {
		if (this == o) {
			return true;
		}
		if (!(o instanceof Student)) {
			return false;
		}
		Student student = (Student) o;
		return Objects.equals(getStudentId(), student.getStudentId()) &&
		       Objects.equals(getStudentGroup(), student.getStudentGroup()) &&
		       Objects.equals(getStudentTicket(), student.getStudentTicket()) &&
		       Objects.equals(getFirstName(), student.getFirstName()) &&
		       Objects.equals(getLastName(), student.getLastName()) &&
		       Objects.equals(getMiddleName(), student.getMiddleName());
	}
	
	@Override
	public int hashCode() {
		return Objects.hash(getStudentId(), getStudentGroup(), getStudentTicket(), getFirstName(), getLastName(),
		                    getMiddleName());
	}
	
	@Override
	public String toString() {
		return "Student{" +
		       "studentId=" + studentId +
		       ", studentGroup=" + studentGroup +
		       ", studentTicket='" + studentTicket + '\'' +
		       ", firstName='" + firstName + '\'' +
		       ", lastName='" + lastName + '\'' +
		       ", middleName='" + middleName + '\'' +
		       ", active=" + active +
		       '}';
	}
}
