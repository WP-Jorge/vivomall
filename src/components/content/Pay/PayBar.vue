<template>
	<div class="pay_bar">
		<h3>支付平台</h3>
		<div class="pay_options">
			<!-- div. -->
			<div class="pay_item" v-for="item in payOptionList" :key="item.id" @click="dialogFormVisible = true, clickOption = item">
				<PayItem :option="item"></PayItem>
			</div>
		</div>
		<el-dialog :title="'输入支付密码（' + clickOption.text +'）'" type="" :visible.sync="dialogFormVisible">
			<el-form>
				<el-input placeholder="请输入您的支付密码" v-model="inputPassword" show-password @keyup.enter.native="submit"></el-input>
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
	} from 'network/pay.js'
	import {
		deleteShoppingCartByGoodsNameAndUsername
	} from 'network/pay.js'

	import PayItem from 'components/common/payItem/PayItem.vue'
	export default {
		components: {
			PayItem
		},
		data() {
			return {
				payOptionList: [],
				dialogFormVisible: false,
				inputPassword: '',
				clickOption: {}
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
					const loading = this.$loading({
						lock: true,
						text: '支付中...',
						spinner: 'el-icon-loading',
						background: 'rgba(255, 255, 255, 0.5)'
					})
					setTimeout(() => {
						this.delShoppingCart()
						this.dialogFormVisible = false
						loading.close();
						this.$router.replace('/finished')
					}, 1000)
				}
			},
			cancel() {
				this.dialogFormVisible = false
				this.$message({
					message: '支付取消！',
					type: 'warning',
					center: true
				})
			},
			deleteGoods(goods) {
				deleteShoppingCartByGoodsNameAndUsername(goods.totalName, goods.username).then(res => res)
			},
			delShoppingCart() {
				let orderList = JSON.parse(localStorage.getItem('orderList'))
				if (orderList) {
					this.count = orderList.length
					if (this.timer) {
						clearInterval(this.timer)
					}
					this.timer = setInterval(() => {
						if (this.count > 0) {
							this.count--
							this.deleteGoods(orderList[this.count])
						} else {
							localStorage.removeItem('orderList')
							clearInterval(this.timer)
						}
					}, 100)
				}
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
	.el-loading-spinner {
		top: 34%;

		.el-loading-text {
			font-size: 16px;
		}
	}

	.el-icon-loading:before {
		font-size: 40px;
	}

	.pay_bar {
		margin: 20px 0;
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
