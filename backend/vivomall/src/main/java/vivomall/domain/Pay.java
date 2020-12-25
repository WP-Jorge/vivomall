package vivomall.domain;

import lombok.Data;

@Data
public class Pay {
	private Integer payId;
	private Double totalPrice;
	private String address;
}
