<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <link href="css/rightStyle.css" rel="stylesheet" type="text/css">
    <title>场厅添加页面</title>
</head>
<body>
<h1 align="center" style="font-family:华义彩云;color:#f47920">场厅添加页面</h1>
<form name="addChangTingForm"   action="addChangTing" method="post" target="main">
    <table width="55%" height="48" border="1" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" bordercolordark="#f47920"  bordercolorlight="#FFFFFF">
        <tr style="padding:5px;">
            <td bgcolor="#f47920"> 场厅名字：</td>
            <td><input type="text" name="changTingName" id="changTingName" value=""> </td>
            <td bgcolor="#f47920"> 场厅大小：</td>
            <td><input type="text" name="changTingDX" id="changTingDX" value="">
            </td>
        </tr>
        <tr style="padding:5px;">
            <td bgcolor="#f47920"> 所属影院id：</td>
            <td align="left">
                <input type="text" name="yuanId" id="yuanId" value="">
            </td>
        </tr>
        <tr style="padding:5px;">
    </table>
    <p align="center">
        <input type="submit" value="添加" id="s3" style="width:60px;height:40px;background-color:#f47920;border-radius: 50%;font-weight: 700;">
        <input type="reset" value="重置" style="width:60px;height:40px;background-color:#f47920;border-radius: 50%;font-weight: 700;">
    </p>
</form>
<script language="javascript" type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
<script type="text/javascript">
    $(function () {
        var changTingName=$("#changTingName").val();
        var changTingDX=$("#changTingDX").val();
        var yuanId=$("#yuanId").val();
        //开始就禁用添加按钮
        $("#s3").attr("disabled",true);
        //场厅名字框
        $("#changTingName").keyup(function () {
            changTingName=$("#changTingName").val();
            changTingDX=$("#changTingDX").val();
            yuanId=$("#yuanId").val();
            if(changTingName==""){
                $("#s3").attr("disabled",true);
            }else if(changTingName!=""&&changTingDX!=""&&yuanId!=""){
                $("#s3").attr("disabled",false);
            }
        })
        //场厅大小框
        $("#changTingDX").keyup(function () {
            changTingName=$("#changTingName").val();
            changTingDX=$("#changTingDX").val();
            yuanId=$("#yuanId").val();
            if(changTingDX==""){
                $("#s3").attr("disabled",true);
            }else if(changTingName!=""&&changTingDX!=""&&yuanId!=""){
                $("#s3").attr("disabled",false);
            }
        })
        //所属影院id框
        $("#yuanId").keyup(function () {
            changTingName=$("#changTingName").val();
            changTingDX=$("#changTingDX").val();
            yuanId=$("#yuanId").val();
            if(yuanId==""){
                $("#s3").attr("disabled",true);
            }else if(changTingName!=""&&changTingDX!=""&&yuanId!=""){
                $("#s3").attr("disabled",false);
            }
        })
    })
</script>
</body>
</html>