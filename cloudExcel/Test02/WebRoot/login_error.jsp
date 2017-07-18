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
	<link rel="stylesheet" type="text/css" href="assets/css/login.css">
	<style type="text/css">
		.error{
			background: #fafae9;
			border: 1px solid #e2e2d8;
			height: 32px;
			width: 305px;
			margin-bottom: 15px;
			border-radius: 2px;
			line-height: 32px;
			padding-left: 5px;
			box-shadow: 0 1px 2px rgba(0,0,0,.08);
		}
	</style>
</head>
<body>

	<div id="box">
		<h1 class="h1">
			<img src="assets/img/title.png" class="img1">
		</h1>
		<div class="box2">
			<div class="container">
				<hr class="hr1" />
				<h4>登录伙伴</h4>
				<hr class="hr2" />
				<form action="userServlet?method=login" method="post">
					<dl>
						<dd>
							<div class="error">请输入正确的手机号或邮箱</div>
						</dd>
						<dd>
							<input type="text" placeholder="邮箱或手机号" class="input1 phoneNum" name="loginName"/>
						</dd>
						<dd>
							<input type="password" placeholder="密码" class="input2 password" name="password"/>
						</dd>
						<dd class="d1">
							<input type="checkbox" class="checkbox" /><span class="span">下次自动登录</span>
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
	</div>

	
</body>
</html>