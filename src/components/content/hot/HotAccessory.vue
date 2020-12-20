<template>
	<div class="hot_accessory">
		<div class="hot_accessory_title_container">
			<span class="hot_accessory_title">{{ title }}</span>
		</div>
		<div class="hot_accessory_container">
			<div class="hot_accessory_goods" v-for="accessory in goods" :key="accessory.goodsId">
				<router-link :to="{path: '/goodsDes', query: {goodsId: accessory.goodsId}}"><GoodsItem :lazy="true" shadow="hover" :goods="accessory"></GoodsItem></router-link>
			</div>
		</div>
	</div>
</template>

<script>
	import {
		getHotAccessory
	} from 'network/hotAccessory.js'

	import GoodsItem from 'components/common/goodsItem/GoodsItem.vue'

	export default {
		components: {
			GoodsItem
		},
		data() {
			return {
				title: '精选配件',
				goods: []
			}
		},
		mounted() {
			this.getHotAccessory();
		},
		methods: {
			getHotAccessory() {
				getHotAccessory().then(res => {
					this.goods = res.data;
				})
			}
		}
	}
</script>

<style lang="scss" scoped>
	.hot_accessory_title_container {
		height: 87px;
		text-align: center;

		.hot_accessory_title {
			font-size: 24px;
			line-height: 87px;
		}
	}

	.hot_accessory_container {
		display: flex;
		flex-wrap: wrap;
		justify-content: space-around;

		.el-card__body {
			padding: 0;
			height: 100%;
		}
	}

	.hot_accessory_goods {
		margin-bottom: 10px;
	}
</style>
