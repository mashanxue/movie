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
        影院名：<input type="text" name="yingYuanName" >
        &nbsp;  &nbsp; &nbsp;影院地址：<input type="text" name="yingYuanAddress"  >
        <input type="button" value="查询" class="btn-link selectbutton">
    </form>
    <shiro:hasPermission name="add,delete">
    <button class="btn-link insertbutton" >添加影院</button>
    </shiro:hasPermission>
</div>
    <div class="center-block" >
<table class="table-striped table-hover" id="tableyingyuan">
    <tr class="success">
        <td><h3 style="margin-right: 100px">影院编号</h3></td>
        <td><h3 style="margin-right: 100px">影院名字</h3></td>
        <td><h3 style="margin-right: 100px">影院地址</h3></td>
        <shiro:hasRole name="superadmin">
            <td><h3 style="margin-right: 100px">影院管理</h3></td>
        </shiro:hasRole>

    </tr>
    <c:forEach var="list" items="${pageinfo.list}" >
        <tr class="warning" >
            <td ><h5>${list.yingYuanId}</h5></td>
            <td><h5>${list.yingYuanName}</h5></td>
            <td><h5>${list.yingYuanAddress}</h5></td>
            <shiro:hasRole name="superadmin">
                <td> <shiro:hasPermission name="delete">
                    <input type="button" value="删除" title="${list.yingYuanId}" class="btn-link deletebutton">
                    </shiro:hasPermission>
                    <shiro:hasPermission name="update">
                    <input type="button" value="修改" title="${list.yingYuanName}"  class="btn-link updatebutton"> </td>
                    </shiro:hasPermission>
            </shiro:hasRole>
       </tr>
    </c:forEach>

</table>
            <div id="upordeformdiv" hidden>
            <form id="upordeform" class="form-horizontal " >
                影院名字：<input type="text" name="yingYuanName" id="upordeformname" placeholder="">
                影院地址：<input type="text" name="yingYuanAddress" id="upordeformaddress">
                <input type="hidden" name="yingYuanId" id="upordeforId" >
                <input type="button" id="upordeformbutton" value="提交">
            </form>
            </div>

    </div>
    <div style="margin-left: 300px;margin-top: 20px">
<button class="btn-link pagebutton" title="1" >首页</button>
<button class="btn-link pagebutton" title="${pageinfo.prePage}">上一页</button>
<button class="btn-link pagebutton" title="${pageinfo.nextPage}">下一页</button>
<button class="btn-link pagebutton" title="${pageinfo.pages}">尾页</button>
    </div>
    <shiro:hasPermission name="shiromanager">
    <a href="selectadmin?id=1">权限管理</a>
    </shiro:hasPermission>
</div>


