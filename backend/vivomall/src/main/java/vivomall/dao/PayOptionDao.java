package vivomall.dao;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import vivomall.domain.PayOption;

import java.util.List;

@Mapper
@Repository
public interface PayOptionDao {
	List<PayOption> getAllPayOptions();
}
