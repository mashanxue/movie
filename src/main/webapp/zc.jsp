<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
    <base href="<%=basePath%>">
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="yq_css/register.css" />
    <title></title>
</head>
<body>
    <form action="zc">
        <p>用户名:<input type="text" name="customerName"></p>
        <p>密    码:<input type="password" name="customerPassword"></p>
        <p>手机号:<input type="text" name="phone"></p>
        <p><input type="submit" name="注册"></p>
    </form>
</body>
</html>