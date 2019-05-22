package by.makedon.aistudenttester.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

/**
 * @author Yahor Makedon
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class ApplicationUserDto implements Serializable {
	public static final long serialVersionUID = 1L;

	private String applicationUserID;
	private String displayName;
}