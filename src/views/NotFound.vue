<template>
	<div class="not_found">
		<TitleBar title="未找到此页面内容"></TitleBar>
		<div class="container">
			<div class="img">
				<img src="https://shopstatic.vivo.com.cn/vivoshop/spaweb/static/img/404.c73f7b3d.png">
			</div>
		</div>
	</div>
</template>

<script>
	import TitleBar from 'components/content/titleBar/TitleBar.vue'
	export default {
		components: {
			TitleBar
		}
	}
</script>

<style lang="scss" scoped>
	.not_found {
		width: 1200px;
		margin: 0 auto;
		.container {
			display: flex;
			justify-content: center;
			align-items: center;
			height: 400px;
			background-color: #FFFFFF;
		}
	}
</style>
