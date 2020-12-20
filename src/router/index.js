import Vue from 'vue'
import VueRouter from 'vue-router'
Vue.use(VueRouter)

const Home = () => import('views/Home')
const GoodsList = () => import('views/GoodsList')
const Login = () => import('views/Login')
const Register = () => import('views/Register')
const GoodsDes = () => import('views/GoodsDes')
const ShoppingCart = () => import('views/ShoppingCart')
const Order = () => import('views/Order')
const Pay = () => import('views/Pay')

const GoodsDesDes = () => import('components/content/goodsDes/goodsDesSelectItems/GoodsDesDes')
const GoodsDesImgs = () => import('components/content/goodsDes/goodsDesSelectItems/GoodsDesImgs')
const GoodsDesComments = () => import('components/content/goodsDes/goodsDesSelectItems/GoodsDesComments')

const routes = [
	{
		path: '',
		redirect: '/home'
	},
	{
		path: '/home',
		component: Home
	},
	{
		path: '/goodsList/*',
		component: GoodsList
	},
	{
		path: '/login',
		component: Login
	},
	{
		path: '/register',
		component: Register
	},
	{
		path: '/shoppingCart',
		component: ShoppingCart
	},
	{
		path: '/order',
		component: Order
	},
	{
		path: '/pay',
		component: Pay
	},
	{
		path: '/goodsDes',
		component: GoodsDes,
		redirect: '/goodsDes/des',
		children: [
			{
				path: 'des',
				component: GoodsDesDes
			},
			{
				path: 'imgs',
				component: GoodsDesImgs
			},
			{
				path: 'comments',
				component: GoodsDesComments
			}
		]
	}
]

const router = new VueRouter({
  routes
})

export default router
