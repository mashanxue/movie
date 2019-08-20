<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <link href="css/allmovies.css" rel="stylesheet" type="text/css">
    <link href="css/rightStyle.css" rel="stylesheet" type="text/css">
    <title>电影单</title>
</head>
<body>
<h1 align="center" style="font-family:华义彩云;color:#f47920">电影影院单</h1>
<div align="center">
    <table border="1" cellspacing="0" align="center" class="tt">
        <tr bgcolor="#f47920" style="width: 100%;display: table;table-layout: fixed;">
            <th>影院编号</th>
            <th>影院名字</th>
            <th>影院地址</th>
        </tr>
        <c:forEach items="${list}" var="list">
            <tr style="display: table;table-layout: fixed;width: 100%">
                <td>${list.yingYuanId}</td>
                <td>${list.yingYuanName}</td>
                <td>${list.yingYuanAddress}</td>
            </tr>
        </c:forEach>
    </table>
</div>
<div align="center">
    <c:choose>
        <c:when test="${fn:length(list)>1}">
            <c:choose>
                <c:when test="${pageInfo.size > 0 }">
                    <h4>当前第${pageInfo.pageNum }页,共${pageInfo.pages }页,总计${pageInfo.total}条记录</h4>
                    <a href="allyingyuan?PageNum=1"><input type="button" value="首页" style="width:60px;height:40px;background-color:#f47920;border-radius: 50%;font-weight: 700;"></a>
                    <c:choose>
                        <c:when test="${pageInfo.hasPreviousPage }">
                            <a href="allyingyuan?PageNum=${pageInfo.pageNum-1}" style="color:#f47920;" >上一页 </a>
                        </c:when>
                        <c:otherwise>
                            <span style="color:#f47920;">上一页</span>
                        </c:otherwise>
                    </c:choose>
                    <c:forEach var="item" items="${pageInfo.navigatepageNums}">
                        <c:choose>
                            <c:when test="${pageInfo.pageNum == item }">
                                <span class="current">${pageInfo.pageNum }</span>
                            </c:when>
                            <c:otherwise>
                                <a href="allyingyuan?PageNum=${item}">${item}</a>
                            </c:otherwise>
                        </c:choose>
                    </c:forEach>
                    <c:choose>
                        <c:when test="${!pageInfo.isLastPage }">
                            <a href="allyingyuan?PageNum=${pageInfo.pageNum+1}" style="color:#f47920;" >下一页 </a>
                            <a href="allyingyuan?PageNum=${pageInfo.lastPage}" ><input type="button" value="尾页" style="width:60px;height:40px;background-color:#f47920;border-radius: 50%;font-weight: 700;"></a>
                        </c:when>
                        <c:otherwise>
                            <span style="color:#f47920;">下一页</span>
                            <span><input type="button" value="尾页" style="width:60px;height:40px;background-color:#f47920;border-radius: 50%;font-weight: 700;"></span>
                        </c:otherwise>
                    </c:choose>
                </c:when>
            </c:choose>
        </c:when>
    </c:choose>
</div>
<h1 align="center" style="font-family:华义彩云;color:#f47920">电影场厅单</h1>
<div align="center">
    <table border="1" cellspacing="0" align="center" class="ttt" >
        <thead style="display: table;table-layout: fixed;width: calc( 100% - 16px);">
        <tr bgcolor="#f47920">
            <th>场厅编号</th>
            <th>场厅名</th>
            <th>影院编号</th>
            <th>场厅容量</th>
        </tr>
        </thead>
        <tbody style="display: block;height: 90px;overflow-y: scroll;">
        <tr style="display: table;table-layout: fixed;width: 100%">
            <td >无</td>
            <td>无</td>
            <td>无</td>
            <td>无</td>
        </tr>
        </tbody>
    </table>
