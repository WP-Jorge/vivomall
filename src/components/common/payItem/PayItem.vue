<template>
	<div class="pay_item">
		<div class="item_container">
			<div class="img">
				<img :src="option.img" alt="图片">
			</div>
			<div class="text">
				<span>{{ option.text }}</span>
			</div>
		</div>
	</div>
</template>

<script>
	export default {
		props: {
			option: {
				type: Object,
				default () {
					return {
						img: 'https://paystatic.vivo.com.cn/wpay/web/cashier/static/img/icon.ali_pay.png',
						text: '支付宝支付'
					}
				}
			}
		}
	}
</script>

<style lang="scss" scoped>
	.pay_item {
		width: 246px;
		height: 86px;
		color: #343434;
		border: 1px solid #ccc;
		cursor: pointer;

		.item_container {
			display: flex;
			height: 100%;
			justify-content: center;
			align-items: center;

			.img {
				height: 34px;
				width: 34px;

				img {
					height: 100%;
					width: 100%;
				}
			}

			.text {
				padding-left: 10px;
				font-size: 18px;
			}
		}
	}
</style>
