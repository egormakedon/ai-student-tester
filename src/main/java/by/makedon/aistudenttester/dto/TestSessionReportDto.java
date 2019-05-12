package by.makedon.aistudenttester.dto;

import lombok.Data;

import java.io.Serializable;

/**
 * @author Yahor Makedon
 */
@Data
public class TestSessionReportDto implements Serializable {
	public static final long serialVersionUID = 1L;

	private String testNumber;
	private String group;
	private String student;
	private String start;
	private String finish;
	private String duration;
	private String mark;
}