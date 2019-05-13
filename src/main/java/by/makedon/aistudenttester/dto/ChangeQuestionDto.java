package by.makedon.aistudenttester.dto;

import lombok.Data;

import java.io.Serializable;

/**
 * @author Yahor Makedon
 */
@Data
public class ChangeQuestionDto implements Serializable {
	public static final long serialVersionUID = 1L;

	private String questionName;
	private String firstAnswer;
	private String secondAnswer;
	private String thirdAnswer;
	private String fourthAnswer;
	private String fifthAnswer;
	private String rightAnswer;
}