<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html >
<head>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>增加管理员</title>
    <%--bootstrap和js的三个引入--%>
    <link rel="stylesheet" href="/webjars/bootstrap/3.3.5/css/bootstrap.min.css">
    <script src="/webjars/jquery/3.1.1/jquery.min.js"></script>
    <script src="/webjars/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <%----%>
</head>
<body style="background-color: #f1f4fd">
<div class="container" style="position: absolute;top: 20%">
    <form action="insertadmin " >
        <h1 class="lead">增加管理员</h1>
        管理员姓名：<input type="text"  name="adminname">
        管理员密码：<input type="password" name="adminpassword">
        <select name="yingyuan">
        <c:forEach items="${yingyuanlist}" var="yingyuan">
                <option value="${yingyuan.yingYuanId}">${yingyuan.yingYuanName}</option>
        </c:forEach>
        </select>
        <input type="submit" value="提交" class="btn-success">
    </form>
</div>
</body>
</html>