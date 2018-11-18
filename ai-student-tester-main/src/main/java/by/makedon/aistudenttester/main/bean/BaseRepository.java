package by.makedon.aistudenttester.main.bean;

import org.springframework.data.repository.CrudRepository;

/**
 * @param <T> extends {@link AbstractBean}
 *
 * @author Yahor Makedon
 */
public interface BaseRepository<T extends AbstractBean> extends CrudRepository<T, Long> {
}
