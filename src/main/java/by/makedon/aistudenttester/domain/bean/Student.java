package by.makedon.aistudenttester.domain.bean;

import by.makedon.aistudenttester.domain.AbstractBean;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.ToString;
import org.hibernate.annotations.Where;

import javax.persistence.*;

/**
 * @author Yahor Makedon
 */
@Entity
@Data
@NoArgsConstructor
@EqualsAndHashCode(of = {"studentID", "studentTicket"}, callSuper = true)
@ToString(callSuper = true)
public class Student extends AbstractBean {
	public static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long studentID;

	private long studentTicket;
	private String firstName;
	private String lastName;
	private String middleName;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "StudentGroupID")
	@Where(clause = "ActiveFlag = 'Y'")
	private StudentGroup studentGroup;

	public String getName() {
		return String.format("%s %s.%s.", lastName, firstName.charAt(0), middleName.charAt(0));
	}
	
	@Override
	public void setID(Long id) {
		setStudentID(id);
	}
	
	@Override
	public Long getID() {
		return getStudentID();
	}
}