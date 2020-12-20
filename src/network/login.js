import { request } from 'network/request.js'

export function getLoginImg() {
	return request({
		url: 'getLoginImg'
	})
}

export function login(user) {
	return request({
		url: 'login?username=' + user.username + '&password=' + user.password,
		method: 'post'
	})
}

export function addShoppingCart(goods) {
	return request({
		url: 'addShoppingCart',
		method: 'post',
		data: goods
	})
}
