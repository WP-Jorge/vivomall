(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["chunk-033ce6ae"],{"22ef":function(t,e,s){"use strict";var a=function(){var t=this,e=t.$createElement,s=t._self._c||e;return s("div",{staticClass:"goods_item",style:{height:t.height,width:t.width}},[s("el-card",{attrs:{shadow:t.shadow}},[s("div",{staticClass:"des_box"},[s("el-image",{attrs:{lazy:t.lazy,src:t.goods.goodsImg,alt:"图片"}}),s("span",{staticClass:"title"},[t._v(t._s(t.goods.goodsName))]),s("p",{staticClass:"des"},[t._v(t._s(t.goods.goodsDes))]),s("p",{staticClass:"all_price"},[s("span",{staticClass:"now_price"},[t._v(t._s(t.goods.goodsPrice))]),t._v(" "),s("del",{directives:[{name:"show",rawName:"v-show",value:t.isShowOldPrice,expression:"isShowOldPrice"}],staticClass:"old_price"},[t._v(t._s(t.goods.goodsOldPrice))])])],1)])],1)},o=[],i={props:{goods:{type:Object,default:function(){return{}}},isShowOldPrice:{type:Boolean,default:!1},height:{type:String,default:"380px"},width:{type:String,default:"293px"},shadow:{type:String,default:"always"},lazy:{type:Boolean,default:!1}}},n=i,r=(s("b0ad"),s("2877")),c=Object(r["a"])(n,a,o,!1,null,null,null);e["a"]=c.exports},"4bb6":function(t,e,s){},"5d34":function(t,e,s){"use strict";s("8c68")},"6a6e":function(t,e,s){},"748f":function(t,e,s){"use strict";var a=function(){var t=this,e=t.$createElement,s=t._self._c||e;return s("div",{staticClass:"title_bar"},[t._v(" "+t._s(t.title)+" ")])},o=[],i={props:{title:{type:String,default:""}}},n=i,r=(s("8b3b"),s("2877")),c=Object(r["a"])(n,a,o,!1,null,"38345731",null);e["a"]=c.exports},"8b3b":function(t,e,s){"use strict";s("4bb6")},"8c68":function(t,e,s){},b0ad:function(t,e,s){"use strict";s("6a6e")},d2d3:function(t,e,s){"use strict";s.r(e);var a=function(){var t=this,e=t.$createElement,s=t._self._c||e;return s("div",{staticClass:"good_list"},[s("TitleBar",{attrs:{title:t.$route.query.style}}),s("div",{staticClass:"goods_container"},t._l(t.goodsList,(function(t){return s("div",{key:t.goodsId,staticClass:"goods"},[s("router-link",{attrs:{to:{path:"/goodsDes",query:{goodsId:t.goodsId}}}},[s("GoodsItem",{attrs:{goods:t,shadow:"hover",lazy:!0}})],1)],1)})),0),s("div",{staticClass:"page"},[s("el-pagination",{attrs:{background:"",layout:"prev, pager, next","page-count":t.totalPage,"hide-on-single-page":""},on:{"current-change":t.pageClick,"prev-click":t.prePage,"next-click":t.nextPage}})],1)],1)},o=[],i=s("1bab");function n(t,e,s){return Object(i["a"])({url:"getGoodsByPath/"+t+"/"+e+"/"+s})}function r(t,e,s){return Object(i["a"])({url:"getGoodsBySearch/"+t+"/"+e+"/"+s})}var c=s("748f"),l=s("22ef"),d={components:{TitleBar:c["a"],GoodsItem:l["a"]},data:function(){return{title:"商品商城",goodsList:[],pageNum:1,pageSize:16,totalPage:1}},beforeMount:function(){this.getGoods()},methods:{getGoods:function(){var t=this;"search"===this.$route.params.pathMatch?r(this.$route.query.keyword,this.pageNum,this.pageSize).then((function(e){t.goodsList=e.data.list,t.totalPage=e.data.navigatepageNums.length,0===t.goodsList.length&&t.$message({message:"暂无产品数据！",type:"warning",center:!0})})):n(this.$route.params.pathMatch,this.pageNum,this.pageSize).then((function(e){t.goodsList=e.data.list,t.totalPage=e.data.navigatepageNums.length,0===t.goodsList.length&&t.$message({message:"暂无产品数据！",type:"warning",center:!0})}))},pageClick:function(t){this.pageNum=t,this.getGoods()},prePage:function(){this.pageNum--},nextPage:function(){this.pageNum++}},watch:{$route:function(){this.getGoods()},nowPage:function(){this.getGoods()}}},g=d,u=(s("5d34"),s("2877")),p=Object(u["a"])(g,a,o,!1,null,"4c0c059b",null);e["default"]=p.exports}}]);
//# sourceMappingURL=chunk-033ce6ae.923199c1.js.map