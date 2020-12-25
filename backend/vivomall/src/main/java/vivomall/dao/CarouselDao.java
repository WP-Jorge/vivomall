package vivomall.dao;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import vivomall.domain.Carousel;
import java.util.List;

@Mapper
@Repository
public interface CarouselDao {
	List<Carousel> getAllCarousels();
}
