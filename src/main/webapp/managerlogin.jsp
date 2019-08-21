<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>欢迎登陆9567小组电影后台管理系统 - </title>

<link href="css/main.css" rel="stylesheet" type="text/css" />

</head>
<body>


<div class="login">
	<h1  style="position: relative;right: -38%">欢迎登陆9567小组电影后台管理系统</h1>
    <div class="box png">
		<div class="logo png"></div>
		<div class="input">
			<div class="log">
				<form action="testlogin"  method="post" class="form-group" >
				<div class="name">
					<label>用户名</label><input type="text" class="text" id="value_1" placeholder="用户名" name="adminname" tabindex="1">
				</div>
				<div class="pwd">
					<label>密　码</label><input type="password" class="text" id="value_2" placeholder="密码" name="adminpassword" tabindex="2">
					<input type="button" class="submit" tabindex="3" id="button" value="登录">
				</div>
				</form>
					<div class="check"></div>
				</div>
				<div class="tip"></div>
			</div>
		</div>
	</div>
    <div class="air-balloon ab-1 png"></div>
	<div class="air-balloon ab-2 png"></div>
    <div class="footer"></div>
</div>


<script type="text/javascript" src="js/jQuery.js"></script>
<script type="text/javascript" src="js/fun.base.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script src="/webjars/jquery/3.1.1/jquery.min.js"></script>
<script src="/webjars/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<script type="text/javascript">


	$("#button").click(

			function () {
				if($("input[name='adminname']").val()=="" || $("input[name='adminname']").val()==null) {

					$("input[name='adminname']").attr("placeholder","用户名不可为空")
					return false
				}
				if($("input[name='adminpassword']").val()==null || $("input[name='adminpassword']").val()=="") {

					$("input[name='adminpassword']").attr("placeholder","密码不可为空")
					return false
				}
				$("form").submit();
			})




</script>

<!--[if IE 6]>
<script src="js/DD_belatedPNG.js" type="text/javascript"></script>
<script>DD_belatedPNG.fix('.png')</script>
<![endif]-->

</body>
</html>