<template>
	<div class="register">
		<div class="register_container" :style="'background-image:'+'url('+registerImg+')'">
			<div class="form">
				<RegisterForm></RegisterForm>
			</div>
		</div>
	</div>
</template>

<script>
	import {
		getRegisterImg
	} from 'network/register.js'

	import RegisterForm from 'components/content/registerForm/RegisterForm.vue'

	export default {
		components: {
			RegisterForm
		},
		data() {
			return {
				registerImg: ''
			}
		},
		mounted() {
			this.getRegisterImg()
		},
		methods: {
			getRegisterImg() {
				getRegisterImg().then(res => {
					this.registerImg = res.data.loginImg
				})
			}
		}
	}
</script>

<style lang="scss" scoped>
	.register {
		height: 780px;
		background-color: #e1ecfe;

		.register_container {
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
