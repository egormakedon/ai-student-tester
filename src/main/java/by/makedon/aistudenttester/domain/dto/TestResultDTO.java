package by.makedon.aistudenttester.domain.dto;

import lombok.*;

/**
 * @author Yahor Makedon
 */
@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
public class TestResultDTO extends AbstractDTO {
    public static final long serialVersionUID = 1L;

    private String testSessionId;
    private String studentGroupNumber;
    private String studentTicket;
    private String lastName;
    private String firstName;
    private String middleName;
    private String createdDate;
    private String finishedDate;
    private String mark;
}