package vivomall.dao;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import vivomall.domain.Goods;

import java.util.List;

@Mapper
@Repository
public interface GoodsDao {
	Goods getGoodsByGoodsId(Integer goodsId);
	List<Goods> getGoodsBySortId(Integer sortId);
	List<Goods> getGoodsByPath(String pathName);
	List<Goods> getGoodsBySearch(String keyword);
	List<Goods> getAllGoods();
	List<Goods> getGoodsByGoodsIds();
	List<Goods> getHotPhone();
	Goods getFrstGoods();
	List<Goods> getHotAccessory();
}
