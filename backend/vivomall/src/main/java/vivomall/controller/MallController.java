package vivomall.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.*;
import vivomall.dao.*;
import vivomall.domain.*;

import java.util.List;

@CrossOrigin
@RestController
public class MallController {
	@Autowired
	UserDao userDao;
	@Autowired
	GoodsDao goodsDao;
	@Autowired
	LogoDao logoDao;
	@Autowired
	StyleDao styleDao;
	@Autowired
	CarouselDao carouselDao;
	@Autowired
	SortDao sortDao;
	@Autowired
	LoginImgDao loginImgDao;
	@Autowired
	InfoImgDao infoImgDao;
	@Autowired
	CouponDao couponDao;
	@Autowired
	CommodityDao commodityDao;
	@Autowired
	ColorDao colorDao;
	@Autowired
	VersionDao versionDao;
	@Autowired
	DesImgDao desImgDao;
	@Autowired
	CommentDao commentDao;
	@Autowired
	ShoppingCartDao shoppingCartDao;
	@Autowired
	AddressDao addressDao;
	@Autowired
	PayOptionDao payOptionDao;
	
	@GetMapping("/getUserByUserId")
	public User getUserByUserId(Integer userId) {
		User user = userDao.getUserById(userId);
		return user;
	}
	
	@PostMapping("/login")
	public ReturnMsg login(User user) {
		System.out.println(user);
		ReturnMsg returnMsg = null;
		User user1 = userDao.getUserByUsernameAndPassword(user.getUsername(), user.getPassword());
		if (user1 != null) {
			returnMsg = new ReturnMsg("登陆成功！", 1);
		} else {
			returnMsg = new ReturnMsg("用户名或密码错误！", 0);
		}
		return returnMsg;
	}
	
	@GetMapping("/getAllGoods")
	public List<Goods> getAllGoods() {
		List<Goods> goodsList = goodsDao.getAllGoods();
		return goodsList;
	}
	
	@GetMapping("/getGoodsBySortId")
	public List<Goods> getGoodsBySortId(Integer sortId) {
		List<Goods> goodsList = goodsDao.getGoodsBySortId(sortId);
		return goodsList;
	}
	
	@GetMapping("/getGoodsByGoodIds")
	public List<Goods> getGoodsByGoodsIds() {
		List<Goods> goodsList = goodsDao.getGoodsByGoodsIds();
		return goodsList;
	}
	
	@GetMapping("/getLogo")
	public Logo getLogo() {
		Logo logo = logoDao.getLogo();
		return logo;
	}
	
	@GetMapping("/getAllStyles")
	public List<Style> getAllStyles() {
		List<Style> styleList = styleDao.getAllStyles();
		return styleList;
	}
	
	@GetMapping("/getAllCarousels")
	public List<Carousel> getAllCarousels() {
		List<Carousel> carouselList = carouselDao.getAllCarousels();
		return carouselList;
	}
	
	@GetMapping("/getAllSorts")
	public List<Sort> getAllSorts() {
		List<Sort> sortList = sortDao.getAllSorts();
		return sortList;
	}
	
	@GetMapping("/getHotPhone")
	public List<Goods> getHotPhone() {
		List<Goods> goodsList = goodsDao.getHotPhone();
		return goodsList;
	}
	
	@GetMapping("/getFrstGoods")
	public Goods getFrstGoods() {
		Goods goods = goodsDao.getFrstGoods();
		return goods;
	}
	
	@GetMapping("/getHotAccessory")
	public List<Goods> getHotAccessory() {
		List<Goods> goodsList = goodsDao.getHotAccessory();
		return goodsList;
	}
	
	@GetMapping("/getGoodsByPath/{pathName}/{pageNum}/{pageSize}")
	public PageInfo<Goods> getGoodsByPath(@PathVariable("pathName") String pathName, @PathVariable("pageNum") Integer pageNum, @PathVariable("pageSize") Integer pageSize) {
		List<Goods> goodsList = null;
		if (pathName.equals("all")) {
			PageHelper.startPage(pageNum, pageSize);
			goodsList = goodsDao.getAllGoods();
		} else {
			PageHelper.startPage(pageNum, pageSize);
			goodsList = goodsDao.getGoodsByPath(pathName);
		}
		PageInfo<Goods> pageInfo = new PageInfo<>(goodsList);
		return pageInfo;
	}
	
	@GetMapping("/getGoodsBySearch/{keyword}/{pageNum}/{pageSize}")
	public PageInfo<Goods> getGoodsBySearch(@PathVariable("keyword") String keyword, @PathVariable("pageNum") Integer pageNum, @PathVariable("pageSize") Integer pageSize) {
		List<Goods> goodsList = null;
		PageHelper.startPage(pageNum, pageSize);
		goodsList = goodsDao.getGoodsBySearch(keyword);
		PageInfo<Goods> pageInfo = new PageInfo<>(goodsList);
		return pageInfo;
	}
	
	@GetMapping("/getLoginImg")
	public LoginImg getLoginImg() {
		LoginImg loginImg = loginImgDao.getLoginImg();
		return loginImg;
	}
	
