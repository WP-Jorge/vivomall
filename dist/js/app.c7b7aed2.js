(function(e){function t(t){for(var o,r,s=t[0],u=t[1],i=t[2],l=0,h=[];l<s.length;l++)r=s[l],Object.prototype.hasOwnProperty.call(c,r)&&c[r]&&h.push(c[r][0]),c[r]=0;for(o in u)Object.prototype.hasOwnProperty.call(u,o)&&(e[o]=u[o]);d&&d(t);while(h.length)h.shift()();return a.push.apply(a,i||[]),n()}function n(){for(var e,t=0;t<a.length;t++){for(var n=a[t],o=!0,r=1;r<n.length;r++){var s=n[r];0!==c[s]&&(o=!1)}o&&(a.splice(t--,1),e=u(u.s=n[0]))}return e}var o={},r={app:0},c={app:0},a=[];function s(e){return u.p+"js/"+({}[e]||e)+"."+{"chunk-033ce6ae":"923199c1","chunk-1cf4d659":"bb1b0ea1","chunk-1f59ec70":"7a716c3c","chunk-303d0c7c":"c143e24c","chunk-31224995":"fb21ab4e","chunk-422ed7ed":"5b663b48","chunk-4349fa2f":"ec9eb039","chunk-5a157f22":"5627ca53","chunk-65cbb0ca":"79249d6e","chunk-6611d193":"c2d681d1","chunk-a7f7fe24":"a9008c3f","chunk-e1b01050":"5c74f33a","chunk-eb1b0b56":"e3dc702a"}[e]+".js"}function u(t){if(o[t])return o[t].exports;var n=o[t]={i:t,l:!1,exports:{}};return e[t].call(n.exports,n,n.exports,u),n.l=!0,n.exports}u.e=function(e){var t=[],n={"chunk-033ce6ae":1,"chunk-1cf4d659":1,"chunk-1f59ec70":1,"chunk-303d0c7c":1,"chunk-31224995":1,"chunk-422ed7ed":1,"chunk-4349fa2f":1,"chunk-5a157f22":1,"chunk-65cbb0ca":1,"chunk-6611d193":1,"chunk-a7f7fe24":1,"chunk-e1b01050":1,"chunk-eb1b0b56":1};r[e]?t.push(r[e]):0!==r[e]&&n[e]&&t.push(r[e]=new Promise((function(t,n){for(var o="css/"+({}[e]||e)+"."+{"chunk-033ce6ae":"4809f9fe","chunk-1cf4d659":"8aba973b","chunk-1f59ec70":"86880d12","chunk-303d0c7c":"84b7d1ad","chunk-31224995":"03a26d26","chunk-422ed7ed":"0242d84c","chunk-4349fa2f":"94b2cd88","chunk-5a157f22":"5fa40832","chunk-65cbb0ca":"5dc053e5","chunk-6611d193":"52c77a67","chunk-a7f7fe24":"69b7f97b","chunk-e1b01050":"9264c3b2","chunk-eb1b0b56":"4064845c"}[e]+".css",c=u.p+o,a=document.getElementsByTagName("link"),s=0;s<a.length;s++){var i=a[s],l=i.getAttribute("data-href")||i.getAttribute("href");if("stylesheet"===i.rel&&(l===o||l===c))return t()}var h=document.getElementsByTagName("style");for(s=0;s<h.length;s++){i=h[s],l=i.getAttribute("data-href");if(l===o||l===c)return t()}var d=document.createElement("link");d.rel="stylesheet",d.type="text/css",d.onload=t,d.onerror=function(t){var o=t&&t.target&&t.target.src||c,a=new Error("Loading CSS chunk "+e+" failed.\n("+o+")");a.code="CSS_CHUNK_LOAD_FAILED",a.request=o,delete r[e],d.parentNode.removeChild(d),n(a)},d.href=c;var f=document.getElementsByTagName("head")[0];f.appendChild(d)})).then((function(){r[e]=0})));var o=c[e];if(0!==o)if(o)t.push(o[2]);else{var a=new Promise((function(t,n){o=c[e]=[t,n]}));t.push(o[2]=a);var i,l=document.createElement("script");l.charset="utf-8",l.timeout=120,u.nc&&l.setAttribute("nonce",u.nc),l.src=s(e);var h=new Error;i=function(t){l.onerror=l.onload=null,clearTimeout(d);var n=c[e];if(0!==n){if(n){var o=t&&("load"===t.type?"missing":t.type),r=t&&t.target&&t.target.src;h.message="Loading chunk "+e+" failed.\n("+o+": "+r+")",h.name="ChunkLoadError",h.type=o,h.request=r,n[1](h)}c[e]=void 0}};var d=setTimeout((function(){i({type:"timeout",target:l})}),12e4);l.onerror=l.onload=i,document.head.appendChild(l)}return Promise.all(t)},u.m=e,u.c=o,u.d=function(e,t,n){u.o(e,t)||Object.defineProperty(e,t,{enumerable:!0,get:n})},u.r=function(e){"undefined"!==typeof Symbol&&Symbol.toStringTag&&Object.defineProperty(e,Symbol.toStringTag,{value:"Module"}),Object.defineProperty(e,"__esModule",{value:!0})},u.t=function(e,t){if(1&t&&(e=u(e)),8&t)return e;if(4&t&&"object"===typeof e&&e&&e.__esModule)return e;var n=Object.create(null);if(u.r(n),Object.defineProperty(n,"default",{enumerable:!0,value:e}),2&t&&"string"!=typeof e)for(var o in e)u.d(n,o,function(t){return e[t]}.bind(null,o));return n},u.n=function(e){var t=e&&e.__esModule?function(){return e["default"]}:function(){return e};return u.d(t,"a",t),t},u.o=function(e,t){return Object.prototype.hasOwnProperty.call(e,t)},u.p="",u.oe=function(e){throw console.error(e),e};var i=window["webpackJsonp"]=window["webpackJsonp"]||[],l=i.push.bind(i);i.push=t,i=i.slice();for(var h=0;h<i.length;h++)t(i[h]);var d=l;a.push([0,"chunk-vendors"]),n()})({0:function(e,t,n){e.exports=n("56d7")},"1bab":function(e,t,n){"use strict";n.d(t,"a",(function(){return c}));var o=n("bc3a"),r=n.n(o);function c(e){var t=r.a.create({baseURL:"http://106.15.184.155:8000/",timeout:5e3});return t.interceptors.request.use((function(e){return e}),(function(e){console.log(e)})),t.interceptors.response.use((function(e){return e}),(function(e){console.log(e)})),t(e)}},"1f51":function(e,t,n){},"340e":function(e,t,n){},"56d7":function(e,t,n){"use strict";n.r(t);n("e260"),n("e6cf"),n("cca6"),n("a79d");var o=n("2b0e"),r=function(){var e=this,t=e.$createElement,n=e._self._c||t;return n("div",{attrs:{id:"app"}},[n("Header"),n("Navbar"),n("transition",{attrs:{mode:"out-in",appear:""}},[e.isRouterAlive?n("router-view"):e._e()],1),n("Footer")],1)},c=[],a=function(){var e=this,t=e.$createElement,n=e._self._c||t;return n("div",{staticClass:"header"},[n("el-row",[n("el-col",{staticClass:"left_text",attrs:{span:8}},e._l(e.texts,(function(t,o){return n("el-col",{key:o},[n("a",{attrs:{href:"javascript:viod(0)"}},[e._v(e._s(t))])])})),1),n("el-col",{staticClass:"center_text",attrs:{span:9}}),n("el-col",{staticClass:"right_text",attrs:{span:7}},[n("el-col",{staticClass:"car"},[n("el-col",[n("router-link",{attrs:{to:"/shoppingCart"}},[e._v("购物车")])],1)],1),null===e.$store.state.user?n("el-col",{staticClass:"no_login"},[n("el-col",[n("router-link",{attrs:{to:"/login"}},[e._v("登录")])],1),n("el-col",[n("router-link",{attrs:{to:"/register"}},[e._v("注册")])],1)],1):n("el-col",{staticClass:"login"},[n("el-col",{staticClass:"welcom"},[n("a",{attrs:{href:"javascript:void(0);"}},[e._v("欢迎："+e._s(e.$store.state.user.username))])]),n("el-col",[n("a",{attrs:{href:"javascript:void(0);"},on:{click:e.logout}},[e._v("退出登录")])])],1)],1)],1)],1)},s=[],u={data:function(){return{texts:["品牌","OriginOS","体验店","企业业务","社区"]}},methods:{logout:function(){this.$store.commit("delUser"),this.$message({message:"您已退出登录！",type:"warning",center:!0}),localStorage.clear(),"/shoppingCart"===this.$route.path&&location.reload()}},computed:{username:function(){return this.$store.state.user?this.$store.state.user.username:null}}},i=u,l=(n("60f5"),n("2877")),h=Object(l["a"])(i,a,s,!1,null,"c182da60",null),d=h.exports,f=function(){var e=this,t=e.$createElement,n=e._self._c||t;return n("div",{staticClass:"navbar"},[n("el-row",[n("el-col",{staticClass:"logo",attrs:{span:4}},[n("router-link",{attrs:{to:"/home",title:"主页"}},[n("div",{staticClass:"log_img"},[n("el-image",{attrs:{src:e.LogoImg}})],1)])],1),n("el-col",{staticClass:"styles",attrs:{span:14}},[n("ul",e._l(e.styles,(function(t,o){return n("li",{key:o},[n("router-link",{attrs:{to:{path:e.$store.state.routers[o],query:{style:t.styleName}}}},[e._v(e._s(t.styleName))])],1)})),0)]),n("el-col",{staticClass:"search",attrs:{span:6}},[n("el-autocomplete",{attrs:{min:"100","suffix-icon":"el-icon-search","popper-class":"my-autocomplete","fetch-suggestions":e.querySearch,placeholder:e.goods[0].goodsSimpleName},on:{select:e.handleSelect},nativeOn:{keyup:function(t){return!t.type.indexOf("key")&&e._k(t.keyCode,"enter",13,t.key,"Enter")?null:e.search(t)}},scopedSlots:e._u([{key:"default",fn:function(t){var o=t.item;return[n("div",{staticClass:"name"},[e._v(e._s(o.goodsName))])]}}]),model:{value:e.keyword,callback:function(t){e.keyword=t},expression:"keyword"}})],1)],1)],1)},p=[],g=(n("4de4"),n("c975"),n("1bab"));function m(){return Object(g["a"])({url:"getLogo"})}function b(){return Object(g["a"])({url:"getAllStyles"})}function k(){return Object(g["a"])({url:"getAllGoods"})}var v={inject:["reload"],data:function(){return{LogoImg:"",styles:[],keyword:null,goods:[{goodSimpleName:""}]}},created:function(){this.reload(),this.getLogoImg(),this.getAllStyles(),this.getAllGoods()},methods:{getLogoImg:function(){var e=this;m().then((function(t){e.LogoImg=t.data.homeLogoImg}))},getAllStyles:function(){var e=this;b().then((function(t){e.styles=t.data}))},getAllGoods:function(){var e=this;k().then((function(t){e.goods=t.data}))},querySearch:function(e,t){var n=this.goods,o=e?n.filter(this.createFilter(e)):n;t(o)},createFilter:function(e){return function(t){return-1!==t.goodsName.toLowerCase().indexOf(e.toLowerCase())}},handleSelect:function(e){this.$route.query.goodsId!=e.goodsId&&(this.$router.push({path:"/goodsDes",query:{goodsId:e.goodsId}}).catch((function(e){return e})),this.reload())},search:function(){""===this.keyword?this.$router.push({path:"/goodsList/search",query:{style:"商品搜索",keyword:null}}).catch((function(e){return e})):this.$router.push({path:"/goodsList/search",query:{style:"商品搜索",keyword:this.keyword}}).catch((function(e){return e})),this.reload()}}},y=v,_=(n("5933"),Object(l["a"])(y,f,p,!1,null,null,null)),w=_.exports,C=function(){var e=this,t=e.$createElement,n=e._self._c||t;return n("div",{staticClass:"footer"},[n("font",[e._v(e._s(e.rights))])],1)},L=[],O={data:function(){return{rights:"Z09418233 朱心熹 ©2020"}}},S=O,j=(n("a4fa"),Object(l["a"])(S,C,L,!1,null,"9befafca",null)),x=j.exports,$={components:{Header:d,Navbar:w,Footer:x},data:function(){return{isRouterAlive:!0}},provide:function(){return{reload:this.reload}},methods:{reload:function(){var e=this;this.isRouterAlive=!1,this.$nextTick((function(){e.isRouterAlive=!0}))}}},A=$,E=(n("5c0b"),Object(l["a"])(A,r,c,!1,null,null,null)),N=E.exports,I=(n("d3b7"),n("8c4f"));o["default"].use(I["a"]);var q=function(){return n.e("chunk-5a157f22").then(n.bind(null,"bb51"))},P=function(){return n.e("chunk-033ce6ae").then(n.bind(null,"d2d3"))},T=function(){return n.e("chunk-31224995").then(n.bind(null,"a55b"))},D=function(){return n.e("chunk-303d0c7c").then(n.bind(null,"73cf"))},R=function(){return n.e("chunk-a7f7fe24").then(n.bind(null,"4000"))},F=function(){return n.e("chunk-1cf4d659").then(n.bind(null,"8c6e"))},U=function(){return n.e("chunk-eb1b0b56").then(n.bind(null,"cf2a"))},G=function(){return n.e("chunk-6611d193").then(n.bind(null,"76a1"))},J=function(){return n.e("chunk-4349fa2f").then(n.bind(null,"3e1d"))},M=function(){return n.e("chunk-422ed7ed").then(n.bind(null,"9703"))},B=function(){return n.e("chunk-1f59ec70").then(n.bind(null,"89a1"))},H=function(){return n.e("chunk-65cbb0ca").then(n.bind(null,"c6a7"))},K=function(){return n.e("chunk-e1b01050").then(n.bind(null,"10a6"))},Z=I["a"].prototype.push;I["a"].prototype.push=function(e,t,n){return t||n?Z.call(this,e,t,n):Z.call(this,e).catch((function(e){return e}))};var z=[{path:"",redirect:"/home"},{path:"/home",component:q},{path:"/goodsList/*",component:P},{path:"/login",component:T},{path:"/register",component:D},{path:"/shoppingCart",component:F},{path:"/order",component:U},{path:"/pay",component:G},{path:"/finished",component:J},{path:"/goodsDes",component:R,redirect:"/goodsDes/des",children:[{path:"des",component:B},{path:"imgs",component:H},{path:"comments",component:K}]},{path:"/*",component:M}],Q=new I["a"]({routes:z});Q.beforeEach((function(e,t,n){"/order"===e.path&&"/shoppingCart"!==t.path&&t.query.status||"/pay"===e.path&&"/order"!==t.path||"/finished"===e.path&&"/pay"!==t.path?(alert("您无权访问该页面！"),n("/home")):n()}));var V=Q,W=n("2f62");o["default"].use(W["a"]);var X=new W["a"].Store({state:{routers:["/home","/goodsList/phone","/goodsList/charging","/goodsList/accessory","/goodsList/music","/goodsList/house","/goodsList/video","/goodsList/outside","/goodsList/all"],desRouters:["/goodsDes/des","/goodsDes/imgs","/goodsDes/comments"],user:JSON.parse(localStorage.getItem("user")||null),shppingCart:[]},mutations:{setUser:function(e,t){e.user=t,localStorage.setItem("user",JSON.stringify(t))},delUser:function(e){e.user=null},pushGoods:function(e,t){e.shppingCart.push(t)}}}),Y=n("5c96"),ee=n.n(Y);n("0fae");o["default"].use(ee.a),o["default"].config.productionTip=!1,new o["default"]({router:V,store:X,render:function(e){return e(N)}}).$mount("#app")},5933:function(e,t,n){"use strict";n("9eab")},"5c0b":function(e,t,n){"use strict";n("9c0c")},"60f5":function(e,t,n){"use strict";n("340e")},"9c0c":function(e,t,n){},"9eab":function(e,t,n){},a4fa:function(e,t,n){"use strict";n("1f51")}});
//# sourceMappingURL=app.c7b7aed2.js.map