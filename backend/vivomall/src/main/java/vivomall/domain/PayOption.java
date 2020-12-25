package vivomall.domain;

import lombok.Data;
import org.springframework.stereotype.Repository;

@Data
@Repository
public class PayOption {
	private Integer id;
	private String img;
	private String text;
}
