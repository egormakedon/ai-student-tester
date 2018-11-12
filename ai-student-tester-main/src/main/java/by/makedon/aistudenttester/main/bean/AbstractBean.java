package by.makedon.aistudenttester.main.bean;

import org.hibernate.annotations.Type;

import javax.persistence.Column;
import javax.persistence.MappedSuperclass;

/**
 * Abstract class for define default bean settings
 *
 * @author Yahor Makedon
 */
@MappedSuperclass
public abstract class AbstractBean implements BaseBean {
	@Column(name = "ACTIVEFLAG")
	@Type(type = "yes_no")
	protected boolean active = true;
	
	@Override
	public boolean isActive() {
		return active;
	}
	
	@Override
	public void setActive(boolean active) {
		this.active = active;
	}
}