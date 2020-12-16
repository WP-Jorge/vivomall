<template>
	<div class="title_bar">
		{{ title }}
	</div>
</template>

<script>
	export default {
		props: {
			title: {
				type: String,
				default: ''
			}
		}
	}
</script>

<style lang="scss" scoped>
	.title_bar {
		width: 100%;
		height: 70px;
		margin: 20px 0;
		line-height: 70px;
		text-align: center;
		font-size: 24px;
		background-color: #fff;
		box-sizing: border-box;
	}
</style>
