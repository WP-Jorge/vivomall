<template>
	<div class="header">
		<el-row>
			<el-col :span="8" class="left_text">
				<el-col v-for="(text, index) in texts" :key="index"><a href="#">{{ text }}</a></el-col>
			</el-col>
			<el-col :span="9" class="center_text"></el-col>
			<el-col :span="7" class="right_text">
				<el-col class="car">
					<el-col><router-link to="/shoppingCart">购物车</router-link></el-col>
				</el-col>
				<el-col v-if="$store.state.user === null" class="no_login">
					<el-col>
						<router-link to="/login">登录</router-link>
					</el-col>
					<el-col><router-link to="/register">注册</router-link></el-col>
				</el-col>
				<el-col v-else class="login">
					<el-col class="welcom"><a href="javascript:void(0);">欢迎：{{ $store.state.user.username }}</a></el-col>
					<el-col><a href="javascript:void(0);" @click="logout">退出登录</a></el-col>
				</el-col>
			</el-col>
		</el-row>
	</div>
</template>

<script>
	export default {
		data() {
			return {
				texts: ['品牌', 'OriginOS', '体验店', '企业业务', '社区'],
			}
		},
		methods: {
			logout() {
				this.$store.commit('delUser');
				this.$message({
					message: '您已退出登录！',
					type: 'warning',
					center: true
				});
				localStorage.clear();
				if (this.$route.path === '/shoppingCart') {
					location.reload()
				}
			}
		}
	}
</script>

<style lang="scss" scoped>
	@import 'assets/sass/base.scss';

	a {
		color: $gray_color;
	}

	.header {
		height: 40px;
		min-width: 1200px;
		font-size: 12px;
		text-align: center;
		color: $gray_color;
		background-color: $black_color;

		.left_text {
			display: flex;
			line-height: 40px;

			.el-col:nth-child(1) {
				padding-left: 80px;
			}
		}

		.center_text {
			height: 40px;
		}

		.right_text {
			display: flex;
			line-height: 40px;

			.car {
				flex: 1;
				text-align: right;
				padding-right: 10px;
			}
			
			.no_login,
			.login {
				display: flex;
				flex: 2;
				
				.welcom {
					min-width: 100px;
				}
			}
		}

		.right_text:last-child {
			padding-right: 80px;
		}

	}
</style>
