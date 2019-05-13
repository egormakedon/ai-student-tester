package by.makedon.aistudenttester.util;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;

import java.util.List;

/**
 * @author Yahor Makedon
 */
public final class PageUtil {
	public static <T> Page<T> getPage(List<T> list, Pageable pageable) {
		int start = (int) pageable.getOffset();
		int end = (start + pageable.getPageSize()) > list.size() ? list.size() : (start + pageable.getPageSize());

		return new PageImpl<>(list.subList(start, end), pageable, list.size());
	}
}