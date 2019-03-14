package by.makedon.aistudenttester.main.dto;

/**
 * @author Yahor Makedon
 */
public class SubjectNameDTO extends AbstractDTO {
    public static final long serialVersionUID = 1L;

    private String subjectName;

    /**
     * Default constructor
     */
    public SubjectNameDTO() {
    }

    /**
     * Constructor
     */
    public SubjectNameDTO(String subjectName) {
        this.subjectName = subjectName;
    }

    public String getSubjectName() {
        return subjectName;
    }

    public void setSubjectName(String subjectName) {
        this.subjectName = subjectName;
    }
}