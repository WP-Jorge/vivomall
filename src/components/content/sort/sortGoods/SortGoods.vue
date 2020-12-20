<template>
	<div class="sort_goods" @mouseleave="hiddenGoods">
		<div class="goods">
			<router-link :to="{path: '/goodsDes', query: {goodsId: goods.goodsId}}" v-for="goods in showGoods" :key="goods.goodsId">
				<GoodsSimpleItem class="simpGoods" src="javascript:void(0);" >
					<el-image slot="img" :src="goods.goodsImg" alt="图片"/>
					<p slot="imgName">{{ goods.goodsName }}</p>
				</GoodsSimpleItem>
			</router-link>
		</div>
	</div>
</template>

<script>
	import { getGoodsBySortId } from 'network/sortGoods.js'
	
	import GoodsSimpleItem from 'components/common/goodsSimpleItem/GoodsSimpleItem.vue'
	
	export default {
		props: {
			sortId: {
				type: Number,
				default: -1
			}
		},
		components: {
			GoodsSimpleItem
		},
		data() {
			return {
				showGoods: [],
				goodName: 'vivo Y52s 8GB+128GB 莫奈彩',
				goodImg: 'https://shopstatic.vivo.com.cn/vivoshop/commodity/86/10006086_1606122048226_750x750.png.webp',
				isGoodsShow: false
			}
		},
		methods: {
			getGoodsBySortId() {
				console.log(this.sortId);
				getGoodsBySortId(this.sortId).then(res => {
					this.showGoods = res.data;
					console.log(res.data);
				})
			},
			hiddenGoods(e) {
				try {
					if (e.toElement.className === 'sort' || e.toElement.className === 'el-image__inner') {
						this.$emit('hiddenGoods');
					}
				} catch (e) {
					if (e) {
						console.log();
					}
				}
			}
		},
		watch: {
			sortId() {
				getGoodsBySortId(this.sortId).then(res => {
					this.showGoods = res.data;
				})
			}
		}
	}
</script>

<style lang="scss" scoped>
	.sort_goods {
		// margin-left: 20px;
		height: 482px;
		width: 786px;
		background-color: #fff;
		// margin: 10px;
		
		.goods {
			display: flex;
			flex-wrap: wrap;
			justify-content: space-around;
			box-sizing: border-box;
			width: 786px;
			height: 100%;
			padding: 10px;
			
			.simpGoods {
				display: flex;
				justify-content: space-around;
				
				.el-image {
					width: 20%;
				}
				
				font-size: 14px;
			}
		}
	}
</style>
