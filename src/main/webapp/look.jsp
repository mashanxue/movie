<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>主页面</title>
<style>
    #kk{
        position: relative;
        top:-50px;
        left:50px;
    }
    #xx{
        position: relative;
        left:1000px;
        top: -67px;
    }
</style>
</head>
<body style="overflow: scroll;overflow-x: hidden;">
<div style="width: 100%;height: 100%;">
<h1 style="color:#0e90d2;">9567电影网</h1>
<p id="xx"><span><a href="zc.jsp">注册</a></span><span><a href="login.jsp">登录</a></span></p>
    <c:forEach items="${scc}" var="student" varStatus="index">
        <div style="display: inline-block;">
            <p><a href="xiangqing?moviesId=${student.moviesId}"><img src="/static/imgs/${student.moviePname} " height="230px" width="262.1px" ></a></p>
            <p>片名:${student.movieName}&nbsp;&nbsp;&nbsp;&nbsp;导演: ${student.movieActor}</p>
            <p>评分:${student.movieScore}&nbsp;&nbsp;&nbsp;&nbsp;地区:${student.movieAddress}</p>
            <p>时长:${student.movieTime}&nbsp;&nbsp;&nbsp;&nbsp;类型:${student.movietype.movieTpyeName}</p>
        </div>
    </c:forEach>
</div>
</body>
</html>
