import { request } from 'network/request.js'

export function getLogo() {
	return request({
		url: 'getLogo'
	})
}

export function getAllStyles() {
	return request({
		url: 'getAllStyles'
	})
}

export function getAllGoods() {
	return request({
		url: 'getAllGoods'
	})
}