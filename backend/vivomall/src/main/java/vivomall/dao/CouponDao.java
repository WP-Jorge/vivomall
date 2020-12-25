package vivomall.dao;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import vivomall.domain.Coupon;

import java.util.List;

@Mapper
@Repository
public interface CouponDao {
	List<Coupon> getCouponByGoodsId(Integer goodsId);
}
