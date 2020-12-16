<template>
	<div class="login">
		<div class="login_container" :style="'background-image:'+'url('+loginImg+')'">
			<div class="form">
				<LoginForm></LoginForm>
			</div>
		</div>
	</div>
</template>

<script>
	import {
		getLoginImg
	} from 'network/login.js'
	
	import LoginForm from 'components/content/LoginForm/LoginForm.vue'

	export default {
		components: {
			LoginForm
		},
		data() {
			return {
				loginImg: ''
			}
		},
		mounted() {
			this.getLoginImg()
		},
		methods: {
			getLoginImg() {
				getLoginImg().then(res => {
					this.loginImg = res.data.loginImg;
				})
			}
		}
	}
</script>

<style lang="scss" scoped>
	.login {
		height: 780px;
		background-color: #e1ecfe;
		
		.login_container {
			margin: 0 auto;
			height: 780px;
			width: 1200px;
			
			.form {
				float: right;
				margin-top: 40px;
				background-color: #ffffff;
			}
		}
	}
</style>
