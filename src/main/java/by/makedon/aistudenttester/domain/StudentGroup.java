package by.makedon.aistudenttester.domain;

import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 * @author Yahor Makedon
 */
@Entity
@Data
@NoArgsConstructor
public class StudentGroup extends AbstractBean {
	public static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long studentGroupID;
	private long studentGroupNumber;
	private int studentGroupYear;
	
	@Override
	public void setID(Long id) {
		setStudentGroupID(id);
	}
	
	@Override
	public Long getID() {
		return getStudentGroupID();
	}
}