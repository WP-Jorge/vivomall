<template>
	<div class="good_des">
		<GoodsDesSelect :goodsId="goodsId"></GoodsDesSelect>
		<GoodsDesNavbar :goodsId="goodsId"></GoodsDesNavbar>
		<transition mode="out-in" appear>
			<router-view></router-view>
		</transition>
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
		created() {
			this.goodsId = parseInt(this.$route.query.goodsId)
		}
	}
</script>

<style lang="scss" scoped>
	.good_des {}
</style>
