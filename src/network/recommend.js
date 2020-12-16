import { request } from 'network/request.js'

export function getGoodsByGoodIds() {
	return request({
		url: 'getGoodsByGoodIds'
	})
}