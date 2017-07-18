
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<%@ page import="javax.servlet.*"%>
<%@ page import="javax.servlet.http.*"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<%
//定义上载文件的最大字节
int MAX_SIZE = 102400 * 102400;
// 创建根路径的保存变量
String rootPath;
//声明文件读入类
DataInputStream in = null;
FileOutputStream fileOut = null;
//取得客户端的网络地址
String remoteAddr = request.getRemoteAddr();
//获得服务器的名字
String serverName = request.getServerName();

//取得互联网程序的绝对地址
String realPath = request.getRealPath(serverName);
realPath = realPath.substring(0,realPath.lastIndexOf("\\"));
//创建文件的保存目录
rootPath = "D:\\test\\";
//取得客户端上传的数据类型
String contentType = request.getContentType();
try{
if(contentType.indexOf("multipart/form-data") >= 0){
//读入上传的数据
in = new DataInputStream(request.getInputStream());
int formDataLength = request.getContentLength();
if(formDataLength > MAX_SIZE){
out.println("<P>上传的文件字节数不可以超过" + MAX_SIZE + "</p>");
return;
}
//保存上传文件的数据
byte dataBytes[] = new byte[formDataLength];
int byteRead = 0;
int totalBytesRead = 0;
//上传的数据保存在byte数组
while(totalBytesRead < formDataLength){
byteRead = in.read(dataBytes,totalBytesRead,formDataLength);
totalBytesRead += byteRead;
}
//根据byte数组创建字符串
String file = new String(dataBytes);
//out.println(file);
//取得上传的数据的文件名
String saveFile = file.substring(file.indexOf("filename=\"") + 10);


saveFile = saveFile.substring(0,saveFile.indexOf("\n"));
saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1,saveFile.indexOf("\""));
int lastIndex = contentType.lastIndexOf("=");
//取得数据的分隔字符串
String boundary = contentType.substring(lastIndex + 1,contentType.length());
//创建保存路径的文件名
String fileName = rootPath + saveFile;
//out.print(fileName);
int pos;
pos = file.indexOf("filename=\"");
pos = file.indexOf("\n",pos) + 1;
pos = file.indexOf("\n",pos) + 1;
pos = file.indexOf("\n",pos) + 1;
int boundaryLocation = file.indexOf(boundary,pos) - 4;
//out.println(boundaryLocation);
//取得文件数据的开始的位置
int startPos = ((file.substring(0,pos)).getBytes()).length;
//out.println(startPos);
//取得文件数据的结束的位置
int endPos = ((file.substring(0,boundaryLocation)).getBytes()).length;
//out.println(endPos);
//检查上载文件是否存在
File checkFile = new File(fileName);
if(checkFile.exists()){
//out.println("<p>" + saveFile + "文件已经存在.</p>");
}
//检查上载文件的目录是否存在
File fileDir = new File(rootPath);
if(!fileDir.exists()){
fileDir.mkdirs();
}
//创建文件的写出类
fileOut = new FileOutputStream(fileName);
//保存文件的数据
fileOut.write(dataBytes,startPos,(endPos - startPos));
fileOut.close();
//out.println(saveFile + "文件成功上载.</p>");
}else{
String content = request.getContentType();
//out.println("<p>上传的数据类型不是multipart/form-data</p>");
}
}catch(Exception ex){
throw new ServletException(ex.getMessage());
}
%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width">
<meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
<meta name="renderer" content="webkit">
<title>客户信息 - 伙伴云表格</title>
<link rel="icon"  href="assets/img/favicon.ico">
 
