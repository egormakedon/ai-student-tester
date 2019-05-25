package by.makedon.aistudenttester.domain.bean;

import by.makedon.aistudenttester.domain.AbstractBean;
import lombok.Data;
import lombok.EqualsAndHashCode;
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
@EqualsAndHashCode(callSuper = true)
@ToString(exclude = {"strategy"}, callSuper = true)
public class Mark extends AbstractBean {
	public static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long markID;

	private int numberOfRightQuestions;
	private int mark;

	@ManyToOne(fetch = FetchType.LAZY)
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