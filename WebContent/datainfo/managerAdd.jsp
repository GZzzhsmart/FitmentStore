<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>新增管理员资料</title>
     <link rel="stylesheet" href="${pageContext.request.contextPath }/css/pintuer.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/admin.css">
	<script src="${pageContext.request.contextPath }/js/pintuer.js"></script>
    <script type="text/javascript">
    	function check(){
    		if(form1.manageraccount.value==""){
    			alert("请输入登录账号");
    			form1.manageraccount.focus();
    			return false;
    		}
    		if(form1.managerpassword.value==""){
    			alert("请输入登录密码");
    			form1.managerpassword.focus();
    			return false;
    		}
    		if(form1.managerpassword.value!=form1.managerpassword1.value){
    			alert("登录密码与确认密码不一致");
    			form1.managerpassword1.focus();
    			return false;
    		}
    		return true;
    	}
    </script>
  </head>
  
  <body>
     <div class="panel admin-panel">
  <div class="panel-head"><strong><span class="icon-key"></span> 注册管理员资料</strong></div>
  <div class="body-content">
    <form method="post" class="form-x" action="<%=basePath%>managerservlet?order=add" enctype="multipart/form-data" method="post" onsubmit="return check();">
      <div class="form-group">
      	 <div class="label">
          <label for="sitename">头像：</label>
        </div>
        <div class="field">
          <input type="file" name="file1"/>       
        </div>
      </div> 
      <div class="form-group">
        <div class="label">
          <label for="sitename">登录账号：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" id="mpass" name="manageraccount" size="50" placeholder="请输入登录账号" />       
        </div>
      </div>      
      <div class="form-group">
        <div class="label">
          <label for="sitename">登录密码：</label>
        </div>
        <div class="field">
          <input type="password" class="input w50" id="managerpassword" name="managerpassword" size="50" placeholder="请输入登录密码"  />         
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label for="sitename">确认密码：</label>
        </div>
        <div class="field">
          <input type="password" class="input w50" id="managerpassword1" name="managerpassword1" size="50" placeholder="请再次输入密码" data-validate="required:请再次输入密码,repeat#newpass:两次输入的密码不一致" />          
        </div>
      </div>
       <div class="form-group">
        <div class="label">
          <label for="sitename">管理员姓名：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" name="managername" size="50" placeholder="请输入管理员姓名"  />          
        </div>
      </div>
       <div class="form-group">
        <div class="label">
          <label for="sitename">性别：</label>
        </div>
        <div class="field">
         	<input type="radio" name="sex" value="0" checked="checked">男
			<input type="radio" name="sex" value="1">女      
        </div>
      </div>
       <div class="form-group">
        <div class="label">
          <label for="sitename">联系电话：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" name="contact" size="50" placeholder="请输入联系电话"  />          
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label></label>
        </div>
        <div class="field">
          <button class="button bg-main icon-check-square-o" type="submit" onclick="check();"> 注册</button>   
        </div>
      </div>      
    </form>
  </div>
</div>
  </body>
</html>
