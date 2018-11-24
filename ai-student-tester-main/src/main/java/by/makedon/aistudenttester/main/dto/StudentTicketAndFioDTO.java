package by.makedon.aistudenttester.main.dto;

/**
 * @author Yahor Makedon
 */
public class StudentTicketAndFioDTO extends AbstractDTO {
    public static final long serialVersionUID = 1L;

    private String studentTicket;
    private String lastName;
    private String firstName;
    private String middleName;

    /**
     * Default constructor
     */
    public StudentTicketAndFioDTO() {
    }

    /**
     * Constructor
     */
    public StudentTicketAndFioDTO(String studentTicket, String lastName, String firstName, String middleName) {
        this.studentTicket = studentTicket;
        this.lastName = lastName;
        this.firstName = firstName;
        this.middleName = middleName;
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
}