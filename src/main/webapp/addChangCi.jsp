<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <link href="css/rightStyle.css" rel="stylesheet" type="text/css">
    <title>场次添加页面</title>
</head>
<body>
<h1 align="center" style="font-family:华义彩云;color:#f47920">场次添加页面</h1>
<form name="addChangCiForm"   action="addChangCi" method="post" target="main">
    <table width="55%" height="48" border="1" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" bordercolordark="#f47920"  bordercolorlight="#FFFFFF">
        <tr style="padding:5px;">
            <td bgcolor="#f47920"> 场次名字：</td>
            <td><input type="text" name="changciName" class="changciName" value=""> </td>
            <td bgcolor="#f47920"> 场厅id：</td>
            <td><input type="text" name="changtingId" class="changtingId" value="">
            </td>
        </tr>
        <tr style="padding:5px;">
            <td bgcolor="#f47920"> 影片id：</td>
            <td align="left">
                <input type="text" name="moviesId" class="moviesId" value="">
            </td>
            <td bgcolor="#f47920"> 开始时间：</td>
            <td align="left">
                <input type="text" name="time" class="time" value="">
            </td>
        </tr>
        <tr style="padding:5px;">
            <td bgcolor="#f47920"> 座位详情id：</td>
            <td align="left">
                <input type="text" name="zwId" class="zwId" value="">
            </td>
        </tr>
    </table>
    <p align="center">
        <input type="submit" value="添加" class="s3" style="width:60px;height:40px;background-color:#f47920;border-radius: 50%;font-weight: 700;">
        <input type="reset" value="重置" style="width:60px;height:40px;background-color:#f47920;border-radius: 50%;font-weight: 700;">
    </p>
</form>
<script language="javascript" type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
<script type="text/javascript">
    $(function () {
        var changciName=$(".changciName").val();
        var changtingId=$(".changtingId").val();
        var moviesId=$(".moviesId").val();
        var time=$(".time").val();
        var zwId=$(".zwId").val();
        //开始就禁用添加按钮
        $(".s3").attr("disabled",true);
        //场次名字框
        $(".changciName").keyup(function () {
             changciName=$(".changciName").val();
             changtingId=$(".changtingId").val();
             moviesId=$(".moviesId").val();
             time=$(".time").val();
             zwId=$(".zwId").val();
            if(changciName==""){
                $(".s3").attr("disabled",true);
            }else if(changciName!=""&&changtingId!=""&&moviesId!=""&&time!=""&&zwId!=""){
                $(".s3").attr("disabled",false);
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
                $(".s3").attr("disabled",true);
            }else if(changciName!=""&&changtingId!=""&&moviesId!=""&&time!=""&&zwId!=""){
                $(".s3").attr("disabled",false);
            }
        })
        //影片id框
        $(".moviesId").keyup(function () {
            changciName=$(".changciName").val();
            changtingId=$(".changtingId").val();
            moviesId=$(".moviesId").val();
            time=$(".time").val();
            zwId=$(".zwId").val();
            if(moviesId==""){
                $(".s3").attr("disabled",true);
            }else if(changciName!=""&&changtingId!=""&&moviesId!=""&&time!=""&&zwId!=""){
                $(".s3").attr("disabled",false);
            }
        })
        //影片id框
        $(".time").keyup(function () {
            changciName=$(".changciName").val();
            changtingId=$(".changtingId").val();
            moviesId=$(".moviesId").val();
            time=$(".time").val();
            zwId=$(".zwId").val();
            if(time==""){
                $(".s3").attr("disabled",true);
            }else if(changciName!=""&&changtingId!=""&&moviesId!=""&&time!=""&&zwId!=""){
                $(".s3").attr("disabled",false);
            }
        })
        //影片id框
        $(".zwId").keyup(function () {
            changciName=$(".changciName").val();
            changtingId=$(".changtingId").val();
            moviesId=$(".moviesId").val();
            time=$(".time").val();
            zwId=$(".zwId").val();
            if(zwId==""){
                $(".s3").attr("disabled",true);
            }else if(changciName!=""&&changtingId!=""&&moviesId!=""&&time!=""&&zwId!=""){
                $(".s3").attr("disabled",false);
            }
        })
    })
</script>
</body>
</html>