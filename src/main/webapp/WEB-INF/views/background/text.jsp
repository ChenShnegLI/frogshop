<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<title>开始使用layui</title>
<link rel="stylesheet" type="text/css"
	href="<%=basePath %>layui/css/layui.css" media="all">
</head>
<body>
	<div class="layui-container">
		常规布局（以中型屏幕桌面为例）：
		<div class="layui-row">
			<div class="layui-col-md9">你的内容 9/12</div>
			<div class="layui-col-md3">你的内容 3/12</div>
		</div>

		移动设备、平板、桌面端的不同表现：
		<div class="layui-row">
			<div class="layui-col-xs6 layui-col-sm6 layui-col-md4">移动：6/12
				| 平板：6/12 | 桌面：4/12</div>
			<div class="layui-col-xs6 layui-col-sm6 layui-col-md4">移动：6/12
				| 平板：6/12 | 桌面：4/12</div>
			<div class="layui-col-xs4 layui-col-sm12 layui-col-md4">
				移动：4/12 | 平板：12/12 | 桌面：4/12</div>
			<div class="layui-col-xs4 layui-col-sm7 layui-col-md8">移动：4/12
				| 平板：7/12 | 桌面：8/12</div>
			<div class="layui-col-xs4 layui-col-sm5 layui-col-md4">移动：4/12
				| 平板：5/12 | 桌面：4/12</div>
		</div>
	</div>
	<!-- 你的HTML代码 -->

	<script src="<%=basePath %>layui/layui.js"></script>
	<script>
//一般直接写在一个js文件中
layui.use(['layer', 'form'], function(){
  var layer = layui.layer
  ,form = layui.form;
  
  layer.msg('Hello World');
});
</script>
</body>
</html>