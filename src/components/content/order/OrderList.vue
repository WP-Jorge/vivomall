<template>
	<div class="order_list">
		<el-table ref="multipleTable" :data="tableData" tooltip-effect="dark" style="width: 100%">
			<el-table-column label="商品名称" width="410px" header-align="center">
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
			<el-table-column prop="price" label="价格（元）" width="185px" header-align="center" align="center">
				<template slot-scope="scope">{{ scope.row.price.toFixed(2) }}</template>
			</el-table-column>
			<el-table-column label="数量" width="185px" header-align="center" align="center">
				<template slot-scope="scop">
					<!-- <el-input-number v-model="scop.row.num" @change="handleChange(scop.row.num, scop.row)" :min="1" :max="10" label="描述文字"></el-input-number> -->
					{{ scop.row.num }}
				</template>
			</el-table-column>
			<el-table-column label="优惠" width="185px" header-align="center" align="center">
				<template slot-scope="scope">{{ ((-scope.row.discount) * scope.row.num).toFixed(2) }}</template>
			</el-table-column>
			<el-table-column label="小计（元）" width="185px" header-align="center" align="center">
				<template slot-scope="scope">{{ ((scope.row.price - scope.row.discount) * scope.row.num).toFixed(2)  }}</template>
			</el-table-column>
		</el-table>
		<div class="pay_comtainer">
			<div class="sun_area">
				<p class="price">总价：<span>￥{{ totlalFinalPrice }}</span></p>
				<p class="info">（商品总价：￥{{ totalPrice }} 优惠：￥{{ totalDiscount }}）</p>
			</div>
			<div class="pay">
				<el-button type="danger" round>提交订单</el-button>
			</div>
		</div>
	</div>
</template>

<script>
	
	export default {
		data() {
			return {
				tableData: [],
				address: {}
			}
		},
		mounted() {
			this.getOrderList()
		},
		methods: {
			getOrderList() {
				this.tableData = JSON.parse(localStorage.getItem('orderList'))
			},
		},
		computed: {
			totlalFinalPrice() {
				let totalFinalPrice = 0.00
				this.tableData.forEach(item => {
					totalFinalPrice += (item.price - item.discount) * item.num
				})
				return parseFloat(totalFinalPrice).toFixed(2)
			},
			totalDiscount() {
				let totalDiscount = 0.00
				this.tableData.forEach(item => {
					totalDiscount += item.discount * item.num
				})
				return parseFloat(totalDiscount).toFixed(2)
			},
			totalPrice() {
				let totalPrice = 0.00
				this.tableData.forEach(item => {
					totalPrice += item.price * item.num
				})
				return parseFloat(totalPrice).toFixed(2)
			}
		}
	}
</script>

<style lang="scss">
	.el-table__body {
		width: 1000px;
		margin: 0 auto;
	}
	.el-table__header {
		margin: 0 auto;
	}

	.order_list {
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