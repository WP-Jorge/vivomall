import {
	request
} from 'network/request.js'

export function getGoodsBySortId(sortId) {
	return request({
		url: 'getGoodsBySortId?sortId=' + sortId
	})
}

export function getAllGoods() {
	return request({
		url: 'getAllGoods'
	})
}

export function getGoodsByPath(path, pageNum, pageSize) {
	return request({
		url: 'getGoodsByPath/' + path + '/' + pageNum + '/' + pageSize
	})
}

export function getGoodsBySearch(keyword, pageNum, pageSize) {
	return request({
		url: 'getGoodsBySearch/' + keyword + '/' + pageNum + '/' + pageSize
	})
}
