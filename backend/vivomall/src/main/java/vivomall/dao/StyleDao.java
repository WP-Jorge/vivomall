package vivomall.dao;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import vivomall.domain.Style;

import java.util.List;

@Mapper
@Repository
public interface StyleDao {
	List<Style> getAllStyles();
	StyleDao getStyleByStyleId(Integer styleId);
}
