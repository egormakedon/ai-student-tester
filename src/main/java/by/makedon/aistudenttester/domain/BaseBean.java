package by.makedon.aistudenttester.domain;

import java.io.Serializable;

/**
 * BaseBean interface indicate bean and should implements for each of them
 *
 * @author Yahor Makedon
 */
public interface BaseBean extends Serializable {
	void setID(Long id);
	Long getID();
	boolean isActive();
	void setActive(boolean active);
}