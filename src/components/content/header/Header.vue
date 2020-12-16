<template>
	<div class="header">
		<el-row>
			<el-col :span="8" class="left_text">
				<el-col v-for="(text, index) in texts" :key="index"><a href="#">{{ text }}</a></el-col>
			</el-col>
			<el-col :span="9" class="center_text"></el-col>
			<el-col :span="7" class="right_text">
				<el-col>
					<el-col>购物车</el-col>
				</el-col>
				<el-col v-if="!isLogin" class="no_login">
					<el-col>
						<router-link to="/login">登录</router-link>
					</el-col>
					<el-col><a href="#">注册</a></el-col>
				</el-col>
				<el-col v-else class="login">
					<el-col><a href="#">欢迎：{{ username }}</a></el-col>
					<el-col><a href="#">退出登录</a></el-col>
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
				isLogin: false,
				username: '张三'
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
			// line-height: 40px;
			height: 40px;
		}

		.right_text {
			display: flex;
			line-height: 40px;


			.no_login,
			.login {
				display: flex;
			}
		}

		.right_text:last-child {
			padding-right: 80px;
		}

	}
</style>
