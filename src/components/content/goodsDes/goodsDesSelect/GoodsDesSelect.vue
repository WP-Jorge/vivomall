<template>
	<div class="goods_select">
		<div class="goods_select_container">
			<div class="left">
				<div class="large_img" @mouseenter="flag = true" @mouseleave="flag = false">
					<div class="imgMask" @mousemove="showZoop"></div>
					<div :class="{ show: flag}" class="mask" :style="maskStyle"></div>
					<img :src="largeImg" />
				</div>
				<div class="img_list">
					<div class="img_list_container">
						<img v-for="(img, index) in imgList" :key="index" :src="img.infoImg" @mouseenter="mouseEnter" />
					</div>
				</div>
				<div :class="{zoom: true, show: flag}" :style="{
						'background-image': `url('${largeImg}')`,
						'background-repeat': 'no-repeat',
						'background-size': '1030px 1030px',
						'background-position': `${posX} ${posY}`
					}">
				</div>
			</div>
			<div class="right">
				<div class="right_container">
					<h1 class="title">{{ goods.goodsName }}</h1>
					<p class="des">{{ goods.goodsDes }}</p>
					<div class="summary">
						<div class="summary_price">{{ totalPrice | priceFilter() }}</div>
						<div class="summary_coupon">
							<ul class="summary_coupon_list">
								<li v-for="coupon in couponList" :key="coupon.couponId">
									<span>{{ coupon.couponType }}</span>
									<p>{{ coupon.couponDes }}</p>
								</li>
							</ul>
						</div>
					</div>
					<div class="support">
						<span>商品支持：</span>
						<span class="support_item" v-for="commodity in commodityList" :key="commodity.commodityId"><i class="el-icon-circle-check"></i>{{ commodity.commodityType }}</span>
					</div>
					<div class="color">
						<p class="color_title">颜色</p>
						<div class="color_list">
							<div :class="{color_item: true, active: checkGoodsColor === color.colorName}" v-for="color in colorList" :key="color.colorId"
							@click="colorClick(color.colorName)">
								{{ color.colorName }}
							</div>
						</div>
					</div>
					<div class="color">
						<p class="color_title">版本</p>
						<div class="color_list">
							<div :class="{color_item: true, active: checkGoodsVersion === version.versionName}" v-for="version in versionList"
							:key="version.versionId" @click="versionClick(version)">
								{{ version.versionName }}
							</div>
						</div>
					</div>
					<div class="final_price">
						<span class="total_price">{{ totalPrice | priceFilter() }}</span>
						<span class="check_goods">已选：{{ checkGoods }}</span>
					</div>
					<div class="buy">
						<el-button type="danger" round @click="addShoppingCart">加入购物车</el-button>
						<!-- <el-button type="danger" round @click="buyNow">立即购买</el-button> -->
						<el-button class="shopping_cart" type="danger" icon="el-icon-shopping-cart-2" circle @click="toShoppingCart"></el-button>
						<div class="ball" :class="{'to_cart': isToCart}"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
</template>

