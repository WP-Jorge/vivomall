package vivomall.dao;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import vivomall.domain.Address;

@Mapper
@Repository
public interface AddressDao {
	Address getAddressByUsername(String username);
}
