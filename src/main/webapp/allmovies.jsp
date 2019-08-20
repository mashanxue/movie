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
<h1 align="center" style="font-family:华义彩云;color:#f47920">电影单</h1>
<div align="center">
    <form action="allMoviesByType">
    类型:<select name="movieTypeId">
    <option value="1" >悬疑</option>
    <option value="2" >动作</option>
    <option value="3" >爱情</option>
    <option value="4" >科幻</option>
</select>
        <input type="submit" value="搜索"style="width:60px;height:40px;background-color:#f47920;border-radius: 50%;font-weight: 700;">
    </form>
    <form action="allMoviesByName">
    电影名:<input type="text" name="movieName" id="s1">
        <input type="submit" value="搜索" id="s2" style="width:60px;height:40px;background-color:#f47920;border-radius: 50%;font-weight: 700;">
    </form>
</div>
<div align="center">
<table border="1" cellspacing="0" align="center" id="tt" class="divForm">
    <tr bgcolor="#f47920" style="width: 100%;display: table;table-layout: fixed;">
        <th>电影编号</th>
        <th>电影名字</th>
        <th>电影地区</th>
        <th>电影主演</th>
        <th>电影价格</th>
        <th>电影海报</th>
        <th>电影时长</th>
        <th>电影类型</th>
        <th>电影分数</th>
        <th style="display: none;">电影简介</th>
    </tr>
    <c:forEach items="${list}" var="movie">
        <tr style="display: table;table-layout: fixed;width: 100%">
            <td>${movie.moviesId}</td>
            <td>${movie.movieName}</td>
            <td>${movie.movieAddress}</td>
            <td>${movie.movieActor}</td>
            <td>${movie.moviePrice}</td>
            <td>${movie.moviePname}</td>
            <td>${movie.movieTime}</td>
            <td>${movie.movieTypeId}</td>
            <td>${movie.movieScore}</td>
            <td style="display: none;">${movie.movieAbstract}</td>
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
                    <a href="allMovies?PageNum=1"><input type="button" value="首页" style="width:60px;height:40px;background-color:#f47920;border-radius: 50%;font-weight: 700;"></a>
                    <c:choose>
                        <c:when test="${pageInfo.hasPreviousPage }">
                            <a href="allMovies?PageNum=${pageInfo.pageNum-1}" style="color:#f47920;" >上一页 </a>
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
                                <a href="allMovies?PageNum=${item}">${item}</a>
                            </c:otherwise>
                        </c:choose>
                    </c:forEach>
                    <c:choose>
                        <c:when test="${!pageInfo.isLastPage }">
                            <a href="allMovies?PageNum=${pageInfo.pageNum+1}" style="color:#f47920;" >下一页 </a>
                            <a href="allMovies?PageNum=${pageInfo.lastPage}" ><input type="button" value="尾页" style="width:60px;height:40px;background-color:#f47920;border-radius: 50%;font-weight: 700;"></a>
                        </c:when>
                        <c:otherwise>
                            <span style="color:#f47920;">下一页</span>
                            <span><input type="button" value="尾页" style="width:60px;height:40px;background-color:#f47920;border-radius: 50%"></span>
                        </c:otherwise>
                    </c:choose>
                </c:when>
            </c:choose>
        </c:when>
    </c:choose>

</div>
<form action="updateMovies" method="post" align="center">
<p align="center">
    <span style="display: none">电影编号:<input type="text" name="moviesId" id="moviesId"></span>
    电影价格:<input type="text" name="moviePrice" id="moviePrice" class="change">
    电影名字:<input type="text" name="movieName" id="movieName" class="change">
    电影时长:<input type="text" name="movieTime" id="movieTime" class="change">
</p>
<p align="center">
    电影地区:<input type="text" name="movieAddress" id="movieAddress" class="change">
    电影类别:<input type="text" name="movieTypeId" id="movieTypeId" class="change">
    电影评分:<input type="text" name="movieScore" id="movieScore" class="change">

</p>
<p align="center" vertical-align="top">
    电影主演:<input type="text" name="movieActor" id="movieActor" class="change">
    电影海报:<input type="text" name="moviePname" id="moviePname" class="change">
    电影摘要:<textarea style="vertical-align:text-top" rows="10" cols="23" name="movieAbstract" id="movieAbstract" class="change"> </textarea>
</p>
<input type="submit" value="修改" id="s3" style="width:60px;height:40px;background-color:#f47920;border-radius: 50%;font-weight: 700;">
</form>
<form action="deleteMovies" method="post" align="center">
    <p align="center">
        <span style="display: none">电影编号:<input type="text" name="moviesId" id="moviesId2"></span>
    </p>
    <input type="submit" value="删除"  style="width:60px;height:40px;background-color:#f47920;border-radius: 50%;font-weight: 700;">
