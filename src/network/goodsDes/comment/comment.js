import {
	request
} from 'network/request.js'

export function getCommentByGoodsId(goodsId) {
	return request({
		url: 'getCommentByGoodsId?goodsId=' + goodsId
	})
}
