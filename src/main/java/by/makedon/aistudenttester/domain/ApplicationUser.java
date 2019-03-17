package by.makedon.aistudenttester.domain;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.ToString;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

/**
 * @author Yahor Makedon
 */
@Entity
@Data
@NoArgsConstructor
@EqualsAndHashCode(of = {"applicationUserID", "username"})
@ToString(exclude = {"password"})
public class ApplicationUser extends AbstractBean {
    public static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long applicationUserID;
    private String username;
    private String password;
    private String email;

    @ElementCollection(targetClass = Role.class, fetch = FetchType.EAGER)
    @CollectionTable(name = "RoleMap", joinColumns = @JoinColumn(name = "ApplicationUserID"))
    @Enumerated(EnumType.STRING)
    private Set<Role> roles = new HashSet<>(1);

    @Override
    public void setID(Long id) {
        setApplicationUserID(id);
    }

    @Override
    public Long getID() {
        return getApplicationUserID();
    }
}