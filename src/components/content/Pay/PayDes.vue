<template>
	<div class="pay_des">
		<div class="img">
			<i class="el-icon-circle-check"></i>
		</div>
		<div class="text">
			<p class="top"><span class="info">订单提交成功，请尽快完成付款！订单金额：</span><span class="price">￥{{ price }}</span></p>
			<p class="bottom">请在当前页面完成支付，否则订单将会被取消（如未完成支付，订单将会退回到购物车中）</p>
		</div>
	</div>
</template>

<script>
	export default {
		computed: {
			price() {
				let orderList = JSON.parse(localStorage.getItem('orderList'))
				let price = 0.00
				orderList.forEach(item => {
					price += item.price
				})
				return price.toFixed(2)
			}
		}
	}
</script>

<style lang="scss" scoped>
	.pay_des {
		display: flex;
		align-items: center;
		margin: 20px 0;
		height: 211px;
		background-color: #FFFFFF;

		.img {
			margin-left: 60px;

			.el-icon-circle-check {
				font-size: 70px;
				color: #83d45c;
			}
		}

		.text {
			padding-left: 20px;

			.top {
				font-size: 22px;
				height: 40px;
				line-height: 40px;

				.info {
					color: #343434;
				}

				.price {
					color: #F81200;
				}
			}

			.bottom {
				height: 30px;
				line-height: 30px;
				color: #343434;
				font-size: 16px;
			}
		}
	}
</style>
