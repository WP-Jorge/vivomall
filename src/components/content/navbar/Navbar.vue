<template>
	<div class="navbar">
		<el-row>
			<el-col :span="4" class="logo">
				<router-link to="/home" title="主页">
					<div class="log_img">
						<el-image :src="LogoImg"></el-image>
					</div>
				</router-link>
			</el-col>
			<el-col :span="14" class="styles">
				<ul>
					<li v-for="(style, index) in styles" :key="index">
						<router-link :to="{path: $store.state.routers[index], query: {style: style.styleName}}">{{ style.styleName }}</router-link>
						<!-- <a href="javascript:void(0)" @click="$router.push({path: $store.state.routers[index], query: {style: style.styleName}}), reload()">{{ style.styleName }}</a> -->
					</li>
				</ul>
			</el-col>
			<el-col :span="6" class="search">
				<el-autocomplete @keyup.enter.native="search" min="100" suffix-icon="el-icon-search" popper-class="my-autocomplete"
				v-model="keyword" :fetch-suggestions="querySearch" :placeholder="goods[0].goodsSimpleName" @select="handleSelect">
					<template slot-scope="{ item }">
						<div class="name">{{ item.goodsName }}</div>
					</template>
				</el-autocomplete>
			</el-col>
		</el-row>
	</div>
</template>

<script>
	import {
		getLogo,
		getAllStyles,
		getAllGoods
	} from 'network/navbar.js'

	export default {
		inject: ['reload'],
		data() {
			return {
				LogoImg: '',
				styles: [],
				keyword: null,
				goods: [{
					goodSimpleName: ''
				}]
			}
		},
		created() {
			this.reload()
			this.getLogoImg()
			this.getAllStyles()
			this.getAllGoods()
		},
		methods: {
			getLogoImg() {
				getLogo().then(res => {
					this.LogoImg = res.data.homeLogoImg;
				})
			},
			getAllStyles() {
				getAllStyles().then(res => {
					this.styles = res.data
				})
			},
			getAllGoods() {
				getAllGoods().then(res => {
					this.goods = res.data
				})
			},
			querySearch(queryString, callback) {
				var goods = this.goods
				var results = queryString ? goods.filter(this.createFilter(queryString)) : goods
				callback(results)
			},
			createFilter(queryString) {
				return (goods) => {
					return (goods.goodsName.toLowerCase().indexOf(queryString.toLowerCase()) !== -1)
				}
			},
			handleSelect(item) {
				if (this.$route.query.goodsId != item.goodsId) {
					this.$router.push({
						path: '/goodsDes',
						query: {
							goodsId: item.goodsId
						}
					}).catch(err => err)
					this.reload()
				}
			},
			search() {
				if (this.keyword === '') {
					this.$router.push({
						path: '/goodsList/search',
						query: {
							style: '商品搜索',
							keyword: null
						}
					}).catch(err => err)
				} else {
					this.$router.push({
						path: '/goodsList/search',
						query: {
							style: '商品搜索',
							keyword: this.keyword
						}
					}).catch(err => err)
				}
				this.reload()
			}
		},
	}
</script>

<style lang="scss">
	@import 'assets/sass/base.scss';

	.my-autocomplete {
		li {
			line-height: normal;
			padding: 7px;

			.name {
				text-overflow: ellipsis;
				overflow: hidden;
			}

			.addr {
				font-size: 12px;
				color: #b4b4b4;
			}

			.highlighted .addr {
				color: #ddd;
			}
		}
	}

	.navbar {
		height: 85px;
		background-color: #f7f7f7;

		.el-row {
			display: flex;
			align-items: center;

			.logo {
				display: flex;
				align-items: center;
				height: 85px;
				min-width: 185px;

				.log_img {
					margin-left: 80px;
					height: 35px;
					width: 105px;
				}
			}

			.styles {
				display: flex;
				margin-left: 10px;
				align-items: center;
				min-width: 750px;
				color: $black_color;

				ul {
					display: flex;
					width: 100%;

					li {
						flex: 1;

						a:hover {
							color: #476fff;
							transition: all 0.3s ease;
						}
					}
				}
			}

			.search {
				margin-left: 10px;
			}
		}

		.el-input__inner {
			border-radius: 20px !important;
			min-width: 100px;
		}
	}
</style>
