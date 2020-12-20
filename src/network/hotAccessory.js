import {
	request
} from 'network/request.js'

export function getHotAccessory() {
	return request({
		url: 'getHotAccessory'
	})
}
