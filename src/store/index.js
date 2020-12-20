import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex)

export default new Vuex.Store({
	state: {
		routers: ['/home', '/goodsList/phone', '/goodsList/charging', '/goodsList/accessory', '/goodsList/music',
			'/goodsList/house', '/goodsList/video', '/goodsList/outside', '/goodsList/all'
		],
		desRouters: ['/goodsDes/des', '/goodsDes/imgs', '/goodsDes/comments'],
		user: JSON.parse(localStorage.getItem('user') || null),
		shppingCart: []
	},
	mutations: {
		setUser(state, user) {
			state.user = user;
			localStorage.setItem('user', JSON.stringify(user));
		},
		delUser(state) {
			state.user = null;
		},
		pushGoods(state, goods) {
			state.shppingCart.push(goods);
		}
	},
	actions: {},
	modules: {}
})
