<template>
	<div class="pay">
		<TitleBar title="VIVO收银台"></TitleBar>
		<PayDes></PayDes>
		<PayBar></PayBar>
	</div>
</template>

<script>
	import TitleBar from 'components/content/titleBar/TitleBar.vue'
	import PayDes from 'components/content/Pay/PayDes.vue'
	import PayBar from 'components/content/Pay/PayBar.vue'

	export default {
		components: {
			TitleBar,
			PayDes,
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