</form>
<script language="javascript" type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
<script type="text/javascript">
        $(function() {
            var i;
            $("tr").hover(function(){
                i=$(this).index();
                if(i!=0){
                    $(this).css({"background":"#FFEC8B"});
                        }
                },function(){
                        if(i!=0){
                            $(this).css({"background":"transparent"});
                        }
                        }
                    )
                    $("tr").click(function () {
                        i=$(this).index();
                        if(i!=0){
                            $("#moviesId").val(this.children[0].innerHTML);
                            $("#moviesId2").val(this.children[0].innerHTML);
                            $("#movieName").val(this.children[1].innerHTML);
                            $("#movieAddress").val(this.children[2].innerHTML);
                            $("#movieActor").val(this.children[3].innerHTML);
                            $("#moviePrice").val(this.children[4].innerHTML);
                            $("#moviePname").val(this.children[5].innerHTML);
                            $("#movieTime").val(this.children[6].innerHTML);
                            $("#movieTypeId").val(this.children[7].innerHTML);
                            $("#movieScore").val(this.children[8].innerHTML);
                            $("#movieAbstract").val(this.children[9].innerHTML);
                        }
                    })
            var smoviename = $("#s1").val();
            var moviePrice=$("#moviePrice").val();
            var movieName=$("#movieName").val();
            var movieTime=$("#movieTime").val();
            var movieAddress=$("#movieAddress").val();
            var movieTypeId=$("#movieTypeId").val();
            var movieScore=$("#movieScore").val();
            var movieActor=$("#movieActor").val();
            var moviePname=$("#moviePname").val();
            var movieAbstract=$("#movieAbstract").val();
            //电影名输入框判断
            if(smoviename== ""){
                $("#s2").attr("disabled",true);
            }
           $("#s1").keyup(
               function () {
                   smoviename = $("#s1").val();
                   if(smoviename== ""){
                       $("#s2").attr("disabled",true);
                   }else{
                       $("#s2").attr("disabled",false);
                   }
           }
           );
            //开始就禁用修改按钮
            $("#s3").attr("disabled",true);
            //点击表格将使修改按钮可以点击
            $("tr").click(function () {
                $("#s3").attr("disabled",false);
            })
            //电影价格框
            $("#moviePrice").keyup(function () {
                 moviePrice=$("#moviePrice").val();
                 movieName=$("#movieName").val();
                 movieTime=$("#movieTime").val();
                 movieAddress=$("#movieAddress").val();
                 movieTypeId=$("#movieTypeId").val();
                 movieScore=$("#movieScore").val();
                 movieActor=$("#movieActor").val();
                 moviePname=$("#moviePname").val();
                 movieAbstract=$("#movieAbstract").val();
                if(moviePrice==""){
                    $("#s3").attr("disabled",true);
                }else if(moviePrice!=""&&movieName!=""&&movieTime!=""&&movieAddress!=""&&movieTypeId!=""&&movieScore!=""&&movieActor!=""&&moviePname!=""&&movieAbstract!=""){
                    $("#s3").attr("disabled",false);
                }
            })
            //电影名字框
            $("#movieName").keyup(function () {
                moviePrice=$("#moviePrice").val();
                movieName=$("#movieName").val();
                movieTime=$("#movieTime").val();
                movieAddress=$("#movieAddress").val();
                movieTypeId=$("#movieTypeId").val();
                movieScore=$("#movieScore").val();
                movieActor=$("#movieActor").val();
                moviePname=$("#moviePname").val();
                movieAbstract=$("#movieAbstract").val();
                if(movieName==""){
                    $("#s3").attr("disabled",true);
                }else if(moviePrice!=""&&movieName!=""&&movieTime!=""&&movieAddress!=""&&movieTypeId!=""&&movieScore!=""&&movieActor!=""&&moviePname!=""&&movieAbstract!=""){
                    $("#s3").attr("disabled",false);
                }
            })
            //电影时间框
            $("#movieTime").keyup(function () {
                moviePrice=$("#moviePrice").val();
                movieName=$("#movieName").val();
                movieTime=$("#movieTime").val();
                movieAddress=$("#movieAddress").val();
                movieTypeId=$("#movieTypeId").val();
                movieScore=$("#movieScore").val();
                movieActor=$("#movieActor").val();
                moviePname=$("#moviePname").val();
                movieAbstract=$("#movieAbstract").val();
                if(movieTime==""){
                    $("#s3").attr("disabled",true);
                }else if(moviePrice!=""&&movieName!=""&&movieTime!=""&&movieAddress!=""&&movieTypeId!=""&&movieScore!=""&&movieActor!=""&&moviePname!=""&&movieAbstract!=""){
                    $("#s3").attr("disabled",false);
                }
            })
            //电影国家框
            $("#movieAddress").keyup(function () {
                moviePrice=$("#moviePrice").val();
                movieName=$("#movieName").val();
                movieTime=$("#movieTime").val();
                movieAddress=$("#movieAddress").val();
                movieTypeId=$("#movieTypeId").val();
                movieScore=$("#movieScore").val();
                movieActor=$("#movieActor").val();
                moviePname=$("#moviePname").val();
                movieAbstract=$("#movieAbstract").val();
                if(movieAddress==""){
                    $("#s3").attr("disabled",true);
                }else if(moviePrice!=""&&movieName!=""&&movieTime!=""&&movieAddress!=""&&movieTypeId!=""&&movieScore!=""&&movieActor!=""&&moviePname!=""&&movieAbstract!=""){
                    $("#s3").attr("disabled",false);
                }
            })
            //电影类型框
            $("#movieTypeId").keyup(function () {
                moviePrice=$("#moviePrice").val();
                movieName=$("#movieName").val();
                movieTime=$("#movieTime").val();
                movieAddress=$("#movieAddress").val();
                movieTypeId=$("#movieTypeId").val();
                movieScore=$("#movieScore").val();
                movieActor=$("#movieActor").val();
                moviePname=$("#moviePname").val();
                movieAbstract=$("#movieAbstract").val();
                if(movieTypeId==""){
                    $("#s3").attr("disabled",true);
                }else if(moviePrice!=""&&movieName!=""&&movieTime!=""&&movieAddress!=""&&movieTypeId!=""&&movieScore!=""&&movieActor!=""&&moviePname!=""&&movieAbstract!=""){
                    $("#s3").attr("disabled",false);
                }
            })
            //电影分数框
            $("#movieScore").keyup(function () {
                moviePrice=$("#moviePrice").val();
                movieName=$("#movieName").val();
                movieTime=$("#movieTime").val();
                movieAddress=$("#movieAddress").val();
                movieTypeId=$("#movieTypeId").val();
                movieScore=$("#movieScore").val();
                movieActor=$("#movieActor").val();
                moviePname=$("#moviePname").val();
                movieAbstract=$("#movieAbstract").val();
                if(movieScore==""){
                    $("#s3").attr("disabled",true);
                }else if(moviePrice!=""&&movieName!=""&&movieTime!=""&&movieAddress!=""&&movieTypeId!=""&&movieScore!=""&&movieActor!=""&&moviePname!=""&&movieAbstract!=""){
                    $("#s3").attr("disabled",false);
                }
            })
            //电影主演框
            $("#movieActor").keyup(function () {
                moviePrice=$("#moviePrice").val();
                movieName=$("#movieName").val();
                movieTime=$("#movieTime").val();
                movieAddress=$("#movieAddress").val();
                movieTypeId=$("#movieTypeId").val();
                movieScore=$("#movieScore").val();
                movieActor=$("#movieActor").val();
                moviePname=$("#moviePname").val();
                movieAbstract=$("#movieAbstract").val();
                if(movieActor==""){
                    $("#s3").attr("disabled",true);
                }else if(moviePrice!=""&&movieName!=""&&movieTime!=""&&movieAddress!=""&&movieTypeId!=""&&movieScore!=""&&movieActor!=""&&moviePname!=""&&movieAbstract!=""){
                    $("#s3").attr("disabled",false);
                }
            })
            //电影海报框
            $("#moviePname").keyup(function () {
                moviePrice=$("#moviePrice").val();
                movieName=$("#movieName").val();
                movieTime=$("#movieTime").val();
                movieAddress=$("#movieAddress").val();
                movieTypeId=$("#movieTypeId").val();
                movieScore=$("#movieScore").val();
                movieActor=$("#movieActor").val();
                moviePname=$("#moviePname").val();
                movieAbstract=$("#movieAbstract").val();
                if(moviePname==""){
                    $("#s3").attr("disabled",true);
                }else if(moviePrice!=""&&movieName!=""&&movieTime!=""&&movieAddress!=""&&movieTypeId!=""&&movieScore!=""&&movieActor!=""&&moviePname!=""&&movieAbstract!=""){
                    $("#s3").attr("disabled",false);
                }
            })
            //电影简介框
            $("#movieAbstract").keyup(function () {
                moviePrice=$("#moviePrice").val();
                movieName=$("#movieName").val();
                movieTime=$("#movieTime").val();
                movieAddress=$("#movieAddress").val();
                movieTypeId=$("#movieTypeId").val();
                movieScore=$("#movieScore").val();
                movieActor=$("#movieActor").val();
                moviePname=$("#moviePname").val();
                movieAbstract=$("#movieAbstract").val();
                if(movieAbstract==""){
                    $("#s3").attr("disabled",true);
                }else if(moviePrice!=""&&movieName!=""&&movieTime!=""&&movieAddress!=""&&movieTypeId!=""&&movieScore!=""&&movieActor!=""&&moviePname!=""&&movieAbstract!=""){
                    $("#s3").attr("disabled",false);
                }
            })
            // $(".change").keyup(function () {
            //     var change=$(".change").val();
            //     if(change==""){
            //         $("#s3").attr("disabled",true);
            //     }else{
            //         $("#s3").attr("disabled",false);
            //     }
            // })
            // if(movieAddress== ""){
            //     $("#s3").attr("disabled",true);
            // }
            // if(movieTypeId== ""){
            //     $("#s3").attr("disabled",true);
            // }
            // if(movieScore== ""){
            //     $("#s3").attr("disabled",true);
            // }
            // if(movieActor== ""){
            //     $("#s3").attr("disabled",true);
            // }
            // if(moviePname== ""){
            //     $("#s3").attr("disabled",true);
            // }if(movieAbstract== ""){
            //     $("#s3").attr("disabled",true);
            // }
        })
</script>
</body>
</html>