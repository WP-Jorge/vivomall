import {
	request
} from 'network/request.js'

export function getAllSorts() {
	return request({
		url: 'getAllSorts'
	})
}
