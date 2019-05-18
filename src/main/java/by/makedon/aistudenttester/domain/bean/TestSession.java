package by.makedon.aistudenttester.domain.bean;

import by.makedon.aistudenttester.domain.AbstractBean;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.ToString;

import javax.persistence.*;
import java.time.LocalDateTime;

/**
 * @author Yahor Makedon
 */
@Entity
@Data
@NoArgsConstructor
@EqualsAndHashCode(of = {"testSessionID"})
@ToString(of = {"testSessionID", "mark", "student"})
public class TestSession extends AbstractBean {
	public static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long testSessionID;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "StudentID")
	private Student student;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "Q1")
	private Question q1;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "Q2")
	private Question q2;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "Q3")
	private Question q3;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "Q4")
	private Question q4;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "Q5")
	private Question q5;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "Q6")
	private Question q6;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "Q7")
	private Question q7;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "Q8")
	private Question q8;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "Q9")
	private Question q9;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "Q10")
	private Question q10;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "Q11")
	private Question q11;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "Q12")
	private Question q12;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "Q13")
	private Question q13;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "Q14")
	private Question q14;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "Q15")
	private Question q15;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "Q16")
	private Question q16;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "Q17")
	private Question q17;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "Q18")
	private Question q18;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "Q19")
	private Question q19;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "Q20")
	private Question q20;

	private LocalDateTime createdDate;
	private LocalDateTime finishedDate;
	private Integer mark;

	private int a1 = 0;
	private int a2 = 0;
	private int a3 = 0;
	private int a4 = 0;
	private int a5 = 0;
	private int a6 = 0;
	private int a7 = 0;
	private int a8 = 0;
	private int a9 = 0;
	private int a10 = 0;
	private int a11 = 0;
	private int a12 = 0;
	private int a13 = 0;
	private int a14 = 0;
	private int a15 = 0;
	private int a16 = 0;
	private int a17 = 0;
	private int a18 = 0;
	private int a19 = 0;
	private int a20 = 0;
	
	@Override
	public void setID(Long id) {
		setTestSessionID(id);
	}
	
	@Override
	public Long getID() {
		return getTestSessionID();
	}
}