</div>
<div align="center">
    <form action="changeChangTing" method="post">
        <span style="display: none">大厅编号:<input type="text" name="changTingId" class="changTingId"></span>
        大厅名字:<input type="text" name="changTingName" class="changTingName">
        影院编号:<input type="text" name="yuanId" class="yuanId">
        场厅容量:<input type="text" name="changTingDX" class="changTingDX">
        <p align="center">
        <input type="submit" value="修改场厅"  class="s3" style="width:60px;height:40px;background-color:#f47920;border-radius: 50%;font-weight: 700;">
        </p>
    </form>
    <form action="deleteChangTing" method="post">
        <span style="display: none">大厅编号:<input type="text" name="changTingId" class="changTingId2"></span>
        <p align="center">
            <input type="submit" value="删除场厅" class="s4" style="width:60px;height:40px;background-color:#f47920;border-radius: 50%;font-weight: 700;">
        </p>
    </form>
    <form action="addChangTing.jsp" method="post">
        <p align="center">
            <input type="submit" value="添加场厅"  style="width:60px;height:40px;background-color:#f47920;border-radius: 50%;font-weight: 700;">
        </p>
    </form>
</div>
<h1 align="center" style="font-family:华义彩云;color:#f47920">电影场次单</h1>
<div align="center">
    <table border="1" cellspacing="0" align="center" class="tttt" class="divForm" >
        <thead style="display: table;table-layout: fixed;width: calc( 100% - 16px);">
        <tr bgcolor="#f47920">
            <th>场次id</th>
            <th>场次名字</th>
            <th>场厅id</th>
            <th>电影id</th>
            <th>开始时间</th>
            <th>座位详情</th>
        </tr>
        </thead>
        <tbody style="display: block;height: 90px;overflow-y: scroll;">
        <tr style="display: table;table-layout: fixed;width: 100%">
            <td >无</td>
            <td>无</td>
            <td>无</td>
            <td>无</td>
            <td>无</td>
            <td>无</td>
        </tr>
        </tbody>
    </table>
</div>
<div align="center">
    <form action="changeChangCi" method="post">
        <span style="display: none">场次编号:<input type="text" name="changciId" class="changciId"></span>
        场次名字:<input type="text" name="changciName" class="changciName">
        场厅编号:<input type="text" name="changtingId" class="changtingId">
        电影编号:<input type="text" name="moviesId" class="moviesId">
        开始时间:<input type="text" name="time" class="time">
        座位详情编号:<input type="text" name="zwId" class="zwId">
        <p align="center">
            <input type="submit" value="修改场次"  class="s5" style="width:60px;height:40px;background-color:#f47920;border-radius: 50%;font-weight: 700;">
        </p>
    </form>
    <form action="deleteChangCi" method="post">
        <span style="display: none">场次编号:<input type="text" name="changciId" class="changciId"></span>
        <p align="center">
            <input type="submit" value="删除场次" class="s6" style="width:60px;height:40px;background-color:#f47920;border-radius: 50%;font-weight: 700;">
        </p>
    </form>
    <form action="addChangCi.jsp" method="post">
        <p align="center">
            <input type="submit" value="添加场次"  style="width:60px;height:40px;background-color:#f47920;border-radius: 50%;font-weight: 700;">
        </p>
    </form>
