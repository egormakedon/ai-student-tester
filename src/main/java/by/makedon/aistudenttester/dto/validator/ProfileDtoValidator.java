package by.makedon.aistudenttester.dto.validator;

import by.makedon.aistudenttester.domain.bean.ApplicationUser;
import by.makedon.aistudenttester.dto.ProfileDto;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

/**
 * @author Yahor Makedon
 */
@Component
public class ProfileDtoValidator {
	private static final int MAX_DISPLAY_NAME_LENGTH = 30;
	private static final int MAX_PASSWORD_LENGTH = 20;

	private BCryptPasswordEncoder passwordEncoder;

	public List<String> validate(ProfileDto profileDto, Authentication authentication) {
		ApplicationUser applicationUser = (ApplicationUser) authentication.getPrincipal();
		List<String> errors = new ArrayList<>();

		validateDisplayName(profileDto.getDisplayName(), errors);
		validatePasswords(applicationUser.getPassword(), profileDto.getOldPassword(),
				profileDto.getNewPassword(), profileDto.getConfirmationPassword(), errors);

		return errors;
	}

	private void validateDisplayName(String newDisplayName, List<String> errors) {
		if (StringUtils.isBlank(newDisplayName)) {
			errors.add("profile.display.name.validation.blank");
		}

		if (newDisplayName.trim().length() > MAX_DISPLAY_NAME_LENGTH) {
			errors.add("profile.display.name.validation.size");
		}
	}

	private void validatePasswords(String currentPassword, String oldPassword, String newPassword,
	                               String confirmationPassword, List<String> errors) {
		if (!(StringUtils.isBlank(oldPassword) && StringUtils.isBlank(newPassword) && StringUtils.isBlank(confirmationPassword))) {
			if (StringUtils.isBlank(oldPassword)) {
				errors.add("profile.old.password.validation.blank");
			}

			if (StringUtils.isBlank(newPassword)) {
				errors.add("profile.new.password.validation.blank");
			}

			if (StringUtils.isBlank(confirmationPassword)) {
				errors.add("profile.confirmation.password.validation.blank");
			}

			if (!passwordEncoder.matches(oldPassword.trim(), currentPassword)) {
				errors.add("profile.old.password.validation.incorrect");
			}

			if (newPassword.trim().length() > MAX_PASSWORD_LENGTH) {
				errors.add("profile.new.password.validation.size");
			}

			if (!newPassword.trim().equals(confirmationPassword.trim())) {
				errors.add("profile.confirmation.password.validation.match");
			}
		}
	}

//	Getters/Setters

	@Autowired
	public void setPasswordEncoder(BCryptPasswordEncoder passwordEncoder) {
		this.passwordEncoder = passwordEncoder;
	}
}