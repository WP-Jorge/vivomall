package vivomall.domain;

import lombok.Data;

import java.util.List;

@Data
public class Comment {
	private Integer commentId;
	private Integer goodsId;
	private String commentUserImg;
	private String commentUsername;
	private Integer commentUserStar;
	private String commentDes;
	private List<CommentImg> commentImgList;
}
