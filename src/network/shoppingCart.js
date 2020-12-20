import {
	request
} from 'network/request.js'

export function getShoppingCartByUsername(username) {
	return request({
		url: 'getShoppingCartByUsername?username=' + username,
		method: 'post'
	})
}

export function updateShoppingCartNumByGoodsNameAndUsername(totalName, username, num) {
	return request({
		url: 'updateShoppingCartNumByGoodsNameAndUsername',
		method: 'post',
		data: {
			totalName: totalName,
			username: username,
			num: num
		}
	})
}

export function deleteShoppingCartByGoodsNameAndUsername(totalName, username) {
	return request({
		url: 'deleteShoppingCartByGoodsNameAndUsername',
		method: 'post',
		data: {
			totalName: totalName,
			username: username
		}
	})
}