<link type="text/css" rel="stylesheet" media="all" href="https://o1aqprei7.qnssl.com/assets/css/hb_style.css?d63f0748b8f3671ac113">
<style id="customStyle">
.hb_wrap .hb_workspaces {
	top: -316px;
}
.hb_wrap_bg {
	height: 782px;
}
.hb_wrap_workspaces .hb_wrap .hb_workspaces {
	top: 0px;
	max-height: 782px;
}
.hb_wrap_workspaces .hb_wrap .switch_notice {
	top: 342px;
}
.hb_wrap_workspaces .hb_wrap .hb_header {
	top: 316px;
}
.hb_wrap_workspaces .hb_wrap .hb_main {
	margin-top: 396px;
}
.hb_wrap_workspaces .hb_wrap .hb_app {
	top: 396px;
}
.hb_wrap .hb_app {
	min-height: 702px;
}
.hb_nav_setting .hb_wrap_workspaces .hb_wrap .hb_setting {
	margin-top: 396px;
}
.hb_wrap .hb_setting {
	height: auto!important;
	height: 702px;
	min-height: 702px;
}
.mod_custom .custom_options .scroll {
	height: 682px;
}
.mod_custom .custom_specific .scroll {
	height: 594px;
}
.hb_item_side .side_content {
	height: 590px;
}
.hb_item_side.h_reply .side_content {
	height: 442px;
}
.hb_item_side.h_comment .side_content {
	height: 467px;
}
.hb_item_side.h_disable .side_content {
	height: 642px;
}
.hb_doc_scroll, .container_scroll {
	height: 694px;
}
.hb_market .market_main, .hb_market .market_side, .hb_market .market_appitem, .hb_market .market_body {
	height: 637px;
}
.input-up{
	margin: 80px auto 0px;
}
.text{
	margin-top: 100px;
	font-size: 30px;
}
.back{
	margin-left: 300px;
}
</style>
</head>
<body class="hb_setting_workspace">
<div id="root">
	<div class="hb_wrap" >
		<div >
			<div >
				<div class="hb_workspaces" >
					<div class="workspaces_h" ><span >工作区</span>
						<p >和小伙伴一起共享数据的地方</p>
					</div>
					<div class="workspaces_c cl" >
						<ul class="mod_workspaces cl" >
							<li >
								<div class="mod_cover c_business" style="background-color:#79BEAF;" ><span class="bl" ></span><span class="br" ></span>
									<h3 class="" style="color:#FFFFFF;background-color:#79BEAF;" >大脑瓜子泽拉图的工作区</h3>
									<img src="https://oss-cn-hangzhou.aliyuncs.com/hb-v4-public/space_cover/1045757/0" class="photo" ></div>
								<noscript >
								</noscript>
							</li>
							<li class="workspace_add" >
								<div ><i ></i><span >创建工作区</span></div>
							</li>
						</ul>
					</div>
				</div>
				<div class="switch_workspaces undefined" ><i title="选择工作区" ></i><span class="ws_title" >切换工作区</span></div>
				<div class="switch_notice" ><i data-tip="通知" ></i></div>
				<div class="hb_header undefined" >
					<div class="set cl" ><span class="set_icon" data-tip="下载手机客户端" data-place="bottom" ><i ></i></span><em class="pipe" ></em><span class="set_icon" data-tip="探索" data-place="bottom" ><i ></i><em class="new" ></em></span><em class="pipe" ></em><span class="mod_avatar avt_small" title="大脑瓜子泽拉图" ><img src="https://oss-cn-hangzhou.aliyuncs.com/hb-v4-public/user_avatar/1311437/32" class="avatar" draggable="false" ><span >大脑瓜子泽拉图</span></span><a href="###" style="display:none;" >hidden</a><a href="###" style="display:none;" >hidden</a><a href="###" style="display:none;" >hidden</a><a href="###" style="display:none;" >解绑</a><a href="###" style="display:none;" >解绑</a><a href="###" style="display:none;" >解绑</a></div>
					<div class="nav nav_second" >
						<h1 ><span ><cite >客户信息</cite></span></h1>
						<h2 ><span ><cite >导入 Excel 新增或更新数据</cite></span></h2>
					</div>
				</div>
				<div class="hb_mask" style="display:none;" ></div>
				<div class="hb_headtips hb_headtips_hide" ><span class="hb_close" ><i ></i></span>
					<p class="info" ></p>
				</div>
				<div class="hb_notice" >
					<div class="notice_title" >
						<h4 >通知</h4>
					</div>
					<div class="mod_notifications" >
						<div >
							<div class="notice_empty" ><i ></i>
								<p ><span >没有</span><span >未读</span><span >通知</span></p>
							</div>
						</div>
						<div class="notice_read" ><a href="###" >查看全部已读通知</a></div>
					</div>
				</div>
			</div>
			<div class="hb_setting" >
				<div class="hb_cancel" >
					<button type="button" class="pn pn_simple" >返回</button>
				</div>
				<div class="setting_body" >
					<div class="mod_import cl" >
						<div class="step" >
							<div class="line" ></div>
							<div class="line line_02" ></div>
							<div class="line line_03" ></div>
							<ul >
								<li class="cur" ><span ><i ></i><b >1</b></span>
									<p >上传Excel</p>
								</li>
								<li class="" ><span ><i ></i><b >2</b></span>
									<p >预览数据</p>
								</li>
								<li class="" ><span ><i ></i><b >3</b></span>
									<p >匹配字段</p>
								</li>
								<li class="" ><span ><i ></i><b >4</b></span>
									<p >导入数据</p>
								</li>
							</ul>
						</div>
						<div class="upload cl" >
							<form  method="post" enctype="multipart/form-data">
							<p class="excel_tips" ><a href="https://www.huoban.com/discovery/manual/data_update/data_import.html" target="_blank" class="btn_help" ><i ></i><span >帮助</span></a><span >您将通过上传的Excel文件，批量追加或更新表格数据</span></p>
							<h5 >导入后只会保留Excel中的数据及通过公式计算后的值，设置的文字颜色等样式、合并的单元格、以及计算公式本身都不会被保留。</h5>
							<div class="select_file" >
								<div class="excel_area cl" >
									<div class="file_upload" >
										<p class="text">文件上传成功</p>
									
									</div>
									<div class="file_drag" >
										<p >请解析文件</p>
										<input class="pn" type="button" value="解析文件">
									</div>
								</div>
							</div>
							</form>
								<a class="pn back" href="tb1.jsp">返回首页</a>
							<h4 ><span >表格示例</span><em >有标准行列的一维数据表格</em></h4>
							<div class="excel_legend legend_1" ></div>
							
							
						</div>
					</div>
				</div>
			</div>
		</div>
		 
		 
	</div>
</div>
 
 <script src="assets/js/jquery.min.js"></script> 
<script src="assets/js/amazeui.min.js"></script>
<script>
	jQuery(document).ready(function($) {
		
		
		$(".pn").on("click", function(){
			setTimeout(function () { 
      		$.ajax({
  				url : "excelServlet?method=excel&name=2.xls",
  				type : "post",
  				dataType : "json",
  				success : function(msg){
					alert("解析成功！！");
  					 
  				},
  				error:function(msg){
  					alert("解析成功！！");
  				}

  			});
   		 }, 2000);
		});
	});
		
</script>
</body>
</html>
