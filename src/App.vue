<template>
	<div id="app">
		<Header/>
		<Navbar/>
		<router-view v-if="isRouterAlive"/>
		<Footer/>
	</div>
</template>

<script>
	import Header from 'components/content/header/Header.vue'
	import Navbar from 'components/content/navbar/Navbar.vue'
	import Footer from 'components/content/footer/Footer.vue'
	
	export default {
		components: {
			Header,
			Navbar,
			Footer,
		},
		data() {
			return {
				isRouterAlive: true
			}
		},
		provide() {
			return {
				reload: this.reload
			}
		},
		methods: {
			reload() {
				this.isRouterAlive = false
				this.$nextTick(() => {
					this.isRouterAlive = true
				})
			}
		}
	}
</script>

<style lang="scss">
	@import 'assets/sass/base.scss';

	#app {
		/*保证footer是相对于container位置绝对定位*/
		position: relative;
		min-height: 100%;
		/*设置padding-bottom值大于等于footer的height值，以保证main的内容能够全部显示出来而不被footer遮盖；*/
		padding-bottom: 50px;
		box-sizing: border-box;
	}
</style>
