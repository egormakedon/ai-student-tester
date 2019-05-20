package by.makedon.aistudenttester.service;

import by.makedon.aistudenttester.domain.bean.RoleMap;
import by.makedon.aistudenttester.repository.RoleMapRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @author Yahor Makedon
 */
@Service
public class RoleMapService {
	private RoleMapRepository repository;

	@Transactional
	public RoleMap save(RoleMap roleMap) {
		return repository.save(roleMap);
	}

	@Transactional
	public void removeByApplicationUserID(Long applicatioUserID) {
		List<RoleMap> roleMapList = repository.findRoleMapsByApplicationUser_ApplicationUserID(applicatioUserID);
		roleMapList.forEach(roleMap -> {
			roleMap.setActive(false);
			repository.save(roleMap);
		});
	}

//	Getters/Setters

	@Autowired
	public void setRepository(RoleMapRepository repository) {
		this.repository = repository;
	}
}