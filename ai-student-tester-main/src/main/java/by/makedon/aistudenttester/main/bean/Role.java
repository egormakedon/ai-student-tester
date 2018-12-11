package by.makedon.aistudenttester.main.bean;

import org.hibernate.annotations.CacheConcurrencyStrategy;
import org.hibernate.annotations.Where;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;

/**
 * Role class define role of application user
 *
 * @author Yahor Makedon
 */
@Entity(name = "role")
@Table(name = "ROLE")
@org.hibernate.annotations.Cache(usage = CacheConcurrencyStrategy.READ_ONLY)
public class Role extends AbstractBean {
	public static final long serialVersionUID = 1L;
	
	@Id
	@Column(name = "ROLEID")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long roleId;
	@Column(name = "ROLENAME")
	private String roleName;

	@ManyToMany(mappedBy = "roles")
	@Where(clause = "ACTIVEFLAG = 'Y'")
	private Set<ApplicationUser> applicationUsers = new HashSet<>();
	
	/**
	 * Default constructor
	 */
	public Role() {
	}
	
	@Override
	public void setId(Long id) {
		setRoleId(id);
	}
	
	@Override
	public Long getId() {
		return getRoleId();
	}
	
	public Long getRoleId() {
		return roleId;
	}
	
	public void setRoleId(Long roleId) {
		this.roleId = roleId;
	}
	
	public String getRoleName() {
		return roleName;
	}
	
	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}
	
	public Set<ApplicationUser> getApplicationUsers() {
		return applicationUsers;
	}
	
	public void setApplicationUsers(Set<ApplicationUser> applicationUsers) {
		this.applicationUsers = applicationUsers;
	}
	
	@Override
	public boolean equals(Object o) {
		if (this == o) {
			return true;
		}
		if (!(o instanceof Role)) {
			return false;
		}
		Role role = (Role) o;
		return Objects.equals(getRoleId(), role.getRoleId()) &&
		       Objects.equals(getRoleName(), role.getRoleName());
	}
	
	@Override
	public int hashCode() {
		return Objects.hash(getRoleId(), getRoleName());
	}
	
	@Override
	public String toString() {
		return "Role{" +
		       "roleId=" + roleId +
		       ", roleName='" + roleName + '\'' +
		       ", active=" + active +
		       '}';
	}
}