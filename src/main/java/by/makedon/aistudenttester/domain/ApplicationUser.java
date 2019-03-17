package by.makedon.aistudenttester.domain;

import org.hibernate.annotations.Where;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;

/**
 * @author Yahor Makedon
 */
@Entity
@Table(name = "APPLICATIONUSER")
public class ApplicationUser extends AbstractBean {
    public static final long serialVersionUID = 1L;

    @Id
    @Column(name = "APPLICATIONUSERID")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long applicationUserId;
    @Column(name = "USERNAME")
    private String username;
    @Column(name = "PASSWORD")
    private String password;

    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(
            name = "ROLEMAP",
            joinColumns = { @JoinColumn(name = "APPLICATIONUSERID") },
            inverseJoinColumns = { @JoinColumn(name = "ROLEID") }
    )
    @Where(clause = "ACTIVEFLAG = 'Y'")
    private Set<Role> roles = new HashSet<>(1);

    /**
     * Default constructor
     */
    public ApplicationUser() {
    }

    @Override
    public void setId(Long id) {
        setApplicationUserId(id);
    }

    @Override
    public Long getId() {
        return getApplicationUserId();
    }

    public Long getApplicationUserId() {
        return applicationUserId;
    }

    public void setApplicationUserId(Long applicationUserId) {
        this.applicationUserId = applicationUserId;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Set<Role> getRoles() {
        return roles;
    }

    public void setRoles(Set<Role> roles) {
        this.roles = roles;
    }
    
    @Override
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (!(o instanceof ApplicationUser)) {
            return false;
        }
        ApplicationUser that = (ApplicationUser) o;
        return Objects.equals(getApplicationUserId(), that.getApplicationUserId()) &&
               Objects.equals(getUsername(), that.getUsername()) &&
               Objects.equals(getPassword(), that.getPassword());
    }
    
    @Override
    public int hashCode() {
        return Objects.hash(getApplicationUserId(), getUsername(), getPassword());
    }
    
    @Override
    public String toString() {
        return "ApplicationUser{" +
               "applicationUserId=" + applicationUserId +
               ", username='" + username + '\'' +
               ", active=" + active +
               '}';
    }
}