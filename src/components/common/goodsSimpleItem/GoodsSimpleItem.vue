<template>
	<div class="goods_simple_item">
		<el-card class="box-card" shadow="hover">
			<a :href="src">
				<slot name="img"></slot>
				<slot name="imgName"></slot>
			</a>
		</el-card>
	</div>
</template>

<script>
	export default {
		props: {
			src: {
				type: String,
				default: 'javascript:void(0)'
			}
		}
	}
</script>

<style lang="scss" scoped>
	.goods_simple_item {
		display: flex;
		margin: 5px;
	}

	.box-card {
		display: flex;
		width: 350px;

		a {
			display: flex;
			align-items: center;

			.el-image {
				display: inline-block;
				width: 25%;
			}

			p {
				display: inline-block;
				font-size: 12px;
			}
		}
	}
</style>
