package vivomall.domain;

import lombok.Data;

@Data
public class Coupon {
	private Integer couponId;
	private String couponType;
	private String couponDes;
	private Double couponDiscount;
}
