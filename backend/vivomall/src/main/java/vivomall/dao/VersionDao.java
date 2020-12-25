package vivomall.dao;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import vivomall.domain.Version;

import java.util.List;

@Mapper
@Repository
public interface VersionDao {
	List<Version> getVersionByGoodsId(Integer goodsId);
}
