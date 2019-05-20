package by.makedon.aistudenttester.repository;

import by.makedon.aistudenttester.domain.bean.RoleMap;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

/**
 * @author Yahor Makedon
 */
public interface RoleMapRepository extends JpaRepository<RoleMap, Long> {
	List<RoleMap> findRoleMapsByApplicationUser_ApplicationUserID(Long applicationUserID);
}