<template>
	<div class="carousel">
		<el-carousel trigger="click" height="522px" :interval="5000" :autoplay="true" :initial-index="0" arrow="never">
			<el-carousel-item v-for="item in carousels" :key="item.carouselId">
				<a href="javascript:void(0);">
					<el-image style="width: 100%; height: 100%" :src="item.carouselImg" fit="cover"></el-image>
				</a>
			</el-carousel-item>
		</el-carousel>
	</div>
</template>

<script>
	import {
		getAllCarousels
	} from 'network/carousel.js'

	export default {
		data() {
			return {
				interval: 5000,
				carousels: []
			}
		},
		mounted() {
			this.getAllCarousels()
		},
		methods: {
			getAllCarousels() {
				getAllCarousels().then(res => {
					this.carousels = res.data
				})
			}
		}
	}
</script>

<style lang="scss">
	.el-carousel {
		position: absolute;
		left: 0;
		right: 0;
		min-width: 1200px;
	}
</style>
