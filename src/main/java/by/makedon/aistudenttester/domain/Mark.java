package by.makedon.aistudenttester.domain;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;
import org.hibernate.annotations.Where;

import javax.persistence.*;

/**
 * Mark entity class to define mapping with database table
 *
 * @author Yahor Makedon
 */
@Entity
@Data
@NoArgsConstructor
@ToString(exclude = {"strategy"})
public class Mark extends AbstractBean {
	public static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long markID;
	private int numberOfRightQuestions;
	private int mark;

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "StrategyID")
	@Where(clause = "ActiveFlag = 'Y'")
	private Strategy strategy;

	@Override
	public void setID(Long id) {
		setMarkID(id);
	}
	
	@Override
	public Long getID() {
		return getMarkID();
	}
}