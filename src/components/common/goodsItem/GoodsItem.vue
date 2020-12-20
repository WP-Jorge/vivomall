<template>
	<div class="goods_item" :style="{ 'height': height, 'width': width }">
		<el-card :shadow="shadow">
			<div class="des_box">
				<el-image :lazy="lazy" :src="goods.goodsImg" alt="图片"/>
				<span class="title">{{ goods.goodsName }}</span>
				<p class="des">{{ goods.goodsDes }}</p>
				<p class="all_price"><span class="now_price">{{ goods.goodsPrice }}</span> <del class="old_price" v-show="isShowOldPrice">{{ goods.goodsOldPrice }}</del></p>
			</div>
		</el-card>
	</div>
</template>

<script>
	export default {
		props: {
			goods: {
				type: Object,
				default() {
					return {}
				}
			},
			isShowOldPrice: {
				type: Boolean,
				default: false
			},
			height: {
				type: String,
				default: '380px'
			},
			width: {
				type: String,
				default: '293px'
			},
			shadow: {
				type: String,
				default: 'always'
			},
			lazy: {
				type: Boolean,
				default: false
			}
		}
	}
</script>

<style lang="scss">
	
	.goods_item {
		.el-card {
			height: 100%;
			
			.el-image {
				display: flex;
				justify-items: center;
			}
			
			.des_box {
				display: flex;
				flex-direction: column;
				align-content: center;
				
				.title {
					font-size: 16px;
					padding: 15px 0;
					text-align: center;
				}
				
				.des {
					padding: 15px 0;
					font-size: 12px;
					text-align: center;
					white-space: nowrap;
					overflow: hidden;
					text-overflow: ellipsis;
				}
				
				.all_price {
					text-align: center;	
					
					.now_price::before {
						content: "￥";
					}
					
					.now_price {
						font-size: 18px;
						color: red;
					}
					
					.old_price::before {
						content: "￥";
					}
					
					.old_price {
						padding: 15px 0;
						font-size: 14px;
						color: #aaaaaa;
					}
				}
			}
			
			img {
				margin: 0 auto;
				padding-top: 20px;
				height: 173px;
				width: 173px;
			}
		}
	}
</style>
