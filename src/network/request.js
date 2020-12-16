import axios from 'axios'

export function request(config) {
	// 1.创建axios实例
	const instance = axios.create({
		baseURL: process.env.VUE_APP_BASE_URL,
		timeout: 5000
	})
	
	// 2.axios拦截器
	// 2.1.instance.interceptors.request拦截请求、请求拦截的作用
	instance.interceptors.request.use(config => {
		// console.log(config)
		// 2.1.1.处理config中不符合服务器需求的信息
		// 2.1.2.比如每次在发送请求时都在页面上显示一个请求的图标，结束后隐藏图标
		// 2.1.3.某些网络请求(比如登录时有时必须携带一些信息(token))
		
		// 拦截后需要把被拦截的config重新返回出去，不然外面用不了
		return config
	},err => {
		console.log(err)
	})
	
	// 2.2.响应拦截 instance.interceptors.response
	// 在接收到响应后进行一些操作，例如在服务器返回登录状态失效，需要重新登录的时候，跳转到登录页
	instance.interceptors.response.use(res => {
		// console.log(res)
		return res
	}, err => {
		console.log(err)
	})
	
	// 3.发送真正的网络请求
	return instance(config)
}

