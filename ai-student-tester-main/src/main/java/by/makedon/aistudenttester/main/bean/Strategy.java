package by.makedon.aistudenttester.main.bean;

import org.hibernate.annotations.CacheConcurrencyStrategy;

import javax.persistence.*;

/**
 * Strategy entity class to define how to marking students result of testing
 *
 * @author Yahor Makedon
 */
@Entity(name = "Strategy")
@Table(name = "STRATEGY")
@org.hibernate.annotations.Cache(usage = CacheConcurrencyStrategy.READ_ONLY)
public class Strategy extends AbstractBean {
	public static final long serialVersionUID = 1L;
	
	@Id
	@Column(name = "STRATEGYID")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long StrategyId;
	@Column(name = "STRATEGYNAME")
	private String StrategyName;
	
	/**
	 * Default constructor
	 */
	public Strategy() {
	}
	
	@Override
	public void setId(Long id) {
		setStrategyId(id);
	}
	
	@Override
	public Long getId() {
		return getStrategyId();
	}
	
	public Long getStrategyId() {
		return StrategyId;
	}
	
	public void setStrategyId(Long strategyId) {
		StrategyId = strategyId;
	}
	
	public String getStrategyName() {
		return StrategyName;
	}
	
	public void setStrategyName(String strategyName) {
		StrategyName = strategyName;
	}
}