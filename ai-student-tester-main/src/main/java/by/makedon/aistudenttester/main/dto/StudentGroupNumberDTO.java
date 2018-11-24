package by.makedon.aistudenttester.main.dto;

/**
 * @author Yahor Makedon
 */
public class StudentGroupNumberDTO extends AbstractDTO {
    public static final long serialVersionUID = 1L;

    private String studentGroupNumber;

    /**
     * Default constructor
     */
    public StudentGroupNumberDTO() {
    }

    /**
     * Constructor
     */
    public StudentGroupNumberDTO(String studentGroupNumber) {
        this.studentGroupNumber = studentGroupNumber;
    }

    public String getStudentGroupNumber() {
        return studentGroupNumber;
    }

    public void setStudentGroupNumber(String studentGroupNumber) {
        this.studentGroupNumber = studentGroupNumber;
    }
}