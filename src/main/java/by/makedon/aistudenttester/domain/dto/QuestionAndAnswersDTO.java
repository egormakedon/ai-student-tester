package by.makedon.aistudenttester.domain.dto;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

/**
 * @author Yahor Makedon
 */
@Setter
@Getter
@NoArgsConstructor
public class QuestionAndAnswersDTO extends AbstractDTO {
    public static final long serialVersionUID = 1L;

    private String questionName;
    private String firstAnswer;
    private String secondAnswer;
    private String thirdAnswer;
    private String fourthAnswer;
    private String fifthAnswer;
    private int answer;
}