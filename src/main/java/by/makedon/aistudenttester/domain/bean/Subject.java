package by.makedon.aistudenttester.domain.bean;

import by.makedon.aistudenttester.domain.AbstractBean;
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
public class Subject extends AbstractBean {
	public static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long subjectID;

	private String subjectName;

	@Override
	public void setID(Long id) {
		setSubjectID(id);
	}
	
	@Override
	public Long getID() {
		return getSubjectID();
	}
}