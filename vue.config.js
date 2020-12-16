const webpack = require('webpack')

module.exports = {
	publicPath: '',
	configureWebpack: {
		resolve: {
			alias: {
				'src': '@',
				'components': '@/components',
				'content': 'components/content',
				'common': 'components/common',
				'assets': '@/assets',
				'network': '@/network',
				'views': '@/views',
				'common': '@/common',
				'utils': '@/utils'
			}
		}
	}
}
