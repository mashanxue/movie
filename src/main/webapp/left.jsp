<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>crm客户关系管理系统</title>
	<link rel="stylesheet" type="text/css" href="static/js/index.css" />
</head>
<body>
<div id="head">
	<div class="left">
		<a href="#" class="button profile"><img src="imgs/huser.png"
												alt="" /></a>  <a  href="">刷新</a> | <a href="login1.jsp">退出</a>
	</div>
	<div class="right">
		<form action="#" id="search" class="search placeholder">
			<label>编号查找</label> <input type="text" value="" name="q"
									   class="text" /> <input type="submit" value="rechercher"
															  class="submit" />
		</form>
	</div>
</div>--%>

            SIDEBAR
                     -->
<div id="sidebar">
	<ul>

		<li><span><a href="" style="font-size:18px;color: white;text-decoration: none"><img src="static/imgs/inbox.png"  />热门电影</a></span></li>

		<li><span><a href="" style="font-size:18px;color: white;text-decoration: none"><img src="static/imgs/layout.png" />我的影票</a></span></li>
		<li><span><a href="" style="font-size:18px;color: white;text-decoration: none"><img src="static/imgs/brush.png" />查找电影</a></span></li>
		<li><span><a href="" style="font-size:18px;color: white;text-decoration: none"><img src="static/imgs/layout.png" />科幻</a></span></li>

		<li><span><a href="" style="font-size:18px;color: white;text-decoration: none"><img src="static/imgs/brush.png" />动作</a></span></li>

		<li><span><a href="" style="font-size:18px;color: white;text-decoration: none"><img src="static/imgs/brush.png" />爱情</a></span></li>



	</ul>
</div>
<script type="text/javascript" src="static/js/jquery-3.3.1.js"></script>
<script type="text/javascript">
	$(function () {
		$("#bn").click(function () {
			$(".ff").empty();
			$.ajax({
				url:"findAll2",
				data:{},
				type:"post",
				dataType:"json",
				success:function(data){
				    //alert(123)
					if(data!=null){
						for (var i=0;i<data.length;i++) {
                            //alert("<a target='main' href=findAll1/"+data[i].datatypeid+">"+data[i].datatypename+"</a>")
							$("#submenu>ui>li").empty();
							if(data[i].datatypename!=""){
								$("#submenu>ul").append(
										"<li class='ff' >"+
										//无法带参传值
										/*"<a href=\"/findAll1/2\" target=\"main\">"+data[i].datatypename+"</a>"+*/
                                    "<a target='main' href=findAll1?datatypeid="+data[i].datatypeid+">"+data[i].datatypename+"</a>"+
										"</li>"
								)
							}
						}
					}else{
						alert(index);
					}
				}
			});
		})
	});
</script>
<script type="text/javascript" src="static/js/index.js"></script>
</body>
</html>
