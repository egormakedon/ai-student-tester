package by.makedon.aistudenttester.domain.dto;

import lombok.*;

/**
 * @author Yahor Makedon
 */
@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
public class StudentTicketAndFioDTO extends AbstractDTO {
    public static final long serialVersionUID = 1L;

    private long studentTicket;
    private String lastName;
    private String firstName;
    private String middleName;
}