package by.makedon.aistudenttester.main.bean;

import org.hibernate.annotations.CacheConcurrencyStrategy;

import javax.persistence.*;

/**
 * @author Yahor Makedon
 */
@Entity(name = "question")
@Table(name = "QUESTION")
@org.hibernate.annotations.Cache(usage = CacheConcurrencyStrategy.READ_WRITE)
public class Question extends AbstractBean {
	public static final long serialVersionUID = 1L;
	
	@Id
	@Column(name = "QUESTIONID")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long questionId;
	//TODO
	
	/**
	 * Default constructor
	 */
	public Question() {
	}
	
	@Override
	public void setId(Long id) {
	
	}
	
	@Override
	public Long getId() {
		return null;
	}
}
