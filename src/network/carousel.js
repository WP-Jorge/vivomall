import {
	request
} from 'network/request.js'

export function getAllCarousels() {
	return request({
		url: 'getAllCarousels'
	})
}
