package by.makedon.aistudenttester.domain.bean;

import by.makedon.aistudenttester.domain.AbstractBean;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.ToString;
import org.hibernate.annotations.Where;

import javax.persistence.*;

/**
 * @author Yahor Makedon
 */
@Entity
@Data
@NoArgsConstructor
@EqualsAndHashCode(of = {"roleMapID", "roles"}, callSuper = true)
@ToString(callSuper = true)
public class RoleMap extends AbstractBean {
	public static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long roleMapID;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "ApplicationUserID")
	@Where(clause = "ActiveFlag = 'Y'")
	private ApplicationUser applicationUser;

	private String roles;

	@Override
	public void setID(Long id) {
		setRoleMapID(id);
	}

	@Override
	public Long getID() {
		return getRoleMapID();
	}
}