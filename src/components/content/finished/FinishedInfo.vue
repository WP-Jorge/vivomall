<template>
	<div class="finished_info">
		<div class="img">
			<i class="el-icon-circle-check"></i>
			<span class="img_text">订单支付完成！</span>
		</div>
		<div class="status">
			<p class="status_top">订单已经支付完成！</p>
			<p class="status_bottom">如果支付失败请尝试重新支付或者联系客服：029-4328091</p>
		</div>
		<div class="btn">
			<el-button type="danger" @click="$router.replace('/home')">返回主页</el-button>
		</div>
	</div>
</template>

<script>
	export default {

	}
</script>

<style lang="scss" scoped>
	.finished_info {
		display: flex;
		flex-direction: column;
		align-items: center;
		justify-content: center;
		margin: 20px 0;
		height: 250px;
		text-align: center;
		background-color: #FFFFFF;

		.img {
			display: flex;
			justify-content: center;
			padding-bottom: 25px;
			height: 70px;
			width: 270px;

			.el-icon-circle-check {
				font-size: 70px;
				color: #83d45c;
			}

			.img_text {
				padding-left: 20px;
				line-height: 70px;
				font-weight: 500;
				font-size: 25px;
			}
		}

		.status {
			color: #909090;

			.status_top {
				color: #909090;
			}

			.status_bottom {
				padding-top: 6px;
			}
		}

		.btn {
			padding-top: 20px;
		}
	}
</style>
