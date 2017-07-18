<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>登录界面</title>
	<script type="text/javascript" src="http://www.imooc.com/data/jquery-1.8.2.min.js"></script>
    <script src="http://www.imooc.com/data/jquery.cookie.js" type="text/javascript"></script>
	<link rel="icon"  href="assets/img/favicon.ico">
	<link rel="stylesheet" type="text/css" href="assets/css/login.css">
</head>
<body>
	
	<div id="box">
		<h1 class="h1">
			<img src="assets/img/title.png" class="img1">
		</h1>
		<div class="container">
			<hr class="hr1" />
			<h4>登录伙伴</h4>
			<hr class="hr2" />
			<form action="userServlet?method=login" method="post">
				<dl>
					<dd>
						<input id="phoneNum" type="text" placeholder="邮箱或手机号" class="input1" name="phoneNum"/>
					</dd>
					<dd>
						<input id="password" type="password" placeholder="密码" class="input2" name="password"/>
					</dd>
					<dd class="d1">
						<%-- 这里写一个cookie，用来保存用户名和密码 --%>
						<input type="checkbox" name="isUseCookie" checked="checked" class="checkbox" /><span class="span" id="save">下次自动登录</span>
						<a href="#">忘记密码了？</a>
					</dd>
					<dd>
						<input type="submit" value="登录" class="login" />
						<input type="button" value="微信登录" class="login2" />
					</dd>
				</dl>
			</form>
			<span class="span1">还没有云表格帐号？<a href="regis.jsp" class="a2">立即注册</a></span>
		</div>
	</div>
	 
</body>
</html>