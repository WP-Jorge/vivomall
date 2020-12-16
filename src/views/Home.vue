<template>
	<div class="home">
		<Carousel></Carousel>
		<Sort class="sort"></Sort>
		<div class="home_goods">
			<Recommend></Recommend>
			<HotPhone></HotPhone>
			<HotAccessory></HotAccessory>
		</div>
	</div>
</template>

<script>
	import Carousel from 'components/content/carousel/Carousel.vue'
	import Sort from 'components/content/sort/Sort.vue'
	import Recommend from 'components/content/recommend/Recommend.vue'
	import HotPhone from 'components/content/hot/HotPhone.vue'
	import HotAccessory from 'components/content/hot/HotAccessory.vue'
	
	export default {
		data() {
			return {
				
			}
		},
		components: {
			Carousel,
			Sort,
			Recommend,
			HotPhone,
			HotAccessory
		}
	}
</script>

<style lang="scss" scoped>
	@import 'assets/sass/base.scss';
	.home {
		.home_goods {
			width: 1200px;
			margin: 0 auto;
			padding-top: 523px;
		}
	}
</style>
