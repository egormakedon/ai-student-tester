package by.makedon.aistudenttester.dto;

import lombok.Data;

import java.io.Serializable;

/**
 * @author Yahor Makedon
 */
@Data
public class SubjectTopicDto implements Serializable {
	public static final long serialVersionUID = 1L;

	private String subjectTopicName;
	private Long topicID;
}