<script type="text/javascript">

    $(document).on("click",".insertbutton",function () {
        $("#upordeformbutton").attr("class","insertformbutton")
        $("#upordeformdiv").attr('hidden',false)
    })
    $(document).on("click",".updatebutton",function (){
    var yingyuanname=$(this).attr("title")

        $.ajax({
            type:"get",
            url:"specialfind",
            data:{yingYuanName:yingyuanname,yingYuanAddress:null},
            success:function (yingyuan) {
                console.log(yingyuan)
                $("#upordeformname").val(yingyuan[0].yingYuanName)
                $("#upordeformaddress").val(yingyuan[0].yingYuanAddress)
                $("#upordeforId").val(yingyuan[0].yingYuanId)
            }})



        $("#upordeformbutton").attr("class","updateformbutton")
        $("#upordeformdiv").attr('hidden',false)
    })
    $(document).on("click",".deletebutton",function (){
      var re=confirm("请问是否确认要删除");

      if(re==false){
          return false
      }else {

              var id=$(this).attr("title")
              window.location.href="deleteyingyuan?id="+id
      }

    })
    $(document).on("click",".updateformbutton",function () {
        if($("#upordeformname").val()=="" || $("#upordeformname").val()==null) {

            $("#upordeformname").attr("placeholder","电影名不可为空")
            return false
        }
        if($("#upordeformaddress").val()==null || $("#upordeformaddress").val()=="") {

            $("#upordeformaddress").attr("placeholder","地址不可为空")
            return false
        }
        window.location.href="updateyingyuan?yingYuanId="+$("#upordeforId").val()+"&yingYuanName="+ $("#upordeformname").val()+"&yingYuanAddress="+
            $("#upordeformaddress").val()
        $("#upordeformdiv").attr('hidden')
    })
    $(document).on("click",".insertformbutton",function () {
        if($("#upordeformname").val()=="" || $("#upordeformname").val()==null) {

            $("#upordeformname").attr("placeholder","电影名不可为空")
            return false
        }
        if($("#upordeformaddress").val()==null || $("#upordeformaddress").val()=="") {

            $("#upordeformaddress").attr("placeholder","地址不可为空")
            return false
        }
        window.location.href="insertyingyuan?yingYuanName="+ $("#upordeformname").val()+"&yingYuanAddress="+
            $("#upordeformaddress").val()
        $("#upordeformdiv").attr('hidden')
    })



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
                            "<shiro:hasRole name='superadmin'>"+
                            "  <td><h3 style=\"margin-right: 100px\">影院管理</h3></td>"+
                              "</shiro:hasRole>"+
                        "</tr>")

                    for(var i=0;i<yingyuan.length;i++){
                        $("#tableyingyuan").append(
                            "<tr class='warning'>"+

                            "<td ><h5>"+yingyuan[i].yingYuanId+"</h5></td>"+
                            "<td><h5>"+yingyuan[i].yingYuanName+"</h5></td>"+
                            "<td><h5>"+yingyuan[i].yingYuanAddress+"</h5></td>"+
                            "<shiro:hasRole name='superadmin'>"+
                            "<td> " +
                                "<shiro:hasPermission name='delete'>"+
                            "<input type='button' value='删除' title='"+yingyuan[i].yingYuanId+"' class='btn-link deletebutton'>"+
                                "</shiro:hasPermission>"+
                            "<shiro:hasPermission name='update'>"+
                            "<input type='button' value='修改' title='"+yingyuan[i].yingYuanId+"' class='btn-link updatebutton'>"+
                            "</shiro:hasPermission>"+
                           "</td>"+
                            "</shiro:hasRole>"+
                            "</tr>"
                        )}
                }
            })
    })


    $(".pagebutton").click(function () {

        var pageNo=$(this).attr("title")
        console.log(pageNo)
            $.ajax({
                type:"post",
                url:"findallyingyuanajax",
                data:{pageNo:pageNo},
                success:function (PageInfo) {

                    $("#tableyingyuan").empty();
                    $("#tableyingyuan").append(
                   "<tr class='success'>"+
                     "<td><h3 style=\"margin-right: 100px\">影院编号</h3></td>"+
                        "<td><h3 style=\"margin-right: 100px\">影院名字</h3></td>"+
                    "<td><h3 style=\"margin-right: 100px\">影院地址</h3></td>"+
                        "<shiro:hasRole name='superadmin'>"+
                        "  <td><h3 style=\"margin-right: 100px\">影院管理</h3></td>"+
                        "</shiro:hasRole>"+

                    "</tr>")


                   for(var i=0;i<PageInfo.list.length;i++){
                       $("#tableyingyuan").append(
                    "<tr class='warning'>"+

                           "<td ><h5>"+PageInfo.list[i].yingYuanId+"</h5></td>"+
                           "<td><h5>"+PageInfo.list[i].yingYuanName+"</h5></td>"+
                       "<td><h5>"+PageInfo.list[i].yingYuanAddress+"</h5></td>"+
                       "<shiro:hasRole name='superadmin'>"+
                       "<td> " +
                       "<shiro:hasPermission name='delete'>"+
                       "<input type='button' value='删除' title='"+PageInfo.list[i].yingYuanId+"' class='btn-link deletebutton'>"+
                       "</shiro:hasPermission>"+
                       "<shiro:hasPermission name='update'>"+
                       "<input type='button' value='修改' title='"+PageInfo.list[i].yingYuanId+"' class='btn-link updatebutton'>" +
                           "</shiro:hasPermission>"+
                           " </td>"+
                       "</shiro:hasRole>"+
                       "</tr>"
                   )}
                }
            })
    })
</script>
</body>