<template>
	<div class="good_list">
		<TitleBar :title="$route.query.style"></TitleBar>
		<div class="goods_container">
			<div class="goods" v-for="goods in goodsList" :key="goods.goodsId">
				<router-link :to="{path: '/goodsDes', query: {goodsId: goods.goodsId}}"><GoodsItem :goods="goods" shadow="hover" :lazy="true"></GoodsItem></router-link>
			</div>
		</div>
		<div class="page">
			<el-pagination background layout="prev, pager, next" :page-count="totalPage" @current-change="pageClick" hide-on-single-page @prev-click="prePage" @next-click="nextPage"></el-pagination>
		</div>
	</div>
</template>

<script>
	import { 
		getGoodsByPath,
		getGoodsBySearch
	} from 'network/goodsList.js'
	
	import TitleBar from 'components/content/titleBar/TitleBar.vue'
	import GoodsItem from 'components/common/goodsItem/GoodsItem.vue'
	
	export default {
		components: {
			TitleBar,
			GoodsItem
		},
		data() {
			return {
				title: '商品商城',
				goodsList: [],
				pageNum: 1,
				pageSize: 16,
				totalPage: 1
			}
		},
		beforeMount() {
			this.getGoods();
		},
		methods: {
			getGoods() {
				if (this.$route.params.pathMatch === 'search') {
					getGoodsBySearch(this.$route.query.keyword, this.pageNum, this.pageSize).then(res => {
						this.goodsList = res.data.list;
						this.totalPage = res.data.navigatepageNums.length;
						if (this.goodsList.length === 0) {
							this.$message({
								message: '暂无产品数据！',
								type: 'warning',
								center: true
							})
						}
					})
				} else {
					getGoodsByPath(this.$route.params.pathMatch, this.pageNum, this.pageSize).then(res => {
						this.goodsList = res.data.list;
						this.totalPage = res.data.navigatepageNums.length;
						if (this.goodsList.length === 0) {
							this.$message({
								message: '暂无产品数据！',
								type: 'warning',
								center: true
							})
						}
					})
				}
			},
			pageClick(pageNum) {
				this.pageNum = pageNum;
				this.getGoods();
			},
			prePage() {
				this.pageNum--;
			},
			nextPage() {
				this.pageNum++;
			}
		},
		watch: {
			$route() {
				this.getGoods();
			},
			nowPage() {
				this.getGoods();
			}
		}
	}
</script>

<style lang="scss" scoped>
	.good_list {
		margin: 0 auto;
		margin-top: 30px;
		width: 1200px;
		
		.page {
			text-align: center;
			width: 450px;
			margin-top: 40px;
			margin-bottom: 40px;
			margin-left: auto;
		}
		
		.goods_container {
			display: flex;
			flex-wrap: wrap;
			// justify-content: space-around;
			justify-content: flex-start;
			
			.goods {
				margin: 10px 9px 10px 0;
			}
			.goods:nth-child(4n){
				margin-right: 0;
			}
		}
	}
	
</style>
