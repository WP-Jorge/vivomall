import { request } from 'network/request.js'

export function getAllPayOptions() {
	return request({
		url: 'getAllPayOptions'
	})
}