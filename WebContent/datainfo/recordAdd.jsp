<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>创建活动</title>
     <link rel="stylesheet" href="${pageContext.request.contextPath }/css/pintuer.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/admin.css">
	<script src="${pageContext.request.contextPath }/js/jquery.js"></script>
	<script src="${pageContext.request.contextPath }/js/pintuer.js"></script>
    <script type="text/javascript">
    	var activityname = document.getElementById("activityname").value;
    	var activityDesc = document.getElementById("activityDesc").value;
    	function check(){
    		if(form1.activityname.value==""){
    			alert("请输入活动名称");
    			form1.activityname.focus();
    			return false;
    		}
    		if(form1.activityDesc.value==""){
    			alert("请输入活动描述");
    			form1.activityDesc.focus();
    			return false;
    		}
    		retrun true;
    	}
    </script>
  </head>
  
  <body>
     <div class="panel admin-panel">
  <div class="panel-head"><strong><span class="icon-key"></span> 创建活动</strong></div>
  <div class="body-content">
    <form name="form1" method="post" class="form-x" action="<%=basePath%>exchangeservlet?order=add" onclick="check();">
       <div class="form-group">
        <div class="label">
          <label for="sitename">活动名称：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" id="activityname" name="activityname" size="50" style="width:400px"  placeholder="请输入活动名称" />       
        </div>
      </div>      
      <div class="form-group">
        <div class="label">
          <label for="sitename">活动描述：</label>
        </div>
        <div class="field">
          <textarea  id="activitydesc" name="activitydesc" style="height:140px;width:600px"></textarea>
        </div>
      </div>      
        <div class="field">
          <button class="button bg-main icon-check-square-o" type="submit" onclick="check();"> 创建</button>   
        </div>
      </div>      
  </div>
  </body>
</html>
