package by.makedon.aistudenttester.domain.bean;

import by.makedon.aistudenttester.domain.AbstractBean;
import by.makedon.aistudenttester.domain.bean.Question;
import by.makedon.aistudenttester.domain.bean.Student;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.ToString;
import org.hibernate.annotations.Where;

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
	@Where(clause = "ActiveFlag = 'Y'")
	private Student student;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "Q1")
	@Where(clause = "ActiveFlag = 'Y'")
	private Question q1;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "Q2")
	@Where(clause = "ActiveFlag = 'Y'")
	private Question q2;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "Q3")
	@Where(clause = "ActiveFlag = 'Y'")
	private Question q3;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "Q4")
	@Where(clause = "ActiveFlag = 'Y'")
	private Question q4;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "Q5")
	@Where(clause = "ActiveFlag = 'Y'")
	private Question q5;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "Q6")
	@Where(clause = "ActiveFlag = 'Y'")
	private Question q6;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "Q7")
	@Where(clause = "ActiveFlag = 'Y'")
	private Question q7;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "Q8")
	@Where(clause = "ActiveFlag = 'Y'")
	private Question q8;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "Q9")
	@Where(clause = "ActiveFlag = 'Y'")
	private Question q9;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "Q10")
	@Where(clause = "ActiveFlag = 'Y'")
	private Question q10;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "Q11")
	@Where(clause = "ActiveFlag = 'Y'")
	private Question q11;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "Q12")
	@Where(clause = "ActiveFlag = 'Y'")
	private Question q12;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "Q13")
	@Where(clause = "ActiveFlag = 'Y'")
	private Question q13;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "Q14")
	@Where(clause = "ActiveFlag = 'Y'")
	private Question q14;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "Q15")
	@Where(clause = "ActiveFlag = 'Y'")
	private Question q15;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "Q16")
	@Where(clause = "ActiveFlag = 'Y'")
	private Question q16;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "Q17")
	@Where(clause = "ActiveFlag = 'Y'")
	private Question q17;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "Q18")
	@Where(clause = "ActiveFlag = 'Y'")
	private Question q18;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "Q19")
	@Where(clause = "ActiveFlag = 'Y'")
	private Question q19;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "Q20")
	@Where(clause = "ActiveFlag = 'Y'")
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