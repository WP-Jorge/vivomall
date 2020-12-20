import {
	request
} from 'network/request.js'

export function getGoodsBySortId(sortId) {
	return request({
		url: 'getGoodsBySortId?sortId=' + sortId
	})
}
