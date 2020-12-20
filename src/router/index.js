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
const Finish = () => import('views/Finished')
const NotFound = () => import('views/NotFound')

const GoodsDesDes = () => import('components/content/goodsDes/goodsDesSelectItems/GoodsDesDes')
const GoodsDesImgs = () => import('components/content/goodsDes/goodsDesSelectItems/GoodsDesImgs')
const GoodsDesComments = () => import('components/content/goodsDes/goodsDesSelectItems/GoodsDesComments')

// 解决高版本router跳转报错问题
const originalPush = VueRouter.prototype.push
VueRouter.prototype.push = function push(location, onResolve, onReject) {
	if (onResolve || onReject) return originalPush.call(this, location, onResolve, onReject)
	return originalPush.call(this, location).catch(err => err)
}

const routes = [{
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
		path: '/finished',
		component: Finish
	},
	{
		path: '/goodsDes',
		component: GoodsDes,
		redirect: '/goodsDes/des',
		children: [{
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
	},
	{
		path: '/*',
		component: NotFound
	}
]

const router = new VueRouter({
	routes
})

router.beforeEach((to, from, next) => {
	// console.log(from)
	if ((to.path === '/order' && (from.path !== '/shoppingCart') && (from.query.status)) || (to.path === '/pay' && from.path !== '/order') || (to
			.path === '/finished' && from.path !== '/pay')) {
		alert('您无权访问该页面！')
		next('/home')
	} else {
		next()
	}
})

export default router
