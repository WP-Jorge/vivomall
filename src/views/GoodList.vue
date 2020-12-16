<template>
	<div class="good_list">
		<TitleBar :title="$route.query.style"></TitleBar>
		<div class="goods_container">
			<div class="goods" v-for="goods in goodsList" :key="goods.goodId">
				<a href="#"><GoodsItem :goods="goods" shadow="hover" :lazy="true"></GoodsItem></a>
			</div>
		</div>
		<div class="page">
			<el-pagination background layout="prev, pager, next" :page-count="totalPage" @current-change="pageClick" hide-on-single-page @prev-click="prePage" @next-click="nextPage"></el-pagination>
		</div>
	</div>
</template>

<script>
	import { 
		getGoodsByPath
	} from 'network/goodList.js'
	
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
			this.getGoodsByPath(this.pageNum, this.pageSize);
			console.log(this.$route);
		},
		methods: {
			getGoodsByPath(pageNum, pageSize) {
				getGoodsByPath(this.$route.params.pathMatch, pageNum, pageSize).then(res => {
					this.goodsList = res.data.list;
					this.totalPage = res.data.navigatepageNums.length;
				})
			},
			pageClick(pageNum) {
				this.getGoodsByPath(pageNum, this.pageSize);
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
				this.getGoodsByPath(this.pageNum, this.pageSize);
			},
			nowPage() {
				this.getGoodsByPath(this.pageNum, this.pageSize);
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
			justify-content: space-around;
			
			.goods {
				margin: 10px 0;
			}
		}
	}
	
</style>
