# vivomail

## 项目启动部署详情

###方法一

####1、直接进入下方网站
```
<!-- 通知我打开内网穿透，便可直接访问页面（由于内网穿透免费，所以传输效率不能保证，页面请求可能卡顿）
	在校期间基本上我都开着内网穿透，如果页面访问不了估计是我电脑关机了，可以来跟我说一下
-->
http://wp-jorge.gitee.io/vivomall
```

###方法二

####后端

#####java版本
```
jdk1.8
```
#####MySql版本
```
MySql8.0+
```
#####1、从backend目录中导入vivomall.sql到mysql数据库中

#####2、从backend目录中导入vivomall到idea中

#####3、运行maven，导入相关依赖

#####4、修改application.properties中的数据库用户名和密码

#####5、运行项目

####前端

#####版本
```
vue/cli@4.0+
```

#####1、安装依赖
```
npm i
```

#####2、运行项目
```
npm run serve
```

###方法三

####后端

#####java版本
```
jdk1.8
```
#####MySql版本
```
MySql8.0+
```


#####1、从backend目录中导入vivomall.sql到mysql数据库中

#####2、确保数据库用户名密码为
```
username: root
password: 111111
```

#####3、使用命令行运行backend目录中的.jar文件
```
java -jar vivomall-0.0.1-SNAPSHOT.jar
```

####前端

#####版本
```
vue/cli@4.0+
```

#####1、安装依赖
```
npm i
```

#####2、运行项目
```
npm run serve
```

###源码地址

####github
```
https://github.com/WP-Jorge/vivomall.git
```

####gitee
```
https://gitee.com/WP-Jorge/vivomall.git
```