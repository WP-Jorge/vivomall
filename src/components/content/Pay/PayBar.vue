<template>
	<div class="pay_bar">
		<h3>支付平台</h3>
		<div class="pay_options">
			<!-- div. --> 
			<div class="pay_item"  v-for="item in payOptionList" :key="item.id" @click="dialogFormVisible = true">
				<PayItem :option="item"></PayItem>
			</div>
		</div>
		<el-dialog title="输入支付密码" type="" :visible.sync="dialogFormVisible">
			<el-form>
				<el-input placeholder="请输入您的支付密码" v-model="inputPassword" show-password></el-input>
			</el-form>
			<div slot="footer" class="dialog-footer">
				<el-button @click="cancel">取 消</el-button>
				<el-button type="primary" @click="submit">确 定</el-button>
			</div>
		</el-dialog>
	</div>
</template>

<script>
	import {
		getAllPayOptions
	} from 'network/payOption.js'
	import PayItem from 'components/common/payItem/PayItem.vue'
	export default {
		components: {
			PayItem
		},
		data() {
			return {
				payOptionList: [],
				dialogFormVisible: false,
				inputPassword: ''
			}
		},
		mounted() {
			this.getAllPayOptions()
		},
		methods: {
			getAllPayOptions() {
				getAllPayOptions().then(res => {
					this.payOptionList = res.data
				})
			},
			passwordCheck() {
				if (this.inputPassword === '') {
					this.$message({
						message: '密码不能为空！',
						type: 'error',
						center: true
					})
					return false
				} else if (this.inputPassword !== this.password) {
					this.$message({
						message: '密码错误！',
						type: 'error',
						center: true
					})
					return false
				} else {
					return true
				}
			},
			submit() {
				if (this.passwordCheck()) {
					this.$message({
						message: '支付成功！',
						type: 'success',
						center: true
					})
					this.dialogFormVisible = false
				}
			},
			cancel() {
				this.dialogFormVisible = false
				this.$message({
					message: '支付取消！',
					type: 'warning',
					center: true
				})
			}
		},
		computed: {
			password() {
				return this.$store.state.user.password
			}
		}
	}
</script>

<style lang="scss">
	.pay_bar {
		padding: 36px;
		height: 150px;
		background-color: #FFFFFF;

		.pay_options {
			display: flex;

			.pay_item {
				margin: 10px 10px 10px 0;
			}
		}
	}
	
	.el-dialog {
		// min-width: 400px;
		width: 400px;
	}
</style>
