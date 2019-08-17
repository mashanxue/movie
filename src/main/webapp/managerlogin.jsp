<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>管理员登陆界面</title>

    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <%--bootstrap和js的三个引入--%>
    <link rel="stylesheet" href="/webjars/bootstrap/3.3.5/css/bootstrap.min.css">
    <script src="/webjars/jquery/3.1.1/jquery.min.js"></script>
    <script src="/webjars/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <%----%>
</head>
<body>
    <div class="container">
        <h1 class="page-header">欢迎登陆9567小组电影后台管理系统</h1>
        <form action="testlogin"  method="post" class="form-group" >
            用户名： <input type="text" name="adminname" class="form-control"><br/>
            密码：<input type="text" name="adminpassword"  class="form-control"><br/>
            <input type="button" value="提交" class="btn-default"id="button">


        </form>
    </div>
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
</body>