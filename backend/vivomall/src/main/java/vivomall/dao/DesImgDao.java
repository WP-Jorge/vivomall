package vivomall.dao;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import vivomall.domain.DesImg;

import java.util.List;

@Mapper
@Repository
public interface DesImgDao {
	List<DesImg> getDesImgByGoodsId(Integer goodsId);
}
