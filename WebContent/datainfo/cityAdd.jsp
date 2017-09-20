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
    
    <title>新增城市资料</title>
     <link rel="stylesheet" href="${pageContext.request.contextPath }/css/pintuer.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/admin.css">
	<script src="${pageContext.request.contextPath }/js/jquery2.js"></script>
	<script src="${pageContext.request.contextPath }/js/pintuer.js"></script>
    <script type="text/javascript">
    	function check(){
    		if(form1.cityname.value==""){
    			alert("请输入城市名称");
    			form1.cityname.focus();
    			return false;
    		}
    		return true;
    	}
    </script>
  </head>
  
  <body>
    <div class="panel admin-panel">
  <div class="panel-head"><strong><span class="icon-key"></span> 新增城市资料</strong></div>
  <div class="body-content">
    <form method="post" class="form-x" action="<%=basePath%>cityservlet?order=add" method="post" >
      <div class="form-group">
        <div class="label">
          <label for="sitename">省份名称：</label>
        </div>
        <div class="field">
         <td>
			<select name="provinceid" style="width:155px">
				<c:forEach items="${provList }" var="d">
					<option value="${ d.provinceid }">${ d.provincename }</option>
				</c:forEach>
			</select>
		</td>      
        </div>
      </div>      
      <div class="form-group">
        <div class="label">
          <label for="sitename">城市名称：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" name="cityname" size="50" placeholder="请输入城市名称"  />         
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label></label>
        </div>
        <div class="field">
          <button class="button bg-main icon-check-square-o" type="submit"> 注册</button>   
        </div>
      </div>      
    </form>
  </div>
</div>
  </body>
</html>
