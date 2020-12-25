package vivomall.domain;

import lombok.Data;

@Data
public class ShoppingCart {
	private Integer shoppingCartId;
	private String username;
	private Double price;
	private String color;
	private String version;
	private Integer num;
	private Double discount;
	private String img;
	private String totalName;
	private Integer goodsId;
}
