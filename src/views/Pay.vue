<template>
	<div class="pay">
		<TitleBar title="VIVO收银台"></TitleBar>
		<PayBar></PayBar>
	</div>
</template>

<script>
	import TitleBar from 'components/content/titleBar/TitleBar.vue'
	import PayBar from 'components/content/Pay/PayBar.vue'
	
	export default {
		components: {
			TitleBar,
			PayBar
		}
	}
</script>

<style lang="scss" scoped>
	.pay {
		width: 1200px;
		margin: 0 auto;
	}
</style>
