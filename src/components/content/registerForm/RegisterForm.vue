<template>
	<div class="register_form">
		<el-image :src="logoImg" fit="fit"></el-image>
		<div class="title">注册VIVO账号</div>
		<el-input class="username" size="large" placeholder="请输入用户名" v-model="user.username" clearable></el-input>
		<el-input class="password" placeholder="请输入密码" v-model="user.password" show-password></el-input>
		<el-input class="password" placeholder="请再次输入密码" v-model="rePassword" show-password></el-input>
		<el-checkbox class="agree" v-model="isAgree">同意<a href="javascript:void(0);">《免责申明》</a></el-checkbox>
		<el-button class="register_btn" @click="addUser" :disabled="!isAgree">注册VIVO账号</el-button>
		<el-button class="login_btn" type="primary" @click="toLogin">登录</el-button>
		<p class="tips">注册后您将开启VIVO商城的下订单、购买、等功能，抓紧时间注册吧。</p>
	</div>
</template>

<script>
	import {
		addUser
	} from 'network/register.js'
	
	export default {
		props: {
			logoImg: {
				type: String,
				default: 'https://accountstatic.vivo.com.cn/accountstatic.vivo.com.cn/static/img/logo.1f42884.png.webp'
			}
		},
		data() {
			return {
				rePassword: '',
				isAgree: false,
				user: {
					username: '',
					password: ''
				}
			}
		},
		methods: {
			addUser() {
				if (this.checkRegister()) {
					addUser(this.user).then(res => {
						console.log(res);
						if (res && res.status === 200 && res.data.status === 2) {
							this.$message({
								message: res.data.msg + '正在为您跳转至登陆页面！',
								center: true,
								type: 'success'
							});
							this.$router.push('/login').catch(err => err);
						} else {
							this.$message({
								message: res.data.msg,
								center: true,
								type: 'warning'
							});
						}
					})
				}
			},
			checkRegister() {
				if (this.user.username.length < 3) {
					this.$message({
						message: '用户名长度必须大于等于3位！',
						center: true,
						type: 'error'
					});
					return false;
				} else if (this.user.password.length < 6) {
					this.$message({
						message: '密码必须大于等于6位！',
						center: true,
						type: 'error'
					});
					return false;
				} else if (this.rePassword !== this.user.password) {
					this.$message({
						message: '两次输入的密码不一致，请重新输入！',
						center: true,
						type: 'error'
					});
					return false;
				} else {
					return true;
				}
			},
			toLogin() {
				this.$router.push('/login').catch(err => err);
			}
		}
	}
</script>

<style lang="scss">
	.register_form {
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
			margin-top: 20px;
		}
		
		.agree {
			margin: 20px;
			margin-left: auto;
			
			a {
				color: #4470ff;
			}
		}
		
		.register_btn {
			display: block;
			width: 100%;
			height: 50px;
		}
		.login_btn {
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
