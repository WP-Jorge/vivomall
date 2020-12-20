<template>
	<div class="shopping_cart_list">
		<el-table ref="multipleTable" :data="tableData" tooltip-effect="dark" style="width: 100%" @selection-change="handleSelectionChange">
			<el-table-column type="selection" width="30"></el-table-column>
			<el-table-column label="全选" width="50px">
				<template></template>
			</el-table-column>
			<el-table-column label="商品名称" width="250px" header-align="center">
				<template slot-scope="scope">
					<div class="goodsInfo">
						<div class="goods_img">
							<img :src="scope.row.img" alt="图片">
						</div>
						<div class="goods_des">
							<p>{{ scope.row.totalName }}</p>
						</div>
					</div>
				</template>
			</el-table-column>
			<el-table-column prop="price" label="价格（元）" width="173px" header-align="center" align="center">
				<template slot-scope="scope">{{ scope.row.price.toFixed(2) }}</template>
			</el-table-column>
			<el-table-column label="数量" width="173px" header-align="center" align="center">
				<template slot-scope="scop">
					<el-input-number step-strictly :step="1" v-model="scop.row.num" @change="handleChange(scop.row.num, scop.row)"
					:min="1" :max="10" label="描述文字"></el-input-number>
				</template>
			</el-table-column>
			<el-table-column label="优惠" width="173px" header-align="center" align="center">
				<template slot-scope="scope">{{ ((-scope.row.discount) * scope.row.num).toFixed(2) }}</template>
			</el-table-column>
			<el-table-column label="小计（元）" width="173px" header-align="center" align="center">
				<template slot-scope="scope">{{ ((scope.row.price - scope.row.discount) * scope.row.num).toFixed(2)  }}</template>
			</el-table-column>
			<el-table-column prop="address" label="操作" width="173px" header-align="center" align="center">
				<template slot-scope="scope">
					<el-link @click="deleteGoods(scope.row)" :underline="false">删除</el-link>
				</template>
			</el-table-column>
		</el-table>
		<div class="pay_comtainer">
			<div class="sun_area">
				<p class="price">已选<span class="num"> {{ multipleSelection.length }} </span>件（不含运费）：<span>￥{{ totlalFinalPrice }}</span></p>
				<p class="info">（商品总价：￥{{ totalPrice }} 优惠：￥{{ totalDiscount }}）</p>
			</div>
			<div class="pay">
				<el-button type="danger" round @click="buy">立即购买</el-button>
			</div>
		</div>
	</div>
</template>

