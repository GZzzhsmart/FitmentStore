<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="SQLBean.UserBean"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>查看用户资料</title>
      <link rel="stylesheet" href="${pageContext.request.contextPath }/css/pintuer.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/admin.css">
	<script src="${pageContext.request.contextPath }/js/jquery2.js"></script>
	<script src="${pageContext.request.contextPath }/js/pintuer.js"></script>
  </head>
  
  <body>
  	<%
  		UserBean user = (UserBean)session.getAttribute("user");
  	%>
    <div class="contact">
     <div class="panel admin-panel">
  <div class="panel-head"><strong><span class="icon-key"></span> 查看用户资料</strong></div>
  <div class="body-content">
    <form method="post" class="form-x" action="<%=basePath%>userservlet?order=updateSave" method="post" >
     <input type="hidden" name="userid" value="${user.userid}">
      <div class="form-group">
      	<div class="label">
          <label for="sitename">用户名称：</label>
        </div>
        <div class="field">
          	<td>
				<input type="text" class="input w50" id="username" name="username" size="50" value="${user.username}" /> 
			</td>       
        </div>
      </div>      
      <div class="form-group">
        <div class="label">
          <label for="sitename">用户电话：</label>
        </div>
        <div class="field">
          	<td>
				<input type="text" class="input w50" id="usermobile" name="usermobile" size="50" value="${user.usermobile}" /> 
			</td>       
        </div>
      </div>      
       <div class="form-group">
        <div class="label">
          <label for="sitename">性别：</label>
        </div>
        <div class="field">
         	<td>
				<c:if test="${user.usersex==0}">
				<input type="radio" name="usersex" value="0" checked="checked">男
				<input type="radio" name="usersex" value="1">女
			</c:if>
			<c:if test="${user.usersex==1}">
				<input type="radio" name="usersex" value="0">男
				<input type="radio" name="usersex" value="1"  checked="checked">女
			</c:if>  
			</td>
        </div>
      </div>
       <div class="form-group">
        <div class="label">
          <label for="sitename">家庭住址：</label>
        </div>
        <div class="field">
          	<td>
          		<input type="text" class="input w50" id="userhomeaddress" name="userhomeaddress" size="50" value="${user.userhomeaddress}" /> 
          	</td>          
        </div>
      </div>
      <div class="form-group">
     		<div class="label">
          <label for="sitename">注册时间：</label>
        </div>
        <div class="field">
          	<td>
          		<input type="text" class="input w50" id="userregisterdate" name="userregisterdate" size="50" value="${user.userregisterdate}" /> 
          	</td>          
        </div>  
      </div>
      </div>   
         
  </div>
</div>
  </body>
</html>
