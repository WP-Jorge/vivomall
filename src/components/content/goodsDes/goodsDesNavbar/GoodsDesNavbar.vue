<template>
	<div class="goods_des_navbar">
		<div class="tabs">
			<ul>
				<li v-for="(nav, index) in navList" :key="index">
					<router-link :to="{path: $store.state.desRouters[index], query: {goodsId: goodsId}}"><span :class="{active: index === clickIndex}" @click="clickIndex = index">{{ nav }}</span></router-link>
				</li>
			</ul>
		</div>
	</div>
</template>

<script>
	export default {
		props: {
			goodsId: {
				type: Number,
				default: -1
			}
		},
		data() {
			return {
				navList: ['规格参数', '详细信息', '评价'],
				clickIndex: 0
			}
		},
		mounted() {
			this.initClickIndex()
		},
		beforeRouteEnter() {
			this.initClickIndex()
		},
		methods: {
			initClickIndex() {
				if (this.$route.path === '/goodsDes/des') {
					this.clickIndex = 0
				} else if (this.$route.path === '/goodsDes/imgs') {
					this.clickIndex = 1
				} else if (this.$route.path === '/goodsDes/comments') {
					this.clickIndex = 2
				} else {
					this.clickIndex = 0
				}
			}
		}
	}
</script>

<style lang="scss" scoped>
	.active {
		color: #000 !important;
		border-bottom: 1px solid #000;
	}

	.goods_des_navbar {
		border-top: 1px solid #e0e0e0;
		background-color: #fafafa;
		height: 80px;

		.tabs {
			ul {
				display: flex;
				width: 470px;
				height: 80px;

				li {
					flex: 1;
					text-align: center;
					line-height: 80px;

					span {
						color: #999;
						padding: 10px;
						cursor: pointer;
					}
				}
			}
		}
	}
</style>
