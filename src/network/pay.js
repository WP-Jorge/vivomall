import {
	request
} from 'network/request.js'

export function getAllPayOptions() {
	return request({
		url: 'getAllPayOptions'
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
