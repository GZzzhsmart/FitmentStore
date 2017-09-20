<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="SQLBean.ManagerBean"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="renderer" content="webkit">
    <title>后台管理中心</title>  
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/pintuer.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/admin.css">
    <script src="${pageContext.request.contextPath }/js/jquery.js"></script>   
</head>
<%
	ManagerBean manager = (ManagerBean)session.getAttribute("manager");
%>
<body style="background-color:#f2f9fd;">
<div class="header bg-main">
  <div class="logo margin-big-left fadein-top">
    <h1><img src="${manager.managerfave }" class="radius-circle rotate-hover" height="50" alt="" /><%=manager.getManagername() %></h1>
  </div>
  <div class="head-l">
  <a class="button button-little bg-green" href="${pageContext.request.contextPath }/data/face.jsp" target="_blank"><span class="icon-home"></span> 前台首页</a> &nbsp;&nbsp;
   &nbsp;&nbsp;<a class="button button-little bg-red" href="${pageContext.request.contextPath }/data/login3.jsp"><span class="icon-power-off"></span> 退出登录</a> 
  </div>
</div>
<div class="leftnav">
  <div class="leftnav-title"><strong><span class="icon-list"></span>菜单列表</strong></div>
  <h2><span class="icon-user"></span>基本信息</h2>
  <ul style="display:block">
  	<li><a href="${pageContext.request.contextPath }/datainfo/modifypwd.jsp?managerid=<%=manager.getManagerid() %>" target="right"><span class="icon-caret-right"></span>修改密码</a></li>
  	<li><a href="${pageContext.request.contextPath }/managerservlet?order=update&managerid=<%=manager.getManagerid() %>" target="right"><span class="icon-caret-right"></span>个人信息</a></li>
    <li><a href="${pageContext.request.contextPath }/managerservlet?order=list" target="right"><span class="icon-caret-right"></span>管理员管理</a></li>
    <li><a href="${pageContext.request.contextPath }/userservlet?order=list" target="right"><span class="icon-caret-right"></span>用户管理</a></li>     
    <li><a href="${pageContext.request.contextPath }/provinceservlet?order=list" target="right"><span class="icon-caret-right"></span>省份管理</a></li>
    <li><a href="${pageContext.request.contextPath }/cityservlet?order=list" target="right"><span class="icon-caret-right"></span>城市管理</a></li>  
    <li><a href="${pageContext.request.contextPath }/bankservlet?order=list" target="right"><span class="icon-caret-right"></span>银行管理</a></li>   
    <li><a href="${pageContext.request.contextPath }/homeservlet?order=list" target="right"><span class="icon-caret-right"></span>家具管理</a></li>
    <li><a href="<%=basePath %>dingdanservlet?order=list" target="right"><span class="icon-caret-right"></span>订单管理</a></li>
  </ul>   
  <h2><span class="icon-pencil-square-o"></span>栏目管理</h2>
  <ul>
     <li><a href="${pageContext.request.contextPath }/newmsgservlet?order=list" target="right"><span class="icon-caret-right"></span>通知公告</a></li>
    <li><a href="${pageContext.request.contextPath }/exchangeservlet?order=list" target="right"><span class="icon-caret-right"></span>优惠券管理</a></li>
    <li><a href="${pageContext.request.contextPath }/shopcarservlet?order=list" target="right"><span class="icon-caret-right"></span>购物车管理</a></li>        
  </ul>  
  <h2><span class="icon-pencil-square-o"></span>栏目管理</h2>
  <ul>
    <li><a href="javascript:void(0);" target="right"><span class="icon-caret-right"></span>内容管理</a></li>
    <li><a href="javascript:void(0);" target="right"><span class="icon-caret-right"></span>添加内容</a></li>
    <li><a href="javascript:void(0);" target="right"><span class="icon-caret-right"></span>分类管理</a></li>        
  </ul>  
</div>
<script type="text/javascript">
$(function(){
  $(".leftnav h2").click(function(){
	  $(this).next().slideToggle(200);	
	  $(this).toggleClass("on"); 
  })
  $(".leftnav ul li a").click(function(){
	    $("#a_leader_txt").text($(this).text());
  		$(".leftnav ul li a").removeClass("on");
		$(this).addClass("on");
  })
});
</script>
<ul class="bread">
  <li><a href="javascript:void(0);" target="right" class="icon-home"> 首页</a></li>
  <li><a href="javascript:void(0);" id="a_leader_txt">网站信息</a></li>
  <li><b>当前语言：</b><span style="color:red;">中文</php></span>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;切换语言：<a href="javascript:void(0);">中文</a> &nbsp;&nbsp;<a href="javascript:void(0);">英文</a> </li>
</ul>
<div class="admin">
  <iframe scrolling="auto" rameborder="0" src="${pageContext.request.contextPath }/index.jsp" name="right" width="100%" height="100%"></iframe>
</div>
<div style="text-align:center;">

</div>
</body>
</html>