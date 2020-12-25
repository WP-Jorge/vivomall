package vivomall.dao;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import vivomall.domain.User;

@Mapper
@Repository
public interface UserDao {
	User getUserById(Integer userId);
	User getUserByUsername(String username);
	User getUserByUsernameAndPassword(String username, String password);
	int addUser(User user);
}
