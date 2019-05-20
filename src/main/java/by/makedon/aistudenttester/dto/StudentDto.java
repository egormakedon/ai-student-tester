package by.makedon.aistudenttester.dto;

import lombok.Data;

import java.io.Serializable;

/**
 * @author Yahor Makedon
 */
@Data
public class StudentDto implements Serializable {
	public static final long serialVersionUID = 1L;

	private String studentID;
	private String lastName;
	private String firstName;
	private String middleName;
}