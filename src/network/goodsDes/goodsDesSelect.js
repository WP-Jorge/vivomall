import {
	request
} from 'network/request.js'

export function getGoodsByGoodsId(goodsId) {
	return request({
		url: 'getGoodsByGoodsId?goodsId=' + goodsId
	})
}

export function getInfoImsByGoodsId(goodsId) {
	return request({
		url: 'getInfoImsByGoodsId?goodsId=' + goodsId
	})
}

export function getCouponByGoodsId(goodsId) {
	return request({
		url: 'getCouponByGoodsId?goodsId=' + goodsId
	})
}

export function getCommodityByGoodsId(goodsId) {
	return request({
		url: 'getCommodityByGoodsId?goodsId=' + goodsId
	})
}

export function getColorByGoodsId(goodsId) {
	return request({
		url: 'getColorByGoodsId?goodsId=' + goodsId
	})
}

export function getVersionByGoodsId(goodsId) {
	return request({
		url: 'getVersionByGoodsId?goodsId=' + goodsId
	})
}

export function addShoppingCart(goods) {
	return request({
		url: 'addShoppingCart',
		method: 'post',
		data: goods
	})
}
