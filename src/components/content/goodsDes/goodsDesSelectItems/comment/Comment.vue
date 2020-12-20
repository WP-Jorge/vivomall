<template>
	<div class="comment">
		<div class="user_container">
			<div class="user">
				<img class="user_img" :src="comment.commentUserImg" alt="图片">
				<span class="user_name">{{ comment.commentUsername }}</span>
			</div>
		</div>
		<div class="comment_container">
			<div class="remark">
				<div class="star">
					<el-rate :value="comment.commentUserStar" disabled show-score text-color="#ff9900"></el-rate>
				</div>
				<div class="text">
					<p>{{ comment.commentDes }}</p>
				</div>
				<ul class="imgs">
					<li v-for="(img, index) in comment.commentImgList" :key="index">
						<el-image :src="img.commentImg"></el-image>
					</li>
				</ul>
			</div>
		</div>
	</div>
</template>

<script>
	export default {
		props: {
			comment: {
				type: Object,
				default () {
					return {}
				}
			}
		}
	}
</script>

<style lang="scss" scoped>
	.comment {
		display: flex;
		padding: 50px 0;
		min-height: 150px;
		border-bottom: 1px solid #e4e4e4;

		.user_container {
			width: 150px;

			.user {
				.user_img {
					width: 50px;
				}

				.user_name {
					display: inline-block;
					margin-left: 25px;
					height: 50px;
					width: 60px;
					line-height: 50px;
					color: #999999;
					font-size: 15px;
					overflow: hidden;
					white-space: nowrap;
					text-overflow: ellipsis;
				}
			}
		}

		.comment_container {
			flex: 1;

			.remark {
				.star {
					padding-top: 14px;
				}

				.text {
					padding-top: 17px;
					color: #333333;
					font-size: 18px;
				}

				.imgs {
					display: flex;
					padding-top: 20px;

					li {
						margin-right: 20px;

						.el-image {
							width: 80px;
							height: 80px;
						}
					}
				}
			}
		}
	}
</style>