<script>
	import {
		getShoppingCartByUsername,
		updateShoppingCartNumByGoodsNameAndUsername,
		deleteShoppingCartByGoodsNameAndUsername
	} from 'network/shoppingCart.js'

	export default {
		data() {
			return {
				tableData: [],
				multipleSelection: []
			}
		},
		mounted() {
			this.getShoppingCartByUsername()
		},
		methods: {
			getShoppingCartByUsername() {
				if (!this.username) {
					this.tableData = JSON.parse(localStorage.getItem('goodsList'))
				} else {
					getShoppingCartByUsername(this.username).then(res => {
						this.tableData = res.data
					})
				}
			},
			handleChange(num, goods) {
				if (this.$store.state.user && this.$store.state.user.username) {
					updateShoppingCartNumByGoodsNameAndUsername(goods.totalName, goods.username, num).then(res => {
						console.log(res);
					})
				} else {
					let goodsList = JSON.parse(localStorage.getItem('goodsList'))
					for (let i = 0; i < goodsList.length; i++) {
						if (goodsList[i].totalName === goods.totalName) {
							this.$set(goodsList[i], 'num', num)
						}
					}
					localStorage.setItem('goodsList', JSON.stringify(goodsList))
				}
			},
			deleteGoods(goods) {
				this.$confirm('此操作将永久删除该商品, 是否继续?', '提示', {
					confirmButtonText: '确定',
					cancelButtonText: '取消',
					type: 'warning'
				}).then(() => {
					if (this.username) {
						deleteShoppingCartByGoodsNameAndUsername(goods.totalName, goods.username).then(res => {
							this.getShoppingCartByUsername()
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
					} else {
						let goodsList = JSON.parse(localStorage.getItem('goodsList'))
						let isFind = false;
						for (let i = 0; i < goodsList.length; i++) {
							if (goodsList[i].totalName === goods.totalName) {
								goodsList.splice(i, 1)
								isFind = true
								this.getShoppingCartByUsername()
								break
							}
						}
						localStorage.setItem('goodsList', JSON.stringify(goodsList))
						this.getShoppingCartByUsername()
						if (isFind) {
							this.$message({
								message: '删除成功',
								type: 'success',
								center: true
							})
						} else {
							this.$message({
								message: '删除失败',
								type: 'error',
								center: true
							})
						}
					}
				}).catch(() => {})

			},
			handleSelectionChange(val) {
				this.multipleSelection = val;
			},
			buy() {
				if (this.multipleSelection.length === 0) {
					this.$message({
						message: '您未勾选商品，请勾选商品后进行购买',
						type: 'warning',
						center: true
					})
				} else {
					if (this.username) {
						let orderList = this.multipleSelection
						localStorage.setItem('orderList', JSON.stringify(orderList))
						this.$router.replace('/order')
					} else {
						this.$message({
							message: '您当前未登录，正在跳转至登陆页面',
							type: 'warning',
							center: true
						})
						this.$router.push('/login')
					}
				}
			}
		},
		computed: {
			username() {
				return this.$store.state.user ? this.$store.state.user.username : null
			},
			totlalFinalPrice() {
				let totalFinalPrice = 0.00
				this.multipleSelection.forEach(item => {
					totalFinalPrice += (item.price - item.discount) * item.num
				})
				return parseFloat(totalFinalPrice).toFixed(2)
			},
			totalDiscount() {
				let totalDiscount = 0.00
				this.multipleSelection.forEach(item => {
					totalDiscount += item.discount * item.num
				})
				return parseFloat(totalDiscount).toFixed(2)
			},
			totalPrice() {
				let totalPrice = 0.00
				this.multipleSelection.forEach(item => {
					totalPrice += item.price * item.num
				})
				return parseFloat(totalPrice).toFixed(2)
			}
		}
	}
</script>

<style lang="scss">
	.el-table__body-wrapper {
		padding-bottom: 10px
	}
	.el-table__body {
		width: 1000px;
		margin: 0 auto;

		.el-input-number {
			width: 120px;

			.el-input-number__decrease,
			.el-input-number__increase {
				width: 30px;
			}
		}
	}

	.shopping_cart_list {
		.goodsInfo {
			display: flex;
			flex-wrap: nowrap;

			.goods_img {
				img {
					width: 100px;
					height: 100px;
				}
			}

			.goods_des {
				height: 100px;

				p {
					padding-top: 25px;
					overflow: hidden;
					text-overflow: ellipsis;
					display: -webkit-box;
					-webkit-line-clamp: 2;
					-webkit-box-orient: vertical;
				}
			}
		}

		.pay_comtainer {
			box-sizing: border-box;
			margin: 15px 0;
			height: 98px;
			background-color: #FFFFFF;
			display: flex;
			justify-content: flex-end;

			.sun_area {
				margin-right: 20px;
				width: 400px;
				padding-top: 15px;
				text-align: right;

				.price {

					.num {
						font-size: 18px;
					}

					span {
						color: #F51200;
						font-size: 33px;
					}
				}

				.info {
					color: #808080;
					font-size: 14px;
				}
			}

			.pay {
				display: flex;
				align-items: center;
				margin-right: 10px;

				.el-button {
					width: 170px;
					height: 46px;
				}
			}
		}
	}
</style>
