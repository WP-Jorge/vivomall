<template>
	<div class="shopping_cart">
		<TitleBar title="我的购物车"></TitleBar>
		<ShoppingCartList></ShoppingCartList>
	</div>
</template>

<script>
	import TitleBar from 'components/content/titleBar/TitleBar.vue'
	import ShoppingCartList from 'components/content/shoppingCart/ShoppingCartList.vue'
	
	export default {
		components: {
			TitleBar,
			ShoppingCartList
		},
		data() {
			return {
				
			}
		}
	}
</script>

<style lang="scss" scoped>
	.shopping_cart {
		width: 1200px;
		margin: 0 auto;
	}
</style>
