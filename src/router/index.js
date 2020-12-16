import Vue from 'vue'
import VueRouter from 'vue-router'
Vue.use(VueRouter)

const Home = () => import('views/Home')
const GoodList = () => import('views/GoodList')
const Login = () => import('views/Login')

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
		path: '/goodList/*',
		component: GoodList
	},
	{
		path: '/login',
		component: Login
	}
]

const router = new VueRouter({
  routes
})

export default router
