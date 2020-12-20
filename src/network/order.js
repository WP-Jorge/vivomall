import {
	request
} from 'network/request.js'

export function getAddressByUsername(username) {
	return request({
		url: 'getAddressByUsername?username=' + username,
		method: 'post'
	})
}
