<template>
	<div class="order">
		<TitleBar title="核对订单信息"></TitleBar>
		<OrderAddress></OrderAddress>
		<OrderList></OrderList>
	</div>
</template>

<script>
	import OrderAddress from 'components/content/order/OrderAddress.vue'
	import TitleBar from 'components/content/titleBar/TitleBar.vue'
	import OrderList from 'components/content/order/OrderList.vue'
	export default {
		components: {
			TitleBar,
			OrderAddress,
			OrderList
		}
	}
</script>

<style lang="scss" scoped>
	.order {
		width: 1200px;
		margin: 0 auto;
	}
</style>
