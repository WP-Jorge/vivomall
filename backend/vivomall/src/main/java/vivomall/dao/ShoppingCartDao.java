package vivomall.dao;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import vivomall.domain.ShoppingCart;

import java.util.List;

@Mapper
@Repository
public interface ShoppingCartDao {
	int addShoppingCart(ShoppingCart shoppingCart);
	int getShoppingCartByGoodsName(String totalName, String username);
	int updateShoppingCartNumByGoodsName(String totalName);
	List<ShoppingCart> getShoppingCartByUsername(String username);
	int updateShoppingCartNumByGoodsNameAndUsername(String totalName, String username, Integer num);
	int deleteShoppingCartByGoodsNameAndUsername(String totalName, String username);
}
