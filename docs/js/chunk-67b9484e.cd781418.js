(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["chunk-67b9484e"],{6292:function(t,e,n){},8418:function(t,e,n){"use strict";var o=n("c04e"),i=n("9bf2"),s=n("5c6c");t.exports=function(t,e,n){var r=o(e);r in t?i.f(t,r,s(0,n)):t[r]=n}},c6a7:function(t,e,n){"use strict";n.r(e);var o=function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("div",{staticClass:"goods_des_imgs"},t._l(t.imgList,(function(t,e){return n("el-image",{key:e,attrs:{src:t.desImg,fit:"contain",lazy:""}})})),1)},i=[],s=(n("fb6a"),n("1bab"));function r(t){return Object(s["a"])({url:"getDesImgByGoodsId?goodsId="+t})}var c={data:function(){return{goodsId:this.$route.query.goodsId,imgList:[]}},mounted:function(){this.getDesImgByGoodsId()},methods:{getDesImgByGoodsId:function(){var t=this;r(this.goodsId).then((function(e){t.imgList=e.data.slice(1)}))}}},a=c,d=(n("da11"),n("2877")),u=Object(d["a"])(a,o,i,!1,null,"f0e5841a",null);e["default"]=u.exports},da11:function(t,e,n){"use strict";n("6292")},fb6a:function(t,e,n){"use strict";var o=n("23e7"),i=n("861d"),s=n("e8b5"),r=n("23cb"),c=n("50c4"),a=n("fc6a"),d=n("8418"),u=n("b622"),f=n("1dde"),l=n("ae40"),g=f("slice"),v=l("slice",{ACCESSORS:!0,0:0,1:2}),b=u("species"),h=[].slice,m=Math.max;o({target:"Array",proto:!0,forced:!g||!v},{slice:function(t,e){var n,o,u,f=a(this),l=c(f.length),g=r(t,l),v=r(void 0===e?l:e,l);if(s(f)&&(n=f.constructor,"function"!=typeof n||n!==Array&&!s(n.prototype)?i(n)&&(n=n[b],null===n&&(n=void 0)):n=void 0,n===Array||void 0===n))return h.call(f,g,v);for(o=new(void 0===n?Array:n)(m(v-g,0)),u=0;g<v;g++,u++)g in f&&d(o,u,f[g]);return o.length=u,o}})}}]);
//# sourceMappingURL=chunk-67b9484e.cd781418.js.map