</div>
<script language="javascript" type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
<script type="text/javascript">
    $(function () {
        var i;
        $("tr").hover(function () {
                i = $(this).index();
                if (i != 0) {
                    $(this).css({"background": "#FFEC8B"});
                }
            }, function () {
                if (i != 0) {
                    $(this).css({"background": "transparent"});
                }
            }
        )
        $(".tt tr").click(function () {
            var yingYuanId=$(this).find("td:first").text();
            $.ajax({
                url:"/allchangting",
                data:{"yingYuanId":yingYuanId},
                type:"post",
                dataType:"json",
                success:function (data) {
                    if(data!=null){
                        $(".ttt tr:gt(0)").empty();
                        for(var k = 0; k < data.length;k++){
                            $(".ttt tbody").append(
                                "<tr style='display: table;table-layout: fixed;width: 100%'>"+
                                "<td>"+data[k].changTingId+"</td>"+
                                "<td>"+data[k].changTingName+"</td>"+
                                "<td>"+data[k].yuanId+"</td>"+
                                "<td>"+data[k].changTingDX+"</td>"+
                                "</tr>"
                            )
                        }
                        $("tr").hover(function () {
                                i = $(this).index();
                                if (i != 0) {
                                    $(this).css({"background": "#FFEC8B"});
                                }
                            }, function () {
                                if (i != 0) {
                                    $(this).css({"background": "transparent"});
                                }
                            }
                        )
                    }
                    $(".ttt tbody tr").click(function () {
                        i=$(this).index();
                        if(i!=0){
                            $(".changTingId").val(this.children[0].innerHTML);
                            $(".changTingId2").val(this.children[0].innerHTML);
                            $(".changTingName").val(this.children[1].innerHTML);
                            $(".yuanId").val(this.children[2].innerHTML);
                            $(".changTingDX").val(this.children[3].innerHTML);
                            //解禁修改按钮
                            $(".s3").attr("disabled",false);
                            //解禁删除按钮
                            $(".s4").attr("disabled",false);
                        }
                        var changTingId=$(this).find("td:first").text();
                        $.ajax({
                            url:"/allChangci",
                            data:{"changtingId":changTingId},
                            type:"post",
                            dataType:"json",
                            success:function (data) {
                                if (data != null) {
                                    $(".tttt tr:gt(0)").empty();
                                    for (var k = 0; k < data.length; k++) {
                                        $(".tttt tbody").append(
                                            "<tr style='display: table;table-layout: fixed;width: 100%'>" +
                                            "<td>" + data[k].changciId + "</td>" +
                                            "<td>" + data[k].changciName + "</td>" +
                                            "<td>" + data[k].changtingId + "</td>" +
                                            "<td>" + data[k].moviesId + "</td>" +
                                            "<td>" + data[k].time + "</td>" +
                                            "<td>" + data[k].zwId + "</td>" +
                                            "</tr>"
                                        )
                                    }
                                    $("tr").hover(function () {
                                            i = $(this).index();
                                            if (i != 0) {
                                                $(this).css({"background": "#FFEC8B"});
                                            }
                                        }, function () {
                                            if (i != 0) {
                                                $(this).css({"background": "transparent"});
                                            }
                                        }
                                    )
                                }
                                $(".tttt tbody tr").click(function () {
                                    i = $(this).index();
                                    if (i != 0) {
                                        $(".changciId").val(this.children[0].innerHTML);
                                        $(".changciName").val(this.children[1].innerHTML);
                                        $(".changtingId").val(this.children[2].innerHTML);
                                        $(".moviesId").val(this.children[3].innerHTML);
                                        $(".time").val(this.children[4].innerHTML);
                                        $(".zwId").val(this.children[5].innerHTML);
                                        //解禁修改按钮
                                        $(".s5").attr("disabled", false);
                                        //解禁删除按钮
                                        $(".s6").attr("disabled", false);
                                    }
                                })
                            }})
                    })
                }
            })
        })
        //开始就禁用修改按钮
        $(".s3").attr("disabled",true);
        //开始就禁用删除按钮
        $(".s4").attr("disabled",true);
        var changTingName=$(".changTingName").val();
        var yuanId=$(".yuanId").val();
        var changTingDX=$(".changTingDX").val();
        //场厅名字
        $(".changTingName").keyup(function () {
            changTingName=$(".changTingName").val();
            yuanId=$(".yuanId").val();
            changTingDX=$(".changTingDX").val();
            console.log(changTingName);
            if(changTingName==""){
                $(".s3").attr("disabled",true);
                $(".s4").attr("disabled",true);
            }else if(changTingName!=""&&yuanId!=""&&changTingDX!=""){
                $(".s3").attr("disabled",false);
                $(".s4").attr("disabled",false);
            }
        })
        //影院id
        $(".yuanId").keyup(function () {
            changTingName=$(".changTingName").val();
            yuanId=$(".yuanId").val();
            changTingDX=$(".changTingDX").val();
            console.log(yuanId);
            if(yuanId==""){
                $(".s3").attr("disabled",true);
                $(".s4").attr("disabled",true);
            }else if(changTingName!=""&&yuanId!=""&&changTingDX!=""){
                $(".s3").attr("disabled",false);
                $(".s4").attr("disabled",false);
            }
        })
        //场厅大小
        $(".changTingDX").keyup(function () {
            changTingName=$(".changTingName").val();
            yuanId=$(".yuanId").val();
            changTingDX=$(".changTingDX").val();
            console.log(changTingDX);
            if(changTingDX==""){
                $(".s3").attr("disabled",true);
                $(".s4").attr("disabled",true);
            }else if(changTingName!=""&&yuanId!=""&&changTingDX!=""){
                $(".s3").attr("disabled",false);
                $(".s4").attr("disabled",false);
            }
        })
        //开始就禁用修改按钮
        $(".s5").attr("disabled",true);
        //开始就禁用删除按钮
        $(".s6").attr("disabled",true);
        var changciName=$(".changciName").val();
        var changtingId=$(".changtingId").val();
        var moviesId=$(".moviesId").val();
        var time=$(".time").val();
        var zwId=$(".zwId").val();
        //场次名字
        $(".changciName").keyup(function () {
             changciName=$(".changciName").val();
             changtingId=$(".changtingId").val();
             moviesId=$(".moviesId").val();
             time=$(".time").val();
             zwId=$(".zwId").val();
            if(changciName==""){
                $(".s5").attr("disabled",true);
                $(".s6").attr("disabled",true);
            }else if(changciName!=""&&changtingId!=""&&moviesId!=""&&time!=""&&zwId!=""){
                $(".s5").attr("disabled",false);
                $(".s6").attr("disabled",false);
            }
        })
        //场厅id
        $(".changtingId").keyup(function () {
            changciName=$(".changciName").val();
            changtingId=$(".changtingId").val();
            moviesId=$(".moviesId").val();
            time=$(".time").val();
            zwId=$(".zwId").val();
            if(changtingId==""){
                $(".s5").attr("disabled",true);
                $(".s6").attr("disabled",true);
            }else if(changciName!=""&&changtingId!=""&&moviesId!=""&&time!=""&&zwId!=""){
                $(".s5").attr("disabled",false);
                $(".s6").attr("disabled",false);
            }
        })
        //电影id
        $(".moviesId").keyup(function () {
            changciName=$(".changciName").val();
            changtingId=$(".changtingId").val();
            moviesId=$(".moviesId").val();
            time=$(".time").val();
            zwId=$(".zwId").val();
            if(moviesId==""){
                $(".s5").attr("disabled",true);
                $(".s6").attr("disabled",true);
            }else if(changciName!=""&&changtingId!=""&&moviesId!=""&&time!=""&&zwId!=""){
                $(".s5").attr("disabled",false);
                $(".s6").attr("disabled",false);
            }
        })
        $(".time").keyup(function () {
            changciName=$(".changciName").val();
            changtingId=$(".changtingId").val();
            moviesId=$(".moviesId").val();
            time=$(".time").val();
            zwId=$(".zwId").val();
            if(time==""){
                $(".s5").attr("disabled",true);
                $(".s6").attr("disabled",true);
            }else if(changciName!=""&&changtingId!=""&&moviesId!=""&&time!=""&&zwId!=""){
                $(".s5").attr("disabled",false);
                $(".s6").attr("disabled",false);
            }
        })
        $(".zwId").keyup(function () {
            changciName=$(".changciName").val();
            changtingId=$(".changtingId").val();
            moviesId=$(".moviesId").val();
            time=$(".time").val();
            zwId=$(".zwId").val();
            if(zwId==""){
                $(".s5").attr("disabled",true);
                $(".s6").attr("disabled",true);
            }else if(changciName!=""&&changtingId!=""&&moviesId!=""&&time!=""&&zwId!=""){
                $(".s5").attr("disabled",false);
                $(".s6").attr("disabled",false);
            }
        })
    })
</script>
</body>
</html>
