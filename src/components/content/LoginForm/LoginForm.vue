<template>
	<div class="login_form">
		<el-image :src="logoImg" fit="fit"></el-image>
		<div class="title">账号密码登录</div>
		<el-input class="username" size="large" placeholder="请输入用户名" v-model="username" clearable></el-input>
		<el-input class="password" placeholder="请输入密码" v-model="password" show-password></el-input>
		<el-checkbox class="rememberme" v-model="isRememberMe">两周内免登录</el-checkbox>
		<el-button class="login_btn" type="primary">登录</el-button>
		<el-button class="register_btn">注册VIVO账号</el-button>
		<p class="tips">如果您未注册过VIVO账号，则有些功能您可能无法使用，点击注册VIVO账号，体验全新功能。</p>
	</div>
</template>

<script>
	export default {
		props: {
			logoImg: {
				type: String,
				default: 'https://accountstatic.vivo.com.cn/accountstatic.vivo.com.cn/static/img/logo.1f42884.png.webp'
			}
		},
		data() {
			return {
				username: '',
				password: '',
				isRememberMe: false
			}
		}
	}
</script>

<style lang="scss">
	.login_form {
		width: 420px;
		height: 650px;
		padding: 30px;
		box-sizing: border-box;
		
		.el-input__inner {
			height: 50px;
		}

		.el-image {
			display: block;
			margin: 0 auto;
			width: 160px;
			height: 42px;

		}

		.title {
			margin-top: 15px;
			text-align: center;
			font-size: 20px;
		}
		
		.username {
			margin-top: 45px;
		}
		
		.password {
			margin-top: 35px;
		}
		
		.rememberme {
			margin: 20px;
			margin-left: auto;
		}
		
		.login_btn {
			display: block;
			width: 100%;
			height: 50px;
		}
		.register_btn {
			display: block;
			margin-left: 0;
			margin-top: 20px;
			width: 100%;
			height: 50px;
		}
		
		.tips {
			margin-top: 15px;
			font-size: 13px;
			line-height: 25px;
			color: #999;
		}
	}
</style>
