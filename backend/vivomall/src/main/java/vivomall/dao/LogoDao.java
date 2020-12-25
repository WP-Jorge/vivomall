package vivomall.dao;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import vivomall.domain.Logo;

@Mapper
@Repository
public interface LogoDao {
	Logo getLogo();
}
