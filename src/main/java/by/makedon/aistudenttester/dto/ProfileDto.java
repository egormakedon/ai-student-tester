package by.makedon.aistudenttester.dto;

import lombok.Data;

/**
 * @author Yahor Makedon
 */
@Data
public class ProfileDto {
	private String displayName;
	private String oldPassword;
	private String newPassword;
	private String confirmationPassword;
}