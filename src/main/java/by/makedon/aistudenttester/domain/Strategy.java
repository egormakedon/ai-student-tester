package by.makedon.aistudenttester.domain;

import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 * Strategy entity class to define how to marking students result of testing
 *
 * @author Yahor Makedon
 */
@Entity
@Data
@NoArgsConstructor
public class Strategy extends AbstractBean {
	public static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long StrategyID;
	private String StrategyName;
	
	@Override
	public void setID(Long id) {
		setStrategyID(id);
	}
	
	@Override
	public Long getID() {
		return getStrategyID();
	}
}