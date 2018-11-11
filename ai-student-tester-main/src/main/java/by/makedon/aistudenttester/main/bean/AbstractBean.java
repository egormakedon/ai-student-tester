package by.makedon.aistudenttester.main.bean;

/**
 * Abstract class for define default bean settings
 *
 * @author Yahor Makedon
 */
public abstract class AbstractBean implements BaseBean {
	protected boolean activeFlag = true;
	
	@Override
	public void setActiveFlag(boolean activeFlag) {
		this.activeFlag = activeFlag;
	}
	
	@Override
	public boolean getActiveFlag() {
		return activeFlag;
	}
}