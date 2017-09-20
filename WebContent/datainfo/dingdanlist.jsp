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
   
    <title>订单管理</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/pintuer.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/admin.css">
	<script src="${pageContext.request.contextPath }/js/jquery.js"></script>
	<script src="${pageContext.request.contextPath }/js/pintuer.js"></script>
  </head>
  
  <body>
   
  <div class="panel admin-panel">
    <div class="panel-head"><strong class="icon-reorder"><a href="javascript:void(0);"> 订单管理</a></strong> <a href="javascript:void(0);" style="float:right; display:none;">添加字段</a></div>
    <div class="padding border-bottom">
    </div>
    <table class="table table-hover text-center">
      <tr>
        <th width="10%">图片</th>
        <th>名称</th>
        <th>订单号</th>
        <th>时间</th>
        <th>价格</th>
        <th>状态</th>
        <th>发布人</th>
        <th>类型</th>
        <th width="310">操作</th>
      </tr>
    
      <c:forEach items="${list}" var="d">
        <tr>
          <td width="150px" style="text-align:left; padding-left:20px;">
			<img src="<%=basePath %>${d.tupian }" width="100" height="67" >
		  </td>
          <td style="text-align:left; padding-left:20px;">${d.name }</td>
          <td>${d.dingdannumber }</td>
          <td>${d.time }</td>
           <td>${d.price }</td>
          <td>
          	<c:if test="${d.effective==1}">待付款</c:if>
			<c:if test="${d.effective==2}">待发货</c:if>
			<c:if test="${d.effective==3}">待收货</c:if>
			<c:if test="${d.effective==4}">待评价</c:if>
          </td>
          <td>
	          <div class="button-group"> 
	          <a class="button border-main" href="<%=basePath%>dingdanservlet?order=update&dingdanid=${d.dingdanid }"><span class="icon-edit">
	          </span>详情</a> 
	           <c:if test="${d.effective==1}">
	           		<a class="button border-red" href="<%=basePath%>dingdanservlet?order=status&status=2&dingdanid=${d.dingdanid }"><span class="icon-trash-o"></span>待发货</a>
	           		<a class="button border-red" href="<%=basePath%>dingdanservlet?order=status&status=3&dingdanid=${d.dingdanid }"><span class="icon-trash-o"></span>待收货</a>
	           		<a class="button border-red" href="<%=basePath%>dingdanservlet?order=status&status=4&dingdanid=${d.dingdanid }"><span class="icon-trash-o"></span>待评价</a>
	           </c:if>
	           <c:if test="${d.effective==2}">
	           		<a class="button border-red" href="<%=basePath%>dingdanservlet?order=status&status=1&dingdanid=${d.dingdanid }"><span class="icon-trash-o"></span>待付款</a>
	           		<a class="button border-red" href="<%=basePath%>dingdanservlet?order=status&status=3&dingdanid=${d.dingdanid }"><span class="icon-trash-o"></span>待收货</a>
	           		<a class="button border-red" href="<%=basePath%>dingdanservlet?order=status&status=4&dingdanid=${d.dingdanid }"><span class="icon-trash-o"></span>待评价</a>
	           </c:if>
	           <c:if test="${d.effective==3}">
	           		<a class="button border-red" href="<%=basePath%>dingdanservlet?order=status&status=1&dingdanid=${d.dingdanid }"><span class="icon-trash-o"></span>待付款</a>
	           		<a class="button border-red" href="<%=basePath%>dingdanservlet?order=status&status=2&dingdanid=${d.dingdanid }"><span class="icon-trash-o"></span>待发货</a>
	           		<a class="button border-red" href="<%=basePath%>dingdanservlet?order=status&status=4&dingdanid=${d.dingdanid }"><span class="icon-trash-o"></span>待评价</a>
	           </c:if>
	           <c:if test="${d.effective==4}">
	           		<a class="button border-red" href="<%=basePath%>dingdanservlet?order=status&status=1&dingdanid=${d.dingdanid }"><span class="icon-trash-o"></span>待付款</a>
	           		<a class="button border-red" href="<%=basePath%>dingdanservlet?order=status&status=2&dingdanid=${d.dingdanid }"><span class="icon-trash-o"></span>待发货</a>
	           		<a class="button border-red" href="<%=basePath%>dingdanservlet?order=status&status=3&dingdanid=${d.dingdanid }"><span class="icon-trash-o"></span>待收货</a>
	           </c:if>
	          </div>
          </td>
        </tr>
   	</c:forEach>
      <tr>
        <td colspan="8"><div class="pagelist"> 
        <span >总记录数&nbsp;&nbsp;${pager.barsum }</span>
		<span >页码&nbsp;&nbsp;${pager.currentpage }/${pager.pagesum }页</span>
        <a href="<%=basePath%>dingdanservlet?order=list&currentpage=${pager.currentpage}&handle=uppage">上一页</a> 
        <a href="<%=basePath%>dingdanservlet?order=list&currentpage=${pager.currentpage}&handle=downpage">下一页</a>
        <a href="<%=basePath%>dingdanservlet?order=list&currentpage=${pager.currentpage}&handle=lastpage">尾页</a> 
        </div>
        </td>
      </tr>
    </table>
  </div>
</body>
</html>