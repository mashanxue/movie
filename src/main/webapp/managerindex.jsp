<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>管理员界面</title>

  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <meta name="keywords" content="">
  <meta name="description" content="">
	<%--bootstrap和js的三个引入--%>
	<link rel="stylesheet" href="/webjars/bootstrap/3.3.5/css/bootstrap.min.css">
	<script src="/webjars/jquery/3.1.1/jquery.min.js"></script>
	<script src="/webjars/bootstrap/3.3.5/js/bootstrap.min.js"></script>
	<%----%>
  <link rel="stylesheet" href="res/layui/css/layui.css">
  <link rel="stylesheet" href="res/css/global.css">
<script src="res/layui/layui.js"></script>
</head>
<body>
<div class="header" >
  <div class="main">
    <a href="managerindex.jsp" style="margin-left: 30px;line-height: 65px; color: white;font-size: 18px;">电影选票管理系统后台</a>
    <div class="nav">
    
    </div>
    
    <div class="nav-user">      
      <!-- 登入后的状态 -->
      
      <a class="avatar" href="managerindex.jsp">
        <img src="res/images/8.jpg">
        <cite style="color: white;">管理员：${sessionScope.adminmanager}
			<c:if test="${sessionScope.adminmanager!='李四'}">
			电影院：${sessionScope.sladminyingyuan}
			</c:if>
		</cite>&nbsp;&nbsp;
		  <a href="managerlogin.jsp"><i style="color: white;">退出</i></a>
      </a>
      <div class="nav">
        <a href="set.html"><i class="iconfont icon-shezhi"></i>设置</a>
        <a href="managerlogin.jsp"><i class="iconfont icon-tuichu" style="top: 0; font-size: 22px;"></i>退了</a>
      </div>
    </div>
  </div>
</div>


	<div class="main fly-user-main layui-clear">
		<ul class="layui-nav layui-nav-tree layui-inline" lay-filter="user">

					
								<li class="layui-nav-item "><a href="/findallyingyuan" target="right"> <i
					class="layui-icon">&#xe612;</i>影院管理</a></li>
			<li class="layui-nav-item "><a href="allMovies?" target="right"> <i
					class="layui-icon">&#xe612;</i> 电影管理</a></li>
			<li class="layui-nav-item "><a href="addmovie.jsp" target="right"> <i
					class="layui-icon">&#xe612;</i> 添加电影</a></li>
						<li class="layui-nav-item"><a href="allyingyuan" target="right"> <i
					class="layui-icon">&#xe611;</i>场厅场次管理</a></li>

		</ul>

		<div class="site-tree-mobile layui-hide">
			<i class="layui-icon">&#xe602;</i>
		</div>
		<div class="site-mobile-shade"></div>

		<div class="fly-panel fly-panel-user"  >
			<div class="layui-tab layui-tab-brief" lay-filter="user">
				
				<div class="layui-tab-content" style="padding: 20px;padding-top: 0px;">
					
    					<iframe src="findallyingyuan" width="88%" style="border: none;" height="800" border="none" name="right"></iframe>
					</div>					
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="js/jquery-1.11.3.min.js" ></script>
	<script type="text/javascript" src="myplugs/js/plugs.js" ></script>
<script>
		layui.use('element', function() {
			var element = layui.element();
		});
	</script>
<script>

layui.cache.page = '';
layui.cache.user = {
  username: '游客'
  ,uid: -1
  ,avatar: '../res/images/avatar/00.jpg'
  ,experience: 83
  ,sex: '男'
};
layui.config({
  version: "2.0.0"
  ,base: '../res/mods/'
}).extend({
  fly: 'index'
}).use('fly');
	//添加编辑弹出层
			function updatePwd(title, id) {
				$.jq_Panel({
					title: title,
					iframeWidth: 500,
					iframeHeight: 300,
					url: "updatePwd.html"
				});
			}
</script>
</body>
</html>