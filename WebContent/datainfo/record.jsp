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
        <li> <a class="button border-main icon-plus-square-o" href="<%=basePath %>datainfo/recordAdd.jsp"> 创建活动</a> </li>
        <li>
          	<input type="text" placeholder="请输入搜索关键字" name="keywords" class="input" style="width:250px; line-height:17px;display:inline-block" />
          	<input type="submit" class="button border-main icon-search" value=" 搜 索 ">
      </ul>
    </div>
     <table class="table table-hover text-center">
      <tr>
       <th align="center">活动名称</th>
		<th align="center">活动描述</th>
		<th align="center">创建日期</th>
        <th width="310">操作</th>
      </tr>
      <c:forEach items="${list}" var="d">
        <tr>
         <td>${ d.activityname }</td>
    	 <td>${ d.activitydesc }</td>
          <td>${ d.activitydate }</td>
          <td>
          <div class="button-group"> 
          <a class="button border-main" href="<%=basePath%>exchangeservlet?order=update&activityid=${ d.activityid }"><span class="icon-edit">
          </span> 编辑</a> 
          <a class="button border-red" href="<%=basePath%>exchangeservlet?order=del&activityid=${ d.activityid }" onclick="javascript:if(confirm('删除确认')){return true;}else{return false;}"><span class="icon-trash-o">
          </span> 作废</a> 
           <a class="button border-main" href="<%=basePath%>exchangeservlet?order=produce&activityid=${ d.activityid }"><span class="icon-edit">
          </span> 管理</a> 
          </div>
          </td>
        </tr>
   	</c:forEach>
      <tr>
        <td colspan="8"><div class="pagelist"> 
        <span >总记录数&nbsp;&nbsp;${pager.barsum }</span>
		<span >页码&nbsp;&nbsp;${pager.currentpage }/${pager.pagesum }页</span>
        <a href="<%=basePath%>exchangeservlet?order=list&currentpage=${pager.currentpage}&handle=uppage">上一页</a> 
        <a href="<%=basePath%>exchangeservlet?order=list&currentpage=${pager.currentpage}&handle=downpage">下一页</a>
        <a href="<%=basePath%>exchangeservlet?order=list&currentpage=${pager.currentpage}&handle=lastpage">尾页</a> 
        </div>
        </td>
      </tr>
    </table>
  </div>
  </body>
</html>
