package by.makedon.aistudenttester.dto;

import lombok.Data;

import java.io.Serializable;

/**
 * @author Yahor Makedon
 */
@Data
public class ProfileDto implements Serializable {
	public static final long serialVersionUID = 1L;

	private String displayName;
	private String oldPassword;
	private String newPassword;
	private String confirmationPassword;
}