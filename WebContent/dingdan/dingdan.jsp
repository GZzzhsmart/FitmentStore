<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <link type="text/css" href="<%=basePath %>ui_css/ui.all.css" rel="stylesheet" />
	<script type="text/javascript" src="<%=basePath %>js/jquery-1.4.1.js"></script>
	<script type="text/javascript" src="<%=basePath %>js/jquery.ui.core.js"></script>
	<script type="text/javascript" src="<%=basePath %>js/jquery.ui.widget.js"></script>
	<script type="text/javascript" src="<%=basePath %>js/jquery.ui.tabs.js"></script>
	<link type="text/css" href="demos.css" rel="stylesheet" />
    <title>My JSP 'dingdan.jsp' starting page</title>
 
  </head>
   <script  type="text/javascript">
	$(function(){
		$("#tabs1").tabs({
			event: 'mouseover'
		});
	});
</script>
  <body>
    <div class="content-list">
    <h2>我的订单</h2>
   
     <div class="demo">
		<div id="tabs1">
			<ul>
				<li><a href="#tabs-1">全部订单</a></li>
				<li><a href="#tabs-2">待付款</a></li>
				<li><a href="#tabs-3">待发货</a></li>
				<li><a href="#tabs-4">待收货</a></li>
				<li><a href="#tabs-4">待评价</a></li>
			</ul>
			<div id="tabs-1">
				<table>
					<tr>
						<td>3dsadsaasd</td>
					</tr>
				</table>
			</div>
			<div id="tabs-2">
				<p>
				TAB222222222222222222222
				</p>
			</div>
			<div id="tabs-3">
				<p>
				TAB32333333333333333333333
				</p>
			</div>
			<div id="tabs-4">
				<p>
				TAB444444444444444444
				</p>
			</div>
		</div>
	</div>
  </body>
</html>
