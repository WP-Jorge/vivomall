import { request } from 'network/request.js'

export function getLoginImg() {
	return request({
		url: 'getLoginImg'
	})
}