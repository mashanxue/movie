<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>登录</title>
    <style>
        * {
            font-family: 'montserrat', sans-serif;
        }
        body {
            margin: 0;
            padding: 0;
            background: #333;
        }
        .login-box {
            position: absolute;
            top: 0;
            left: -100%;
            width: 100%;
            height: 100vh; /* vh 视口高度 viewport height 百分比单位*/
            background-image: linear-gradient(
                    45deg,
                    #9fbaa8,
                    #31354c
            ); /*设置颜色渐变 方向(0deg垂直向上) 起点颜色 终点颜色*/
            transition: 0.4s; /*过度效果  property duration timing-function delay 默认属性:all 0 ease 0*/
        }
        .login-form {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%); /*定义 2D 转换8 */
            color: white;
            text-align: center;
        }
        .login-form h1 {
            font-weight: 400;
            margin-top: 0;
        }
        #userLoginName {
            display: block;
            box-sizing: border-box;
            width: 240px;
            background: #ffffff28;
            border: 1px solid white;
            padding: 10px 20px;
            color: white;
            outline: none;
            margin: 10px 0;
            border-radius: 6px;
            text-align: center;
        }
        #userPassWord {
            display: block;
            box-sizing: border-box;
            width: 240px;
            background: #ffffff28;
            border: 1px solid white;
            padding: 10px 20px;
            color: white;
            outline: none;
            margin: 10px 0;
            border-radius: 6px;
            text-align: center;
        }
        .login-btn {
            width: 240px;
            background: #2c3e50;
            border: 0;
            color: white;
            padding: 10px;
            border-radius: 6px;
            cursor: pointer;
        }
        .hide-login-btn {
            color: #000;
            position: absolute;
            top: 40px;
            right: 40px;
            cursor: pointer;
            font-size: 30px;
            opacity: 0.7;
            transform: rotate(45deg); /*定义 2D 转换8 */
        }
        .show-login-btn {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            color: white;
            border: 2px solid;
            padding: 10px;
            cursor: pointer;
        }
        .showed {
            left: 0;
        }
    </style>
</head>
<body>
<div class="show-login-btn">
    -> Show Login Form
</div>

<div class="login-box">
    <div class="hide-login-btn">
        +
    </div>
<%
    String errow=(String)request.getAttribute("errow");
    if(errow==null){
        errow="";
    }
%>
<span class="errow" style="color: red" ><%=errow %></span>
          <form action="login" class="login-form" name="userLoginForm" >
              <h1>Welcome</h1>
              <p>用户名:<input type="text" name="customerName" id="userLoginName"><span id="t1"></span></p>
              <p>密码:<input type="password" name="customerPassword" id="userPassWord"><span id="t2"></span></p>
              <p>验证码:<input type="text" name="yzm"><img src="image.jsp" border="0" align="absmiddle"></p>
              <p><input type="submit" value="登录" class="login-btn"></p>
          </form>

          <script type="text/javascript" src="js/jquery-3.3.1.js"></script>

          <script type="text/javascript">

              $("#userLoginName").blur(function() {
                  var userLoginName=$("#userLoginName").val();
                  if(userLoginName==""||userLoginName==null){
                      $("#t1").text("用户名不能为空!");
                      $("#t1").css("color","red");;
                  }else{
                      $("#t1").text("");
                  }
              });
              //用户名验证

              $("#userLoginName").focus(function() {
                  $("#t1").text("");
              })//得到焦点,清空提示

              $("#userPassWord").blur(function() {
                  var userPassWord=$("#userPassWord").val();
                  if(userPassWord==""||userPassWord==null){
                      $("#t2").text("密码不能为空!");
                      $("#t2").css("color","red");;
                  }
              });//密码空验证
              $("#userPassWord").focus(function() {
                  $("#t2").text("");
              })//得到焦点,清空提示


              function hasClass(element, clssname) {
                  return element.className.match(new RegExp('(\\s|^)' + clssname + '(\\s|$)'))
              }
              function addClass(element, clssname) {
                  if (!this.hasClass(element, clssname)) element.className += ' ' + clssname
              }
              function removeClass(element, clssname) {
                  if (hasClass(element, clssname)) {
                      var reg = new RegExp('(\\s|^)' + clssname + '(\\s|$)')
                      element.className = element.className.replace(reg, ' ')
                  }
              }
              function toggleClass(element, clssname) {
                  if (hasClass(element, clssname)) {
                      removeClass(element, clssname)
                  } else {
                      addClass(element, clssname)
                  }
              }
              var loginBox = document.getElementsByClassName('login-box')
              var showBtn = document.getElementsByClassName('show-login-btn')
              var hideBtn = document.getElementsByClassName('hide-login-btn')
              showBtn[0].addEventListener('click', function() {
                  toggleClass(loginBox[0], 'showed')
              })
              hideBtn[0].addEventListener('click', function() {
                  toggleClass(loginBox[0], 'showed')
              })
          </script>
</body>
</html>