<script>
	import {
		getGoodsByGoodsId,
		getInfoImsByGoodsId,
		getCouponByGoodsId,
		getCommodityByGoodsId,
		getColorByGoodsId,
		getVersionByGoodsId,
		addShoppingCart
	} from 'network/goodsDes/goodsDesSelect.js'

	export default {
		props: {
			goodsId: {
				type: Number,
				default: -1
			}
		},
		data() {
			return {
				checkGoodsColor: '',
				checkGoodsVersion: '',
				goods: {},
				largeImg: '',
				imgList: [],
				couponList: [],
				commodityList: [],
				colorList: [],
				versionList: [],
				rate: 1,
				discount: 0.00,
				flag: false,
				position: {},
				maskStyle: {
					left: '',
					top: ''
				},
				posX: '0px',
				posY: '0px',
				isToCart: false,
				timer: null
			}
		},
		mounted() {
			this.getGoodsByGoodsId()
			this.getInfoImsByGoodsId()
			this.getCouponByGoodsId()
			this.getCommodityByGoodsId()
			this.getColorByGoodsId()
			this.getVersionByGoodsId()

		},
		methods: {
			getGoodsByGoodsId() {
				getGoodsByGoodsId(this.goodsId).then(res => {
					this.goods = res.data
				})
			},
			getInfoImsByGoodsId() {
				getInfoImsByGoodsId(this.goodsId).then(res => {
					this.imgList = res.data
					this.largeImg = this.imgList[0].infoImg
				})
			},
			getCouponByGoodsId() {
				getCouponByGoodsId(this.goodsId).then(res => {
					this.couponList = res.data
				})
			},
			getCommodityByGoodsId() {
				getCommodityByGoodsId(this.goodsId).then(res => {
					this.commodityList = res.data
				})
			},
			getColorByGoodsId() {
				getColorByGoodsId(this.goodsId).then(res => {
					this.colorList = res.data
					this.checkGoodsColor = this.colorList[0].colorName
				})
			},
			getVersionByGoodsId() {
				getVersionByGoodsId(this.goodsId).then(res => {
					this.versionList = res.data
					this.checkGoodsVersion = this.versionList[0].versionName
				})
			},
			mouseEnter(e) {
				this.largeImg = e.target.currentSrc
			},
			colorClick(color) {
				this.checkGoodsColor = color
			},
			versionClick(versionItem) {
				this.checkGoodsVersion = versionItem.versionName
				this.rate = versionItem.versionPriceRate

			},
			getDiscount() {
				this.discount = 0.00
				this.couponList.forEach(item => {
					this.discount += parseFloat(item.couponDiscount)
				})
			},
			toShoppingCart() {
				this.$router.push('/shoppingCart')
			},
			addShoppingCart() {
				this.isToCart = true
				if (this.timer) {
					clearTimeout(this.timer)
				}
				this.timer = setTimeout(() => {
					this.isToCart = false
				}, 1000)
				let goodsList = []
				let find = false
				this.getDiscount();
				let goods = {
					goodsId: this.goods.goodsId,
					username: this.$store.state.user ? this.$store.state.user.username : null,
					color: this.checkGoodsColor,
					version: this.checkGoodsVersion,
					price: this.totalPrice,
					discount: this.discount,
					num: 1,
					img: this.goods.goodsImg,
					totalName: this.totalName
				}
				if (this.$store.state.user === null) {
					if (localStorage.getItem('goodsList') !== null) {
						goodsList = JSON.parse(localStorage.getItem('goodsList'))
						goodsList.forEach(item => {
							if (item.totalName === this.totalName) {
								item.num++
								find = true
								return
							}
						})
						if (find === false) {
							goodsList.push(goods)
						}
					} else {
						goodsList.push(goods)
					}
					localStorage.setItem('goodsList', JSON.stringify(goodsList))
					this.$message({
						message: '加入购物车成功！',
						type: 'success',
						center: true
					})
				} else {
					addShoppingCart(goods).then(res => {
						if (res.data.status === 1) {
							this.$message({
								message: res.data.msg,
								type: 'success',
								center: true
							})
						} else {
							this.$message({
								message: res.data.msg,
								type: 'error',
								center: true
							})
						}
					})
				}
			},
			showZoop(e) {
				let left = e.offsetX - 129
				let top = e.offsetY - 129
				if (left < 0) {
					left = 0
				} else if (left > 256) {
					left = 256
				}
				if (top < 0) {
					top = 0
				} else if (top > 256) {
					top = 256
				}
				this.maskStyle.left = left + 'px'
				this.maskStyle.top = top + 'px'
				this.posX = -2 * left + 'px'
				this.posY = -2 * top + 'px'
			}
		},
		filters: {
			priceFilter(price) {
				return `￥${price.toFixed(2)}`
			}
		},
		computed: {
			checkGoods() {
				return `${this.checkGoodsVersion} ${this.checkGoodsColor}`
			},
			totalPrice() {
				return parseFloat(this.goods.goodsPrice) * parseFloat(this.rate)
			},
			totalName() {
				return `${this.goods.goodsName} ${this.checkGoodsVersion} ${this.checkGoodsColor}`
			}
		}
	}
</script>

