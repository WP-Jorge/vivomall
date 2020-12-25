package vivomall.dao;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import vivomall.domain.Commodity;

import java.util.List;

@Mapper
@Repository
public interface CommodityDao {
	List<Commodity> getCommodityByGoodsId(Integer goodsId);
}
