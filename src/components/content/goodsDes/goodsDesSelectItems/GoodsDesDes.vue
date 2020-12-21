<template>
	<div class="goods_des_des">
		<el-image :src="des.desImg" fit="contain"></el-image>
	</div>
</template>

<script>
	import {
		getDesImgByGoodsId
	} from 'network/goodsDes/goodsDesDes.js'

	export default {
		data() {
			return {
				goodsId: this.$route.query.goodsId,
				des: 'https://shopstatic.vivo.com.cn/vivoshop/commodity/20201204/20201204171317438615_original.jpg.webp'
			}
		},
		mounted() {
			this.getDesImgByGoodsId()
		},
		beforeRouteUpdate() {
			this.getDesImgByGoodsId()
		},
		methods: {
			getDesImgByGoodsId() {
				getDesImgByGoodsId(this.goodsId).then(res => {
					this.des = res.data[0]
				})
			}
		}
	}
</script>

<style lang="scss" scoped>
	.goods_des_des {
		min-height: 600px;

		.el-image {
			min-width: 1200px;
		}
	}
</style>
