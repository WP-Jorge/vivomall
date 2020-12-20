import {
	request
} from 'network/request.js'

export function getRegisterImg() {
	return request({
		url: 'getLoginImg',
	})
}

export function addUser(user) {
	return request({
		url: 'addUser?username=' + user.username + '&password=' + user.password,
		// url: 'addUser',
		method: 'post',
		data: user
	})
}
