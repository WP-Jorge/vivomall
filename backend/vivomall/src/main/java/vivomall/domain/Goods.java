package vivomall.domain;

import lombok.Data;

@Data
public class Goods {
	private Integer goodsId;
	private String goodsName;
	private String goodsSimpleName;
	private String goodsDes;
	private Double goodsOldPrice;
	private Double goodsPrice;
	private String goodsImg;
	private Integer sortId;
	private String firstGoodsImg;
}
