package vivomall.dao;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import vivomall.domain.LoginImg;

@Mapper
@Repository
public interface LoginImgDao {
	LoginImg getLoginImg();
}
