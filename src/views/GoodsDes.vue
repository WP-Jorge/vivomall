<template>
	<div class="good_des">
		<GoodsDesSelect :goodsId="goodsId"></GoodsDesSelect>
		<GoodsDesNavbar :goodsId="goodsId"></GoodsDesNavbar>
		<router-view></router-view>
	</div>
</template>

<script>
	import GoodsDesSelect from 'components/content/goodsDes/goodsDesSelect/GoodsDesSelect.vue'
	import GoodsDesNavbar from 'components/content/goodsDes/goodsDesNavbar/GoodsDesNavbar.vue'
	
	export default {
		components: {
			GoodsDesSelect,
			GoodsDesNavbar
		},
		data() {
			return {
				goodsId: -1
			}
		},
		beforeMount() {
			this.goodsId = parseInt(this.$route.query.goodsId);
		},
		methods: {
			
		},
	}
</script>

<style lang="scss" scoped>
	.good_des {
		
	}
</style>
