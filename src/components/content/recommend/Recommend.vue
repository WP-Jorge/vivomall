<template>
	<div class="recommend">
		<div class="recommend_title_container">
			<span class="recommend_title">{{ title }}</span>
		</div>
		<div class="recommend_goods_container">
			<div class="recommend_goods" v-for="goods in goodsList" :key="goods.goodsId">
				<router-link :to="{path: '/goodsDes', query: {goodsId: goods.goodsId}}"><GoodsItem :lazy="true" shadow="hover" :goods="goods" :isShowOldPrice="true"></GoodsItem></router-link>
			</div>
		</div>
	</div>
</template>

<script>
	import GoodsItem from 'components/common/goodsItem/GoodsItem.vue'
	
	import { getGoodsByGoodIds } from 'network/recommend.js'
	
	export default {
		components: {
			GoodsItem
		},
		mounted() {
			this.getGoodsByGoodIds();
		},
		data() {
			return {
				title: '好货推荐',
				goodsList: []
			}
		},
		methods: {
			getGoodsByGoodIds() {
				getGoodsByGoodIds().then(res => {
					this.goodsList = res.data;
				})
			}
		}
	}
</script>

<style lang="scss" >
	.recommend_title_container {
		height: 87px;
		text-align: center;
		
		.recommend_title {
			font-size: 24px;
			line-height: 87px;
		}
	}
	.recommend_goods_container {
		display: flex;
		flex-wrap: nowrap;
		justify-content: space-around;
		
	}
</style>
