<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="SQLBean.ManagerBean"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>修改个人密码</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/pintuer.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/admin.css">
	<script src="${pageContext.request.contextPath }/js/jquery2.js"></script>
	<script src="${pageContext.request.contextPath }/js/pintuer.js"></script>
  </head>
  <body>
  <%
  	ManagerBean manager = (ManagerBean)session.getAttribute("manager");
  %>
   <h2 align="center"><font color='red'>${msg }</font></h2>
    <div class="panel admin-panel">
  <div class="panel-head"><strong><span class="icon-key"></span> 修改个人密码</strong></div>
  <div class="body-content">
    <form method="post" class="form-x" action="<%=basePath%>managerservlet?order=modifyPwd" method="post" >
      <input type="hidden" name="managerid" value="<%=manager.getManagerid() %>">
      <div class="form-group">
      	<div class="label">
          <label for="sitename">管理员账号：</label>
        </div>
        <div class="field">
          ${manager.manageraccount }       
        </div>
      </div>      
      <div class="form-group">
        <div class="label">
          <label for="sitename">原始密码：</label>
        </div>
        <div class="field">
          <input type="password" class="input w50" id="oldpwd" name="oldpwd" size="50" placeholder="请输入原始密码" data-validate="required:请输入原始密码" />       
        </div>
      </div>      
      <div class="form-group">
        <div class="label">
          <label for="sitename">新密码：</label>
        </div>
        <div class="field">
          <input type="password" class="input w50" name="managerpassword" size="50" placeholder="请输入新密码"  />         
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label for="sitename">确认新密码：</label>
        </div>
        <div class="field">
          <input type="password" class="input w50" name="cfgpwd" size="50" placeholder="请再次输入新密码"  />          
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label></label>
        </div>
        <div class="field">
          <button class="button bg-main icon-check-square-o" type="submit"> 修改</button>   
        </div>
      </div>      
    </form>
  </div>
</div>
  </body>
</html>
