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
<h1 align="center" style="font-family:华义彩云;">电影添加页面</h1>
<form name="addMovieForm"   action="addMovie" method="post" target="main">
    <table width="55%" height="48" border="1" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" bordercolordark="#f47920"  bordercolorlight="#FFFFFF">
        <tr style="padding:5px;">
            <td bgcolor="#f47920"> 电影名字：</td>
            <td><input type="text" name="movieName"  value=""> </td>

            <td bgcolor="#f47920"> 地区：</td>
            <td><input type="text" name="movieAddress" id="movieAddress" value="">
            </td>

        </tr>

        <tr style="padding:5px;">
            <td bgcolor="#f47920"> 海报地址：</td>
            <td align="left">
                <input type="text" name="moviePname"  value="">
            </td>

            <td bgcolor="#f47920"> 时长：</td>
            <td align="left">
                <input type="text" name="movieTime" id="movieTime"  value="">
            </td>
        </tr>

        <tr style="padding:5px;">
            <td bgcolor="#f47920"> 类型：</td>
            <td align="left" >
                <select name="movieType">
                    <option value="1">科幻</option>
                    <option value="2">动作</option>
                    <option value="3">爱情</option>
                    <option value="4">悬疑</option>
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
                <input type="text" name="moviePrice"  value="">
            </td>

            <td bgcolor="#f47920"> 电影主演：</td>
            <td align="left">
                <input type="text" name="movieActor" id="movieActor"  value="">
            </td>
        </tr>
        <tr style="padding:5px;">
            <td bgcolor="#f47920"> 电影摘要：</td>
            <td align="left"  colspan="3">
                <textarea rows="5" cols="60" name="movieAbstract"></textarea>
            </td>
        </tr>
    </table>
    <p align="center">
        <input type="submit" value="添加" style="width:60px;height:40px;background-color:#f47920;border-radius: 50%">
        <input type="reset" value="重置" style="width:60px;height:40px;background-color:#f47920;border-radius: 50%">
    </p>
</form>
</body>
</html>