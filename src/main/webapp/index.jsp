<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>主页面L</title>
</head>
<frameset rows="*" noresize="noresize">

    <frameset cols="8%,*" noresize="noresize">
        <frame src="left.jsp" >
        <frame src="right.jsp" name="main">
    </frameset>
</frameset>
</html>
