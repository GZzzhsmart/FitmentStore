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
    
    <title>修改管理员资料</title>
     <link rel="stylesheet" href="${pageContext.request.contextPath }/css/pintuer.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/admin.css">
	<script src="${pageContext.request.contextPath }/js/jquery.js"></script>
	<script src="${pageContext.request.contextPath }/js/pintuer.js"></script>
    <script type="text/javascript">
    	function check(){
    		if(form1.manageraccount.value==""){
    			alert("请输入登录账号");
    			form1.manageraccount.focus();
    			return false;
    		}
    		if(form1.managername.value==""){
    			alert("请输入登录姓名");
    			form1.managername.focus();
    			return false;
    		}
    		if(contact.length!=11){
    			alert("请输入11位数字的电话号码");
    			form1.contact.focus();
    			return false;
    		}
    		return true;
    	}
    </script>
  </head>
  
  <body>
     <div class="panel admin-panel">
  <div class="panel-head"><strong><span class="icon-key"></span> 修改管理员资料</strong></div>
  <div class="body-content">
    <form method="post" class="form-x" action="<%=basePath%>managerservlet?order=updateSave" method="post" enctype="multipart/form-data">
     <input type="hidden" name="managerid" value="${manager.managerid}">
      <div class="form-group">
        <div class="label">
          <label for="sitename">登录账号：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" id="mpass" name="manageraccount" size="50" value="${manager.manageraccount}" />       
        </div>
      </div>      
       <div class="form-group">
        <div class="label">
          <label for="sitename">管理员姓名：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" id="managername"  name="managername" size="50" value="${manager.managername}"  />          
        </div>
      </div>
       <div class="form-group">
        <div class="label">
          <label for="sitename">性别：</label>
        </div>
        <div class="field">
         	<c:if test="${manager.sex==0}">
				<input type="radio" name="sex" value="0" checked="checked">男
				<input type="radio" name="sex" value="1">女
			</c:if>
			<c:if test="${manager.sex==1}">
				<input type="radio" name="sex" value="0">男
				<input type="radio" name="sex" value="1"  checked="checked">女
			</c:if>  
        </div>
      </div>
       <div class="form-group">
        <div class="label">
          <label for="sitename">联系电话：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" id="contact" name="contact" size="50" value="${manager.contact}" />          
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
