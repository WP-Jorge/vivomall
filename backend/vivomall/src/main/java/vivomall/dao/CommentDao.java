package vivomall.dao;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import vivomall.domain.Comment;

import java.util.List;

@Mapper
@Repository
public interface CommentDao {
	List<Comment> getCommentByGoodsId(Integer goodsId);
}
