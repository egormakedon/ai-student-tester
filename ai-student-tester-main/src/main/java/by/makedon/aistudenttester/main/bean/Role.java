package by.makedon.aistudenttester.main.bean;

import org.hibernate.annotations.CacheConcurrencyStrategy;

import javax.persistence.*;

/**
 * Role class define role of application user
 *
 * @author Yahor Makedon
 */
@Entity(name = "Role")
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
}