package by.makedon.aistudenttester.main.bean;

import org.hibernate.annotations.CacheConcurrencyStrategy;
import org.hibernate.annotations.Where;

import javax.persistence.*;
import java.sql.Date;
import java.util.Objects;

/**
 * @author Yahor Makedon
 */
@Entity(name = "testSession")
@Table(name = "TESTSESSION")
@org.hibernate.annotations.Cache(usage = CacheConcurrencyStrategy.READ_WRITE)
public class TestSession extends AbstractBean {
	public static final long serialVersionUID = 1L;
	
	@Id
	@Column(name = "TESTSESSIONID")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long testSessionId;
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "STUDENTID")
	@Where(clause = "student.active = 'true'")
	private Student student;
	@Column(name = "CREATEDDATE")
	private Date createdDate;
	@Column(name = "MARK")
	private int mark;
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "Q1")
	@Where(clause = "question.active = 'true'")
	private Question q1;
	@Column(name = "A1")
	private char a1;
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "Q2")
	@Where(clause = "question.active = 'true'")
	private Question q2;
	@Column(name = "A2")
	private char a2;
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "Q3")
	@Where(clause = "question.active = 'true'")
	private Question q3;
	@Column(name = "A3")
	private char a3;
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "Q4")
	@Where(clause = "question.active = 'true'")
	private Question q4;
	@Column(name = "A4")
	private char a4;
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "Q5")
	@Where(clause = "question.active = 'true'")
	private Question q5;
	@Column(name = "A5")
	private char a5;
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "Q6")
	@Where(clause = "question.active = 'true'")
	private Question q6;
	@Column(name = "A6")
	private char a6;
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "Q7")
	@Where(clause = "question.active = 'true'")
	private Question q7;
	@Column(name = "A7")
	private char a7;
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "Q8")
	@Where(clause = "question.active = 'true'")
	private Question q8;
	@Column(name = "A8")
	private char a8;
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "Q9")
	@Where(clause = "question.active = 'true'")
	private Question q9;
	@Column(name = "A9")
	private char a9;
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "Q10")
	@Where(clause = "question.active = 'true'")
	private Question q10;
	@Column(name = "A10")
	private char a10;
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "Q11")
	@Where(clause = "question.active = 'true'")
	private Question q11;
	@Column(name = "A11")
	private char a11;
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "Q12")
	@Where(clause = "question.active = 'true'")
	private Question q12;
	@Column(name = "A12")
	private char a12;
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "Q13")
	@Where(clause = "question.active = 'true'")
	private Question q13;
	@Column(name = "A13")
	private char a13;
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "Q14")
	@Where(clause = "question.active = 'true'")
	private Question q14;
	@Column(name = "A14")
	private char a14;
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "Q15")
	@Where(clause = "question.active = 'true'")
	private Question q15;
	@Column(name = "A15")
	private char a15;
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "Q16")
	@Where(clause = "question.active = 'true'")
	private Question q16;
	@Column(name = "A16")
	private char a16;
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "Q17")
	@Where(clause = "question.active = 'true'")
	private Question q17;
	@Column(name = "A17")
	private char a17;
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "Q18")
	@Where(clause = "question.active = 'true'")
	private Question q18;
	@Column(name = "A18")
	private char a18;
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "Q19")
	@Where(clause = "question.active = 'true'")
	private Question q19;
	@Column(name = "A19")
	private char a19;
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "Q20")
	@Where(clause = "question.active = 'true'")
	private Question q20;
	@Column(name = "A20")
	private char a20;
	
	/**
	 * Default constructor
	 */
	public TestSession() {
	}
	
	@Override
	public void setId(Long id) {
		setTestSessionId(id);
	}
	
	@Override
	public Long getId() {
		return getTestSessionId();
	}
	
	public Long getTestSessionId() {
		return testSessionId;
	}
	
	public void setTestSessionId(Long testSessionId) {
		this.testSessionId = testSessionId;
	}
	
	public Student getStudent() {
		return student;
	}
	
	public void setStudent(Student student) {
		this.student = student;
	}
	
	public Date getCreatedDate() {
		return createdDate;
	}
	
	public void setCreatedDate(Date createdDate) {
		this.createdDate = createdDate;
	}
	
	public int getMark() {
		return mark;
	}
	
	public void setMark(int mark) {
		this.mark = mark;
	}
	
	public Question getQ1() {
		return q1;
	}
	
	public void setQ1(Question q1) {
		this.q1 = q1;
	}
	
	public char getA1() {
		return a1;
	}
	
	public void setA1(char a1) {
		this.a1 = a1;
	}
	
	public Question getQ2() {
		return q2;
	}
	
	public void setQ2(Question q2) {
		this.q2 = q2;
	}
	
	public char getA2() {
		return a2;
	}
	
	public void setA2(char a2) {
		this.a2 = a2;
	}
	
	public Question getQ3() {
		return q3;
	}
	
	public void setQ3(Question q3) {
		this.q3 = q3;
	}
	
	public char getA3() {
		return a3;
	}
	
	public void setA3(char a3) {
		this.a3 = a3;
	}
	
	public Question getQ4() {
		return q4;
	}
	
	public void setQ4(Question q4) {
		this.q4 = q4;
	}
	
	public char getA4() {
		return a4;
	}
	
	public void setA4(char a4) {
		this.a4 = a4;
	}
	
	public Question getQ5() {
		return q5;
	}
	
	public void setQ5(Question q5) {
		this.q5 = q5;
	}
	
	public char getA5() {
		return a5;
	}
	
	public void setA5(char a5) {
		this.a5 = a5;
	}
	
	public Question getQ6() {
		return q6;
	}
	
	public void setQ6(Question q6) {
		this.q6 = q6;
	}
	
	public char getA6() {
		return a6;
	}
	
	public void setA6(char a6) {
		this.a6 = a6;
	}
	
	public Question getQ7() {
		return q7;
	}
	
	public void setQ7(Question q7) {
		this.q7 = q7;
	}
	
	public char getA7() {
		return a7;
	}
	
	public void setA7(char a7) {
		this.a7 = a7;
	}
	
	public Question getQ8() {
		return q8;
	}
	
	public void setQ8(Question q8) {
		this.q8 = q8;
	}
	
	public char getA8() {
		return a8;
	}
	
	public void setA8(char a8) {
		this.a8 = a8;
	}
	
	public Question getQ9() {
		return q9;
	}
	
	public void setQ9(Question q9) {
		this.q9 = q9;
	}
	
	public char getA9() {
		return a9;
	}
	
	public void setA9(char a9) {
		this.a9 = a9;
	}
	
	public Question getQ10() {
		return q10;
	}
	
	public void setQ10(Question q10) {
		this.q10 = q10;
	}
	
	public char getA10() {
		return a10;
	}
	
	public void setA10(char a10) {
		this.a10 = a10;
	}
	
	public Question getQ11() {
		return q11;
	}
	
	public void setQ11(Question q11) {
		this.q11 = q11;
	}
	
	public char getA11() {
		return a11;
	}
	
	public void setA11(char a11) {
		this.a11 = a11;
	}
	
	public Question getQ12() {
		return q12;
	}
	
	public void setQ12(Question q12) {
		this.q12 = q12;
	}
	
	public char getA12() {
		return a12;
	}
	
	public void setA12(char a12) {
		this.a12 = a12;
	}
	
	public Question getQ13() {
		return q13;
	}
	
	public void setQ13(Question q13) {
		this.q13 = q13;
	}
	
	public char getA13() {
		return a13;
	}
	
	public void setA13(char a13) {
		this.a13 = a13;
	}
	
	public Question getQ14() {
		return q14;
	}
	
	public void setQ14(Question q14) {
		this.q14 = q14;
	}
	
	public char getA14() {
		return a14;
	}
	
	public void setA14(char a14) {
		this.a14 = a14;
	}
	
	public Question getQ15() {
		return q15;
	}
	
	public void setQ15(Question q15) {
		this.q15 = q15;
	}
	
	public char getA15() {
		return a15;
	}
	
	public void setA15(char a15) {
		this.a15 = a15;
	}
	
	public Question getQ16() {
		return q16;
	}
	
	public void setQ16(Question q16) {
		this.q16 = q16;
	}
	
	public char getA16() {
		return a16;
	}
	
	public void setA16(char a16) {
		this.a16 = a16;
	}
	
	public Question getQ17() {
		return q17;
	}
	
	public void setQ17(Question q17) {
		this.q17 = q17;
	}
	
	public char getA17() {
		return a17;
	}
	
	public void setA17(char a17) {
		this.a17 = a17;
	}
	
	public Question getQ18() {
		return q18;
	}
	
	public void setQ18(Question q18) {
		this.q18 = q18;
	}
	
	public char getA18() {
		return a18;
	}
	
	public void setA18(char a18) {
		this.a18 = a18;
	}
	
	public Question getQ19() {
		return q19;
	}
	
	public void setQ19(Question q19) {
		this.q19 = q19;
	}
	
	public char getA19() {
		return a19;
	}
	
	public void setA19(char a19) {
		this.a19 = a19;
	}
	
	public Question getQ20() {
		return q20;
	}
	
	public void setQ20(Question q20) {
		this.q20 = q20;
	}
	
	public char getA20() {
		return a20;
	}
	
	public void setA20(char a20) {
		this.a20 = a20;
	}
	
	@Override
	public boolean equals(Object o) {
		if (this == o) {
			return true;
		}
		if (!(o instanceof TestSession)) {
			return false;
		}
		TestSession that = (TestSession) o;
		return getMark() == that.getMark() &&
		       getA1() == that.getA1() &&
		       getA2() == that.getA2() &&
		       getA3() == that.getA3() &&
		       getA4() == that.getA4() &&
		       getA5() == that.getA5() &&
		       getA6() == that.getA6() &&
		       getA7() == that.getA7() &&
		       getA8() == that.getA8() &&
		       getA9() == that.getA9() &&
		       getA10() == that.getA10() &&
		       getA11() == that.getA11() &&
		       getA12() == that.getA12() &&
		       getA13() == that.getA13() &&
		       getA14() == that.getA14() &&
		       getA15() == that.getA15() &&
		       getA16() == that.getA16() &&
		       getA17() == that.getA17() &&
		       getA18() == that.getA18() &&
		       getA19() == that.getA19() &&
		       getA20() == that.getA20() &&
		       Objects.equals(getTestSessionId(), that.getTestSessionId()) &&
		       Objects.equals(getStudent(), that.getStudent()) &&
		       Objects.equals(getCreatedDate(), that.getCreatedDate()) &&
		       Objects.equals(getQ1(), that.getQ1()) &&
		       Objects.equals(getQ2(), that.getQ2()) &&
		       Objects.equals(getQ3(), that.getQ3()) &&
		       Objects.equals(getQ4(), that.getQ4()) &&
		       Objects.equals(getQ5(), that.getQ5()) &&
		       Objects.equals(getQ6(), that.getQ6()) &&
		       Objects.equals(getQ7(), that.getQ7()) &&
		       Objects.equals(getQ8(), that.getQ8()) &&
		       Objects.equals(getQ9(), that.getQ9()) &&
		       Objects.equals(getQ10(), that.getQ10()) &&
		       Objects.equals(getQ11(), that.getQ11()) &&
		       Objects.equals(getQ12(), that.getQ12()) &&
		       Objects.equals(getQ13(), that.getQ13()) &&
		       Objects.equals(getQ14(), that.getQ14()) &&
		       Objects.equals(getQ15(), that.getQ15()) &&
		       Objects.equals(getQ16(), that.getQ16()) &&
		       Objects.equals(getQ17(), that.getQ17()) &&
		       Objects.equals(getQ18(), that.getQ18()) &&
		       Objects.equals(getQ19(), that.getQ19()) &&
		       Objects.equals(getQ20(), that.getQ20());
	}
	
	@Override
	public int hashCode() {
		return Objects
				.hash(getTestSessionId(), getStudent(), getCreatedDate(), getMark(), getQ1(), getA1(), getQ2(), getA2(),
				      getQ3(), getA3(), getQ4(), getA4(), getQ5(), getA5(), getQ6(), getA6(), getQ7(), getA7(), getQ8(),
				      getA8(), getQ9(), getA9(), getQ10(), getA10(), getQ11(), getA11(), getQ12(), getA12(), getQ13(),
				      getA13(), getQ14(), getA14(), getQ15(), getA15(), getQ16(), getA16(), getQ17(), getA17(),
				      getQ18(),
				      getA18(), getQ19(), getA19(), getQ20(), getA20());
	}
	
	@Override
	public String toString() {
		return "TestSession{" +
		       "testSessionId=" + testSessionId +
		       ", student=" + student +
		       ", createdDate=" + createdDate +
		       ", mark=" + mark +
		       ", q1=" + q1 +
		       ", a1=" + a1 +
		       ", q2=" + q2 +
		       ", a2=" + a2 +
		       ", q3=" + q3 +
		       ", a3=" + a3 +
		       ", q4=" + q4 +
		       ", a4=" + a4 +
		       ", q5=" + q5 +
		       ", a5=" + a5 +
		       ", q6=" + q6 +
		       ", a6=" + a6 +
		       ", q7=" + q7 +
		       ", a7=" + a7 +
		       ", q8=" + q8 +
		       ", a8=" + a8 +
		       ", q9=" + q9 +
		       ", a9=" + a9 +
		       ", q10=" + q10 +
		       ", a10=" + a10 +
		       ", q11=" + q11 +
		       ", a11=" + a11 +
		       ", q12=" + q12 +
		       ", a12=" + a12 +
		       ", q13=" + q13 +
		       ", a13=" + a13 +
		       ", q14=" + q14 +
		       ", a14=" + a14 +
		       ", q15=" + q15 +
		       ", a15=" + a15 +
		       ", q16=" + q16 +
		       ", a16=" + a16 +
		       ", q17=" + q17 +
		       ", a17=" + a17 +
		       ", q18=" + q18 +
		       ", a18=" + a18 +
		       ", q19=" + q19 +
		       ", a19=" + a19 +
		       ", q20=" + q20 +
		       ", a20=" + a20 +
		       '}';
	}
}
