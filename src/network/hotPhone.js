import {
	request
} from 'network/request.js'

export function getHotPhone() {
	return request({
		url: 'getHotPhone'
	})
}

export function getFrstGoods() {
	return request({
		url: 'getFrstGoods'
	})
}
