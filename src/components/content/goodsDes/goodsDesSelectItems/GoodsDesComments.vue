<template>
	<div class="goods_des_imgs">
		<div class="comment_title">全部评论</div>
		<div class="goods_des_imgs_container">
			<Comment v-for="comment in commentList" :key="comment.commentId" :comment="comment"></Comment>
		</div>
	</div>
</template>

<script>
	import {
		getCommentByGoodsId
	} from 'network/goodsDes/comment/comment.js'
	import Comment from 'components/content/goodsDes/goodsDesSelectItems/comment/Comment.vue'
	export default {
		components: {
			Comment
		},
		data() {
			return {
				goodsId: this.$route.query.goodsId,
				commentList: []
			}
		},
		mounted() {
			this.getCommentByGoodsId()
		},
		methods: {
			getCommentByGoodsId() {
				getCommentByGoodsId(this.goodsId).then(res => {
					if (res.data.length === 0) {
						this.$message({
							message: '当前商品暂无评论',
							type: 'warning',
							center: true
						})
					}
					this.commentList = res.data
				})
			}
		}
	}
</script>

<style lang="scss" scoped>
	.goods_des_imgs {
		min-height: 600px;

		.comment_title {
			height: 30px;
			text-align: center;
			padding: 20px 0;
			border-bottom: 1px solid #D1DBE5;
			border-top: 1px solid #D1DBE5;
			font-size: 24px;
			line-height: 30px;
			background-color: #FFF;
		}

		.goods_des_imgs_container {
			width: 1200px;
			margin: 0 auto;
		}
	}
</style>
