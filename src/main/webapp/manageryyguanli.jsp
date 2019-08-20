<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>影院管理</title>

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
<div class="container" style="margin-left: 300px" >
<h1 class="page-header">影院管理</h1>

<div class="form-group" >
    <form  class="form-horizontal yingyuanform">
        影院名：<input type="text" name="yingyuanname" >
        &nbsp;  &nbsp; &nbsp;影院地址：<input type="text" name="yingyuanaddress"  >
        <input type="button" value="查询" class="btn-link selectbutton">
    </form>
</div>
    <div class="center-block" >
<table class="table-striped table-hover" id="tableyingyuan">
    <tr class="success">
        <td><h3 style="margin-right: 100px">影院编号</h3></td>
        <td><h3 style="margin-right: 100px">影院名字</h3></td>
        <td><h3 style="margin-right: 100px">影院地址</h3></td>
    </tr>
    <c:forEach var="list" items="${pageinfo.list}" >
        <tr class="warning">
            <td ><h5>${list.yingyuanid}</h5></td>
            <td><h5>${list.yingyuanname}</h5></td>
            <td><h5>${list.yingyuanaddress}</h5></td>
        </tr>
    </c:forEach>

</table>
    </div>
    <div style="margin-left: 300px;margin-top: 20px">
<button class="btn-link" title="1" >首页</button>
<button class="btn-link" title="${pageinfo.prePage}">上一页</button>
<button class="btn-link" title="${pageinfo.nextPage}">下一页</button>
<button class="btn-link" title="${pageinfo.pages}">尾页</button>
    </div>
</div>
<script type="text/javascript">
    $(".selectbutton").click(function () {
        var yingyuan=$(".yingyuanform").serialize();
        yingyuan=decodeURIComponent(yingyuan,true);
            $.ajax({
                type:"post",
                url:"specialfind",
                data:yingyuan,
                success:function (yingyuan) {
                    $("#tableyingyuan").empty();
                    $("#tableyingyuan").append(
                        "<tr class='success'>"+
                        "<td><h3 style=\"margin-right: 100px\">影院编号</h3></td>"+
                        "<td><h3 style=\"margin-right: 100px\">影院名字</h3></td>"+
                        "<td><h3 style=\"margin-right: 100px\">影院地址</h3></td>"+
                        "</tr>")

                    for(var i=0;i<yingyuan.length;i++){
                        $("#tableyingyuan").append(
                            "<tr class='warning'>"+

                            "<td ><h5>"+yingyuan[i].yingyuanid+"</h5></td>"+
                            "<td><h5>"+yingyuan[i].yingyuanname+"</h5></td>"+
                            "<td><h5>"+yingyuan[i].yingyuanaddress+"</h5></td>"+
                            "</tr>"
                        )}
                }
            })
    })


    $("button").click(function () {

        var pageNo=$(this).attr("title")
        console.log(pageNo)
            $.ajax({
                type:"post",
                url:"findallyingyuanajax",
                data:{"pageNo":pageNo},
                success:function (PageInfo) {

                    $("#tableyingyuan").empty();
                    $("#tableyingyuan").append(
                   "<tr class='success'>"+
                     "<td><h3 style=\"margin-right: 100px\">影院编号</h3></td>"+
                        "<td><h3 style=\"margin-right: 100px\">影院名字</h3></td>"+
                    "<td><h3 style=\"margin-right: 100px\">影院地址</h3></td>"+
                    "</tr>")

                   for(var i=0;i<PageInfo.list.length;i++){
                       $("#tableyingyuan").append(
                    "<tr class='warning'>"+

                           "<td ><h5>"+PageInfo.list[i].yingyuanid+"</h5></td>"+
                           "<td><h5>"+PageInfo.list[i].yingyuanname+"</h5></td>"+
                       "<td><h5>"+PageInfo.list[i].yingyuanaddress+"</h5></td>"+
                    "</tr>"
                   )}
                }
            })
    })
</script>
</body>