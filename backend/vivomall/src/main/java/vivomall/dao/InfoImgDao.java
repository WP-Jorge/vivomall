package vivomall.dao;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import vivomall.domain.InfoImg;

import java.util.List;

@Repository
@Mapper
public interface InfoImgDao {
	List<InfoImg> getInfoImsByGoodsId(Integer goodsId);
}
