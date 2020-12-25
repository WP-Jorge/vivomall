package vivomall.dao;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import vivomall.domain.Color;

import java.util.List;

@Mapper
@Repository
public interface ColorDao {
	List<Color> getColorByGoodsId(Integer goodsId);
}
