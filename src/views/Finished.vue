<template>
	<div class="finished">
		<TitleBar title="支付状态"></TitleBar>
		<FinishedInfo></FinishedInfo>
	</div>
</template>

<script>
	import TitleBar from 'components/content/titleBar/TitleBar.vue'
	import FinishedInfo from 'components/content/finished/FinishedInfo.vue'
	export default {
		components: {
			TitleBar,
			FinishedInfo
		}
	}
</script>

<style lang="scss" scoped>
	.finished {
		width: 1200px;
		margin: 0 auto;
	}
</style>
