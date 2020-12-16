import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex)

export default new Vuex.Store({
	state: {
		routers: ['/home', '/goodList/phone', '/goodList/charging', '/goodList/accessory', '/goodList/music',
			'/goodList/house', '/goodList/video', '/goodList/outside', '/goodList/all'
		]
	},
	mutations: {},
	actions: {},
	modules: {}
})
