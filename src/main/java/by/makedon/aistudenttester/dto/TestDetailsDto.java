package by.makedon.aistudenttester.dto;

import by.makedon.aistudenttester.domain.bean.Question;
import lombok.Data;

import java.io.Serializable;
import java.util.List;

/**
 * @author Yahor Makedon
 */
@Data
public class TestDetailsDto implements Serializable {
	public static final long serialVersionUID = 1L;

	private String testNumber;
	private String subject;
	private String group;
	private String student;
	private String ticket;
	private String begin;
	private String end;
	private String duration;
	private String mark;
	private List<Question> questionList;
	private List<Integer> answerList;
}