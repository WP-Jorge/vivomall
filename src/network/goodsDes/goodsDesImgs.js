import { request } from 'network/request.js'

export function getDesImgByGoodsId(goodsId) {
	return request({
		url: 'getDesImgByGoodsId?goodsId=' + goodsId
	})
}