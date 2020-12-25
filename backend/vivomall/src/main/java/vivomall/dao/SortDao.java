package vivomall.dao;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import vivomall.domain.Sort;

import java.util.List;

@Mapper
@Repository
public interface SortDao {
	List<Sort> getAllSorts();
	Sort getSortBySortId(Integer sortId);
}
