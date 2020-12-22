<template>
	<div class="login_form">
		<el-image :src="logoImg" fit="fit"></el-image>
		<div class="title">账号密码登录</div>
		<el-input class="username" size="large" placeholder="请输入用户名" v-model="user.username" clearable></el-input>
		<el-input class="password" placeholder="请输入密码" v-model="user.password" show-password></el-input>
		<el-checkbox class="rememberme" v-model="isRememberMe">两周内免登录</el-checkbox>
		<el-button class="login_btn" type="primary" @click="login">登录</el-button>
		<el-button class="register_btn" @click="toRegister">注册VIVO账号</el-button>
		<p class="tips">如果您未注册过VIVO账号，则有些功能您可能无法使用，点击注册VIVO账号，体验全新功能。</p>
	</div>
</template>

<script>
	import {
		login,
		addShoppingCart
	} from 'network/login.js'
	
	export default {
		props: {
			logoImg: {
				type: String,
				default: 'https://accountstatic.vivo.com.cn/accountstatic.vivo.com.cn/static/img/logo.1f42884.png.webp'
			}
		},
		data() {
			return {
				isRememberMe: false,
				user: {
					username: '',
					password: ''
				},
				count: 0,
				timer: null
			}
		},
		methods: {
			toRegister() {
				this.$router.push('/register').catch(err => err)
			},
			login() {
				if (this.loginCheck()) {
					login(this.user).then(res => {
						if (res && res.status === 200 && res.data.status === 1) {
							this.$message({
								message: res.data.msg + '正在为您跳转至首页！',
								center: true,
								type: 'success'
							});
							this.$store.commit('setUser', this.user)
							this.addShoppingCart()
							this.$router.push('/home').catch(err => err)
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
			loginCheck() {
				if (this.user.username === '' || this.user.username === null) {
					this.$message({
						message: '用户名不能为空！',
						center: true,
						type: 'error'
					});
					return false;
				} else if (this.user.password === '' || this.user.password === null) {
					this.$message({
						message: '密码不能为空！',
						center: true,
						type: 'error'
					});
					return false
				} else {
					return true
				}
			},
			addShoppingCart() {
				let goodsList = JSON.parse(localStorage.getItem('goodsList'))
				if (goodsList) {
					this.count = goodsList.length
					if (this.timer) {
						clearInterval(this.timer)
					}
					this.timer = setInterval(() => {
						if (this.count > 0) {
							this.count--
							goodsList[this.count].username = this.user.username
							addShoppingCart(goodsList[this.count]).then(res => res)
						} else {
							localStorage.clear('goodsList')
							clearInterval(this.timer)
						}
					}, 100)
				}
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
