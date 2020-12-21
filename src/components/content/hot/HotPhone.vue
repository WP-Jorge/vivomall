<template>
	<div class="hot_phone">
		<div class="hot_phone_title_container">
			<span class="hot_phone_title">{{ title }}</span>
		</div>
		<div class="hot_phone_container">
			<el-card class="first_goods" shadow="hover" :lazy="true">
				<router-link :to="{path: '/goodsDes', query: {goodsId: firstGoods.goodsId}}">
					<el-image :src="firstGoods.firstGoodsImg" alt="图片" lazy />
				</router-link>
			</el-card>
			<div class="hot_phone_goods" v-for="phone in goods" :key="phone.goodsId">
				<router-link :to="{path: '/goodsDes', query: {goodsId: phone.goodsId}}">
					<GoodsItem :lazy="true" shadow="hover" :goods="phone"></GoodsItem>
				</router-link>
			</div>
		</div>
	</div>
</template>

<script>
	import {
		getHotPhone,
		getFrstGoods
	} from 'network/hotPhone.js'

	import GoodsItem from 'components/common/goodsItem/GoodsItem.vue'

	export default {
		components: {
			GoodsItem
		},
		data() {
			return {
				goods: [],
				title: '精品手机',
				firstGoods: {}
			}
		},
		mounted() {
			this.getHotPhone()
			this.getFrstGoods()
		},
		methods: {
			getHotPhone() {
				getHotPhone().then(res => {
					this.goods = res.data
				})
			},
			getFrstGoods() {
				getFrstGoods().then(res => {
					this.firstGoods = res.data
				})
			}
		}
	}
</script>

<style lang="scss">
	.hot_phone_title_container {
		height: 87px;
		text-align: center;

		.hot_phone_title {
			font-size: 24px;
			line-height: 87px;
		}
	}

	.hot_phone_container {
		display: flex;
		flex-wrap: wrap;
		justify-content: space-around;

		.first_goods {
			height: 380px;
			width: 595px;

			.el-image {
				width: 100%;
				height: 100%;
			}

			.el-card__body {
				padding: 0;
				height: 100%;
			}
		}

		.hot_phone_goods {
			margin-bottom: 10px;
		}
	}
</style>
