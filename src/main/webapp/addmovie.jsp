<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <link href="css/rightStyle.css" rel="stylesheet" type="text/css">
    <title>电影添加页面</title>
</head>
<body>
<h1 align="center" style="font-family:华义彩云;color:#f47920">电影添加页面</h1>
<form name="addMovieForm"   action="addMovie" method="post" target="main">
    <table width="55%" height="48" border="1" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" bordercolordark="#f47920"  bordercolorlight="#FFFFFF">
        <tr style="padding:5px;">
            <td bgcolor="#f47920"> 电影名字：</td>
            <td><input type="text" name="movieName" id="movieName" value=""> </td>

            <td bgcolor="#f47920"> 地区：</td>
            <td><input type="text" name="movieAddress" id="movieAddress" value="">
            </td>
        </tr>

        <tr style="padding:5px;">
            <td bgcolor="#f47920"> 海报地址：</td>
            <td align="left">
                <input type="text" name="moviePname" id="moviePname" value="">
            </td>

            <td bgcolor="#f47920"> 时长：</td>
            <td align="left">
                <input type="text" name="movieTime" id="movieTime"  value="">
            </td>
        </tr>

        <tr style="padding:5px;">
            <td bgcolor="#f47920"> 类型：</td>
            <td align="left" >
                <select name="movieTypeId" id="movieTypeId">
                    <option value="1">悬疑</option>
                    <option value="2">动作</option>
                    <option value="3">爱情</option>
                    <option value="4">科幻</option>
                </select>
            </td>
            <td bgcolor="#f47920"> 分数：</td>
            <td align="left">
                <input type="text" name="movieScore" id="movieScore"  value="">
            </td>
        </tr>
        <tr style="padding:5px;">
            <td bgcolor="#f47920"> 电影价格：</td>
            <td align="left">
                <input type="text" name="moviePrice" id="moviePrice" value="">
            </td>

            <td bgcolor="#f47920"> 电影主演：</td>
            <td align="left">
                <input type="text" name="movieActor" id="movieActor"  value="">
            </td>
        </tr>
        <tr style="padding:5px;">
            <td bgcolor="#f47920"> 电影摘要：</td>
            <td align="left"  colspan="3">
                <textarea rows="5" cols="60" name="movieAbstract" id="movieAbstract"></textarea>
            </td>
        </tr>
    </table>
    <p align="center">
        <input type="submit" value="添加" id="s3" style="width:60px;height:40px;background-color:#f47920;border-radius: 50%;font-weight: 700;">
        <input type="reset" value="重置" style="width:60px;height:40px;background-color:#f47920;border-radius: 50%;font-weight: 700;">
    </p>
</form>
<script language="javascript" type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
<script type="text/javascript">
    $(function () {
        var moviePrice=$("#moviePrice").val();
        var movieName=$("#movieName").val();
        var movieTime=$("#movieTime").val();
        var movieAddress=$("#movieAddress").val();
        var movieTypeId=$("#movieTypeId").val();
        var movieScore=$("#movieScore").val();
        var movieActor=$("#movieActor").val();
        var moviePname=$("#moviePname").val();
        var movieAbstract=$("#movieAbstract").val();
        //开始就禁用添加按钮
        $("#s3").attr("disabled",true);
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
    })
</script>
</body>
</html>