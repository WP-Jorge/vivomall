<template>
	<div class="goods_des_imgs">
		<el-image v-for="(img, index) in imgList" :src="img.desImg" fit="contain" :key="index"></el-image>
	</div>
</template>

<script>
	import { getDesImgByGoodsId } from 'network/goodsDes/goodsDesImgs.js'
	export default {
		data() {
			return {
				goodsId: this.$route.query.goodsId,
				imgList: []
			}
		},
		mounted() {
			this.getDesImgByGoodsId();
		},
		methods: {
			getDesImgByGoodsId() {
				getDesImgByGoodsId(this.goodsId).then(res => {
					this.imgList = res.data.slice(1);
				})
			}
		}
	}
</script>

<style lang="scss" scoped>
	.goods_des_imgs {
		min-height: 600px;
		min-width: 1200px;
	}
</style>
