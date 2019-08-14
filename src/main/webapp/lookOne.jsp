<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>主页面</title>
    <style>

    </style>
</head>
<body style="overflow: scroll;overflow-x: hidden;">
    <h1 style="color:#0e90d2;">9567电影网</h1>
            <p><img src="/static/imgs/${scc.moviePname}" height="230px" width="262.1px" ></p>
            <p>片名:${scc.movieName}&nbsp;&nbsp;&nbsp;&nbsp;导演: ${scc.movieActor}</p>
            <p>评分:${scc.movieScore}&nbsp;&nbsp;&nbsp;&nbsp;地区:${scc.movieAddress}</p>
            <p>类型:${scc.movietype.movieTpyeName}&nbsp;&nbsp;&nbsp;&nbsp;时长:${scc.movieTime}</p>
            <p>摘要:${scc.movieAbstract}</p>
</body>
</html>