<style lang="scss" scoped>
	.show {
		display: block !important;
	}

	.active {
		color: #E90F23 !important;
		border-color: #E90F23 !important;
	}

	.to_cart {
		opacity: 1!important;
		margin-top: 13px!important;
		transition: all 1s ease;
	}

	.goods_select {
		background-color: #fff;

		.goods_select_container {
			display: flex;
			justify-content: space-around;
			margin: 0 auto;
			width: 1200px;

			.left {
				padding-top: 40px;
				width: 515px;

				.large_img {
					position: relative;
					transition: .5 ease;
					height: 515px;
					width: 515px;

					.mask {
						display: none;
						position: absolute;
						height: 258px;
						width: 258px;
						background-color: rgba(100, 100, 100, .5);
					}

					.imgMask {
						position: absolute;
						top: 0;
						left: 0;
						width: 100%;
						height: 100%;
						z-index: 1;
					}

					img {
						width: 100%;
					}
				}

				.img_list {
					margin: 45px 0 15px;
					height: 85px;

					.img_list_container {
						margin: 0 auto;
						width: 360px;
						text-align: center;

						img {
							width: 85px;
							height: 85px;
							transition: all 1 ease;
						}
					}
				}

				.zoom {
					display: none;
					position: absolute;
					border-radius: 10px;
					padding: 10px;
					margin-top: -680px;
					margin-left: 550px;
					height: 515px;
					width: 515px;
					overflow: hidden;
					background-color: #F3F3F3;

					.zoom_img {
						width: 1030px;
						height: 1030px;
					}
				}
			}

			.right {
				display: flex;
				align-items: center;
				width: 510px;
				padding-top: 10px;
				min-height: 700px;

				.right_container {
					padding-bottom: 20px;

					.des {
						padding-top: 10px;
					}

					.summary {
						display: flex;
						padding: 10px 0;
						justify-content: space-around;
						border-bottom: 1px solid #e4e4e4;

						.summary_price {
							margin: 0;
							width: 230px;
							height: 120px;
							line-height: 120px;
							text-align: center;
							font-size: 40px;
							border-right: solid #e4e4e4;
							border-width: 0 1px 0 0;
							color: #F51200;
						}

						.summary_coupon {
							display: flex;
							width: 200px;
							align-items: center;

							.summary_coupon_list {
								span {
									display: inline-block;
									margin: 5px;
									width: 34px;
									height: 23px;
									color: #FFF;
									font-size: 12px;
									line-height: 23px;
									text-align: center;
									border-radius: 5px;
									background-color: #F51314;

								}

								li {
									display: flex;

									p {
										line-height: 33px;
									}
								}
							}
						}
					}

					.support {
						margin: 15px 0 10px 0;
						height: 30px;
						line-height: 30px;

						span {
							margin-right: 10px;
						}

						.el-icon-circle-check {
							display: inline-block;
							padding-right: 5px;
							color: #F51314;
						}
					}

					.color_title {
						margin: 10px 0;
						font-size: 19px;
						color: #333;
					}

					.color_list {
						display: flex;
						flex-wrap: wrap;
						justify-content: space-between;

						.color_item {
							margin-top: 5px;
							height: 57px;
							width: 240px;
							cursor: pointer;
							color: #777777;
							text-align: center;
							line-height: 57px;
							border-radius: 5px;
							border: 1px solid #ddd;
							box-sizing: border-box;
							transition: all 1.5 ease;
						}

						.color_item:hover {
							color: #E90F23;
							box-shadow: 1px 1px 10px 1px rgba(100, 100, 100, .2);
						}
					}

					.final_price {
						display: flex;
						margin: 15px 0;
						height: 32px;

						.total_price {
							display: inline-block;
							height: 30px;
							line-height: 30px;
							padding-right: 18px;
							border-right: 1px solid #e0e0e0;
							color: #F51200;
							font-size: 25px;
						}

						.check_goods {
							padding-left: 15px;
							display: inline-block;
							height: 30px;
							line-height: 30px;
							color: #666666;
						}
					}

					.buy {
						display: flex;
						margin-top: 25px;

						.el-button {
							margin-right: 20px;
							width: 170px;
							height: 46px;
						}
						
						.shopping_cart {
							margin-left: 261px;
							width: 46px;
							height: 46px;
							z-index: 1;
						}
						
						.ball {
							opacity: 0;
							position: absolute;
							margin-left: 463px;
							margin-top: -71px;
							height: 20px;
							width: 20px;
							border-radius: 10px;
							background-color: #F56C6C;
							z-index: 0;
						}
					}
				}
			}
		}
	}
</style>
