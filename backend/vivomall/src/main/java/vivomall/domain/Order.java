package vivomall.domain;

import lombok.Data;

@Data
public class Order {
	private Integer orderId;
	private Integer userId;
	private Integer shoppingCarId;
	private String address;
}