	@GetMapping("/getGoodsByGoodsId")
	public Goods getGoodsByGoodsId(Integer goodsId) {
		Goods goods = goodsDao.getGoodsByGoodsId(goodsId);
		return goods;
	}
	
	@PostMapping("/addUser")
	public ReturnMsg addUser(User user) {
		ReturnMsg msg;
		System.out.println(user);
		if (userDao.getUserByUsername(user.getUsername()) != null) {
			msg = new ReturnMsg("用户已存在！", 1);
			return msg;
		}
		int i = userDao.addUser(user);
		if (i != 0) {
			msg = new ReturnMsg("注册成功！", 2);
			return msg;
		}
		msg = new ReturnMsg("注册失败！", 0);
		return msg;
	}
	
	@GetMapping("/getInfoImsByGoodsId")
	public List<InfoImg> getInfoImsByGoodsId(Integer goodsId) {
		List<InfoImg> infoImgList = infoImgDao.getInfoImsByGoodsId(goodsId);
		return infoImgList;
	}
	
	@GetMapping("/getCouponByGoodsId")
	public List<Coupon> getCouponByGoodsId(Integer goodsId) {
		List<Coupon> couponList = couponDao.getCouponByGoodsId(goodsId);
		return couponList;
	}
	
	@GetMapping("/getCommodityByGoodsId")
	public List<Commodity> getCommodityByGoodsId(Integer goodsId) {
		List<Commodity> commodityList = commodityDao.getCommodityByGoodsId(goodsId);
		return commodityList;
	}
	
	@GetMapping("/getColorByGoodsId")
	public List<Color> getColorByGoodsId(Integer goodsId) {
		List<Color> colorList = colorDao.getColorByGoodsId(goodsId);
		return colorList;
	}
	
	@GetMapping("/getVersionByGoodsId")
	public List<Version> getVersionByGoodsId(Integer goodsId) {
		List<Version> versionList = versionDao.getVersionByGoodsId(goodsId);
		return versionList;
	}
	
	@GetMapping("/getDesImgByGoodsId")
	public List<DesImg> getDesImgByGoodsId(Integer goodsId) {
		List<DesImg> desImgList = desImgDao.getDesImgByGoodsId(goodsId);
		return desImgList;
	}
	
	@GetMapping("/getCommentByGoodsId")
	public List<Comment> getCommentByGoodsId(Integer goodsId) {
		List<Comment> commentList = commentDao.getCommentByGoodsId(goodsId);
		return commentList;
	}
	
	@Transactional
	@PostMapping("/addShoppingCart")
	public ReturnMsg addShoppingCart(@RequestBody ShoppingCart goods) {
		System.out.println(goods);
		ReturnMsg msg = null;
		
		int i = 0;
		int count = 0;
		
		count = shoppingCartDao.getShoppingCartByGoodsName(goods.getTotalName(), goods.getUsername());
		System.out.println(count);
		if (count > 0) {
			i = shoppingCartDao.updateShoppingCartNumByGoodsName(goods.getTotalName());
		} else {
			i = shoppingCartDao.addShoppingCart(goods);
		}
		if (i == 0) {
			msg = new ReturnMsg("添加购物车失败！", 0);
		} else {
			msg = new ReturnMsg("添加购物车成功！", 1);
		}
		return msg;
	}
	
	@PostMapping("/getShoppingCartByUsername")
	public List<ShoppingCart> getShoppingCartByUsername(@RequestParam("username") String username) {
		System.out.println(username);
		List<ShoppingCart> shoppingCartList = shoppingCartDao.getShoppingCartByUsername(username);
		return shoppingCartList;
	}
	
	@PostMapping("/updateShoppingCartNumByGoodsNameAndUsername")
	public ReturnMsg updateShoppingCartNumByGoodsNameAndUsername(@RequestBody GoodsOptions goods) {
		System.out.println(goods);
		ReturnMsg msg = null;
		int i = shoppingCartDao.updateShoppingCartNumByGoodsNameAndUsername(goods.getTotalName(), goods.getUsername(), goods.getNum());
		System.out.println(i);
		if (i > 0) {
			msg = new ReturnMsg("修改成功", 1);
		} else {
			msg = new ReturnMsg("修改失败", 0);
		}
		return msg;
	}
	
	@PostMapping("/deleteShoppingCartByGoodsNameAndUsername")
	public ReturnMsg deleteShoppingCartByGoodsNameAndUsername(@RequestBody GoodsOptions goods) {
		System.out.println(goods);
		ReturnMsg msg = null;
		int i = shoppingCartDao.deleteShoppingCartByGoodsNameAndUsername(goods.getTotalName(), goods.getUsername());
		if (i > 0) {
			msg = new ReturnMsg("删除成功", 1);
		} else {
			msg = new ReturnMsg("删除失败", 0);
		}
		return msg;
	}
	
	@PostMapping("/getAddressByUsername")
	public Address getAddressByUsername(String username) {
		System.out.println(username);
		Address address = addressDao.getAddressByUsername(username);
		return address;
	}
	
	@GetMapping("/getAllPayOptions")
	public List<PayOption> getAllPayOptions() {
		List<PayOption> optionList = payOptionDao.getAllPayOptions();
		return optionList;
	}
}
