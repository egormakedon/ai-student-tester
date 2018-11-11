package by.makedon.aistudenttester.main.bean;

import java.io.Serializable;

/**
 * BaseBean interface indicate bean and should implements for each of them
 *
 * @author Yahor Makedon
 */
public interface BaseBean extends Serializable {
	void setId(Long id);
	
	Long getId();
	
	void setActiveFlag(boolean activeFlag);
	
	boolean getActiveFlag();
}