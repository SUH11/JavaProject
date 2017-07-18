<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>伙伴云表格</title>
	<link rel="icon"  href="assets/img/favicon.ico">
	<link rel="stylesheet" type="text/css" href="assets/css/login.css">
	<link rel="stylesheet" type="text/css" href="assets/css/regis.css">
	<style>
		body{
			font-family: "Microsoft Yahei";
			font-weight: 500;
		}
		#box{
			width: 400px;
			height: auto;
			position: absolute;
			left: 50%;
			top: 60%;
			transform: translate(-50%, -50%);
		}
		#box div.container hr.hr1,#box div.container hr.hr2{
			width: 35%;
			border-bottom: 1px solid #fff;
		}
		#box div.container, #box div.box2{
			width: 400px;
			height: auto;
			background: #fff;
		}
		input{
			margin-bottom: 15px;
			color: #000;
			font-weight: 400;
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
				<h4>注册</h4>
				<hr class="hr2" />
				<form action="userServlet?method=register" method="post">
					<dl>
						<dd>
							<ul class="re_ul">
								<li class="re_phone">手机</li>
								<li class="re_email">邮箱</li>
							</ul>
						</dd>
						<dd>
							<input type="text" placeholder="手机号" class="input1 phoneNum" name="phoneNum"/>
						</dd>
						<dd>
							<input type="text" style="width: 210px;float:left;" placeholder="图片验证码" class="input1 imgcheck" name="imgCheck" />
							<span class="span_img"><img src="assets/img/check.png"/></span>
						</dd>
						<dd>
							<input type="text" style="width: 210px;float:left;" placeholder="验证码" class="input1" name="checkNum" />
							<button class="getcheck"  disabled="disabled">获取验证码</button>
						</dd>
						<dd>
							<input type="text" placeholder="姓名" class="input1" name="loginName"/>
						</dd>
						<dd>
							<input type="text" placeholder="密码" class="input1" name="password" style="margin-bottom: 0px;"/>
						</dd>
						<dd class="d1">
							<span class="span">密码长度为8~30个字符，需包含字母和数字</span>
							<span class="span_p">
								<em></em>
								<em></em>
								<em></em>
							</span>
						</dd>
						<dd class="d2">
							<span class="span_a">点击注册表示您已阅读并同意<a href="#" style="margin-left: 0px;">《伙伴服务条款》</a></span>
						</dd>
						<dd>
							<input type="submit" value="注册" class="login" />
							<input type="button" value="微信登录" class="login2" style="margin-top:0px;"/>
						</dd>
					</dl>
				</form>
				<span class="span1">已有云表格帐号？<a href="login.jsp" class="a2">直接登录</a></span>
			</div>
		</div>
	</div>

	
</body>
</html>