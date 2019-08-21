<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>权限管理</title>

    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <%--bootstrap和js的三个引入--%>
    <link rel="stylesheet" href="/webjars/bootstrap/3.3.5/css/bootstrap.min.css">
    <script src="/webjars/jquery/3.1.1/jquery.min.js"></script>
    <script src="/webjars/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <%----%>
</head>
<body style="background-color: #f1f4fd">
<div class="container center-block " style="position:absolute;top:20%;right: -10%">
    <h1>权限管理</h1>
<form action="addshiro" >
    <table class="table-bordered">
        <tr>
            <th><h3>管理员ID</h3></th>
            <th><h3>管理员姓名</h3></th>
            <th><h3>权限</h3></th>
        </tr>
        <c:forEach items="${adminlist}" var="admin">
            <tr>
                <td><h4><input type="text" value="${admin.adminid}" style="border: 0px" disabled name="adminid"></h4> </td>
                <td><h4><input type="text" value="${admin.adminname}" style="border: 0px" disabled></h4></td>
                <td>
                    <h4>添加： <input type="checkbox" name="authority" value="add">
                    删除： <input type="checkbox" name="authority" value="delete">
                    修改： <input type="checkbox" name="authority" value="update"></h4>
                </td>
            </tr>
        </c:forEach>
    </table>
<input type="submit" id="submit" value="提交" class="btn-success">
</form>
</div>
</body></html>