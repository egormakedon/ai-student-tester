package by.makedon.aistudenttester.domain.dto;

import lombok.*;

/**
 * @author Yahor Makedon
 */
@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
public class StudentGroupNumberDTO extends AbstractDTO {
    public static final long serialVersionUID = 1L;

    private long studentGroupNumber;
}