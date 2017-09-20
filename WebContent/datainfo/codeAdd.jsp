<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>优惠券活动列表</title>
	 <link rel="stylesheet" href="css/pintuer.css">
	<link rel="stylesheet" href="css/admin.css">
	<script src="js/jquery2.js"></script>
	<script src="js/pintuer.js"></script>
  </head>
  <body>
  	<div class="panel admin-panel">
    <div class="panel-head"><strong class="icon-reorder"> 优惠券活动列表</strong> <a href="javascript:void(0);" style="float:right; display:none;">添加字段</a></div>
    <div class="padding border-bottom">
      <ul class="search" style="padding-left:10px;">
        <li>
       	<form name="form1" action="${pageContext.request.contextPath}/exchangeservlet?order=produce" method="post">
    	<input type="hidden" name="activityid" value="${activityid}"/>
    	<table align="center" border="0" cellpadding="1" cellspacing="1" width="100%">
		<tr height="40">
			<td align="right">优惠金额：</td>
			<td><input type="text" name="exchangemeony" size="10"/></td>
			&nbsp;&nbsp;&nbsp;&nbsp;
			<td align="right">有效期</td>
			<td><input type="text" name="validay" size="10"/>天</td>
			&nbsp;&nbsp;&nbsp;&nbsp;
			<td align="right">数量</td>
			<td><input type="text" name="codeCnt" size="10"/></td>
			&nbsp;&nbsp;&nbsp;&nbsp;
			<td align="right"><input type="submit" value=" 生成优惠券 "></td>
		</tr>
     <table class="table table-hover text-center">
      <tr>
        <th width="200" align="center">优惠券兑换码</th>
  		<th width="140" align="center">优惠金额</th>
  		<th width="140" align="center">有效天数</th>
  		<th width="140" align="center">领用人</th>
  		<th width="140" align="center">状态</th>
  		<th width="180" align="center">使用时间</th>
      </tr>
     <c:forEach items="${codeList}" var="d">
			<tr height="40">
				<td width="150px">${d.exchangecode }</td>
				<td>${d.exchangemeony }</td>
				<td>${d.validay }</td>
				<td>${d.userid }</td>
				<td>
					<c:if test="${d.exchangestatus==0}">未领用</c:if>
					<c:if test="${d.exchangestatus==1}">已使用</c:if>
					<c:if test="${d.exchangestatus==2}">已过期</c:if>
				</td>
				<td>${d.exchangedate }</td>
			</tr>
		</c:forEach>
      <tr>
        <td colspan="8"><div class="pagelist"> 
        <span >总记录数&nbsp;&nbsp;${pager.barsum }</span>
		<span >页码&nbsp;&nbsp;${pager.currentpage }/${pager.pagesum }页</span>
        <a href="<%=basePath%>exchangeservlet?order=list1&currentpage=${pager.currentpage}&handle=uppage">上一页</a> 
        <a href="<%=basePath%>exchangeservlet?order=list1&currentpage=${pager.currentpage}&handle=downpage">下一页</a>
        <a href="<%=basePath%>exchangeservlet?order=list1&currentpage=${pager.currentpage}&handle=lastpage">尾页</a> 
        </div>
        </td>
      </tr>
    </table>
  </body>
</html>
