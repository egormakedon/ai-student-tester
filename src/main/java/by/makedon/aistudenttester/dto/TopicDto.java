package by.makedon.aistudenttester.dto;

import lombok.Data;

import java.io.Serializable;

/**
 * @author Yahor Makedon
 */
@Data
public class TopicDto implements Serializable {
	public static final long serialVersionUID = 1L;

	private String topicID;
	private String topicName;
}