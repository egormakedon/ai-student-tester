package by.makedon.aistudenttester.dto;

import lombok.Data;

import java.io.Serializable;

/**
 * @author Yahor Makedon
 */
@Data
public class QuestionReportDto implements Serializable {
	public static final long serialVersionUID = 1L;

	private String questionNumber;
	private String questionName;
	private String topic;
	private String subject;
}