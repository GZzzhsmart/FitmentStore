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
    
    <title>修改活动</title>
     <link rel="stylesheet" href="${pageContext.request.contextPath }/css/pintuer.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/admin.css">
	<script src="${pageContext.request.contextPath }/js/jquery.js"></script>
	<script src="${pageContext.request.contextPath }/js/pintuer.js"></script>
  </head>
  
  <body>
     <div class="panel admin-panel">
  <div class="panel-head"><strong><span class="icon-key"></span> 创建活动</strong></div>
  <div class="body-content">
    <form name="form1" method="post" class="form-x" action="<%=basePath%>exchangeservlet?order=updateSave" onclick="check();">
      <input type="hidden" name="activityid" value="${exchange.activityid }">
       <div class="form-group">
        <div class="label">
          <label for="sitename">活动名称：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50"  name="activityname" size="50" style="width:400px"  value="${exchange.activityname }" />       
        </div>
      </div>      
      <div class="form-group">
        <div class="label">
          <label for="sitename">活动描述：</label>
        </div>
        <div class="field">
          <textarea   name="activitydesc" style="height:140px;width:600px">
          	${exchange.activitydesc }
          </textarea>
        </div>
      </div>      
        <div class="field">
          <button class="button bg-main icon-check-square-o" type="submit" onclick="check();"> 修改</button>   
        </div>
      </div>      
  </div>
  </body>
</html>
