package by.makedon.aistudenttester.main.dto;

/**
 * @author Yahor Makedon
 */
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

    /**
     * Default constructor
     */
    public TestResultDTO() {
    }

    public String getTestSessionId() {
        return testSessionId;
    }

    public void setTestSessionId(String testSessionId) {
        this.testSessionId = testSessionId;
    }

    public String getStudentGroupNumber() {
        return studentGroupNumber;
    }

    public void setStudentGroupNumber(String studentGroupNumber) {
        this.studentGroupNumber = studentGroupNumber;
    }

    public String getStudentTicket() {
        return studentTicket;
    }

    public void setStudentTicket(String studentTicket) {
        this.studentTicket = studentTicket;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getMiddleName() {
        return middleName;
    }

    public void setMiddleName(String middleName) {
        this.middleName = middleName;
    }

    public String getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(String createdDate) {
        this.createdDate = createdDate;
    }

    public String getFinishedDate() {
        return finishedDate;
    }

    public void setFinishedDate(String finishedDate) {
        this.finishedDate = finishedDate;
    }

    public String getMark() {
        return mark;
    }

    public void setMark(String mark) {
        this.mark = mark;
    }
}