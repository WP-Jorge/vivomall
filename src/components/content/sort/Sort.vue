<template>
	<div class="float_div">
		<div class="sort">
			<div class="sort_container">
				<div class="sort_list">
					<ul>
						<li v-for="sort in sorts" :key="sort.sortId" @mouseenter="saveSortId(sort.sortId), showGoods()" @mouseleave="hiddenGoods">
							<router-link :to="{path: $store.state.routers[sort.sortId], query: {style: sort.sortName}}">{{ sort.sortName }}<span>></span></router-link>
						</li>
					</ul>
				</div>
			</div>
			<div class="temp"></div>
			<SortGoods class="sort_goods" @hiddenGoods="isSortGoodsShow = false" v-show="isSortGoodsShow" :sortId="sortId"></SortGoods>
		</div>
	</div>
</template>

<script>
	import SortGoods from 'components/content/sort/sortGoods/SortGoods.vue'

	import {
		getAllSorts
	} from 'network/sort.js'

	export default {
		components: {
			SortGoods
		},
		data() {
			return {
				sorts: [],
				sortId: null,
				isSortGoodsShow: false,
				timer: null
			}
		},
		mounted() {
			this.getAllSorts()
		},
		methods: {
			getAllSorts() {
				getAllSorts().then(res => {
					this.sorts = res.data
				})
			},
			saveSortId(sortId) {
				this.sortId = sortId
			},
			hiddenGoods(e) {
				try {
					if (e.toElement.className === 'sort' || e.toElement.className !== 'temp') {
						this.isSortGoodsShow = false
					}
				} catch (e) {
					if (e) {
						console.log()
					}
				}
			},
			showGoods() {
				this.isSortGoodsShow = true
			}
		}
	}
</script>

<style lang="scss">
	@import 'assets/sass/base.scss';

	.sort {
		float: left;
		display: flex;
		align-items: center;
		height: 522px;
		z-index: 2;

		.temp {
			height: 482px;
			width: 20px;
		}

		.sort_container {
			display: flex;
			align-items: center;
			margin-left: 80px;
			height: 482px;
			width: 200px;
			background: hsla(0, 0, 100%, .65);

			ul {
				display: flex;
				align-items: center;
				flex-wrap: wrap;

				li:hover {
					background-color: #fff;
				}

				li {
					display: flex;
					align-items: center;
					padding: 0 25px 0 42px;
					width: 200px;
					height: 60px;
					box-sizing: border-box;

					a {
						height: 100%;
						width: 100%;
						line-height: 60px;

						span {
							display: inline-block;
							float: right;
						}
					}
				}
			}
		}
	}
</style>
