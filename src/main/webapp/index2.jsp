<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>主页面</title>
</head>
<body>
<table border=1 id="kk">
    <tr>
        <td>顾客ID</td>
        <td>顾客名</td>
        <td>顾客密码</td>
        <td>顾客手机号</td>
    </tr>
    <c:forEach items="${scc}" var="student">
        <tr>
            <td>${student.customerId }</td>
            <td>${student.customerName}</td>
            <td>${student.customerPassword}</td>
            <td>${student.phone}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
