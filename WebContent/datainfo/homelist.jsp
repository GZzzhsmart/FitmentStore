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
   
    <title>家具商品列表</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/pintuer.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/admin.css">
	<script src="${pageContext.request.contextPath }/js/jquery.js"></script>
	<script src="${pageContext.request.contextPath }/js/pintuer.js"></script>
	
  </head>
  
  <body>
   
  <div class="panel admin-panel">
    <div class="panel-head"><strong class="icon-reorder"><a href="<%=basePath%>homeservlet?order=add"> 上传家具</a></strong> <a href="javascript:void(0);" style="float:right; display:none;">添加字段</a></div>
    <div class="padding border-bottom">
    </div>
    <table class="table table-hover text-center">
      <tr>
        <th width="10%">编号</th>
        <th>图片</th>
        <th>名称</th>
        <th>价格</th>
        <th>状态</th>
        <th>发布人</th>
        <th>类型</th>
        <th width="310">操作</th>
      </tr>
    
      <c:forEach items="${list}" var="d">
        <tr>
        
          <td style="text-align:left; padding-left:20px;">${d.homeid }</td>
          <td width="150px" style="text-align:left; padding-left:20px;">
			<img src="<%=basePath %>${d.pictureurl}" height="50" width="50"/>
		  </td>
          <td style="text-align:left; padding-left:20px;">${d.homename }</td>
          <td>${d.price }</td>
          <td>
          	<c:if test="${d.effective==0}">无效</c:if>
			<c:if test="${d.effective==1}">有效</c:if>
          </td>
          <td>${d.replayusername }</td>
          <td>
          	<c:if test="${d.chargeType==0}">家具</c:if>
			<c:if test="${d.chargeType==1}">建材灯饰</c:if>
			<c:if test="${d.chargeType==2}">家居家饰</c:if>
          </td>
          <td>
          <div class="button-group"> 
          <a class="button border-main" href="<%=basePath%>homeservlet?order=update&homeid=${d.homeid }"><span class="icon-edit">
          </span> 查看资料</a> 
          <a class="button border-red" href="<%=basePath%>homeservlet?order=del&homeid=${d.homeid }" onclick="javascript:if(confirm('删除确认')){return true;}else{return false;}"><span class="icon-trash-o">
          </span> 删除</a> 
          </div>
          </td>
        </tr>
   	</c:forEach>
      <tr>
        <td colspan="8"><div class="pagelist"> 
        <span >总记录数&nbsp;&nbsp;${pager.barsum }</span>
		<span >页码&nbsp;&nbsp;${pager.currentpage }/${pager.pagesum }页</span>
        <a href="<%=basePath%>homeservlet?order=list&currentpage=${pager.currentpage}&handle=uppage">上一页</a> 
       	
       
        <a href="<%=basePath%>homeservlet?order=list&currentpage=${pager.currentpage}&handle=downpage">下一页</a>
        <a href="<%=basePath%>homeservlet?order=list&currentpage=${pager.currentpage}&handle=lastpage">尾页</a> 
        </div>
        </td>
      </tr>
    </table>
  </div>
</body>
</html>