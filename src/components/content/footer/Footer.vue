<template>
	<div class="footer">
		<font>{{ rights }}</font>
	</div>
</template>

<script>
export default {
	data() {
		return {
			rights: 'Z09418233 朱心熹 ©2020'
		}
	}
}
</script>

<style lang="scss" scoped>
@import 'assets/sass/base.scss';

.footer {
	position: absolute;
	width: 100%;
	min-width: 1200px;
	height: 50px;
	bottom: 0px;
	left: 0px;
	right: 0;
	text-align: center;
	background: #333;

	font {
		line-height: 50px;
		color: $gray_color;
	}
}
</style>
