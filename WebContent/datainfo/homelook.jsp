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
    
    <title>查看详细信息</title>
     <link rel="stylesheet" href="${pageContext.request.contextPath }/css/pintuer.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/admin.css">
	<script src="${pageContext.request.contextPath }/js/jquery.js"></script>
	<script src="${pageContext.request.contextPath }/js/pintuer.js"></script>
  </head>
  
  <body>
     <div class="panel admin-panel">
  <div class="panel-head"><strong><span class="icon-key"></span> 查看家具信息</strong></div>
  <div class="body-content">
    <form method="post" class="form-x" action="<%=basePath%>homeservlet?order=updateSave" enctype="multipart/form-data" method="post" >
        <input type="hidden" name="homeid" value="${home.homeid}">
       <div class="form-group">
        <div class="label">
          <label for="sitename">家具名称：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" id="homename" name="homename" size="50" value="${home.homename }" />       
        </div>
      </div>      
      <div class="form-group">
      	 <div class="label">
          <label for="sitename">家具图片：</label>
        </div>
        <div class="field">
          	<td>
				<input type="file" name="file1"/>
				<img src="${pageContext.request.contextPath }/${home.pictureurl}" height="50" width="50"/>
			</td>   
        </div>
      </div> 
        <div class="form-group">
      	 <div class="label">
          <label for="sitename">家具副图片2：</label>
        </div>
        <div class="field">
          	<td>
				<input type="file" name="file2"/>
				<img src="${pageContext.request.contextPath }/${home.pictureurl2}" height="50" width="50"/>
			</td>   
        </div>
      </div> 
        <div class="form-group">
      	 <div class="label">
          <label for="sitename">家具副图片3：</label>
        </div>
        <div class="field">
          	<td>
				<input type="file" name="file3"/>
				<img src="${pageContext.request.contextPath }/${home.pictureurl3}" height="50" width="50"/>
			</td>   
        </div>
      </div> 
        <div class="form-group">
      	 <div class="label">
          <label for="sitename">家具副图片4：</label>
        </div>
        <div class="field">
          	<td>
				<input type="file" name="file4"/>
				<img src="${pageContext.request.contextPath }/${home.pictureurl4}" height="50" width="50"/>
			</td>   
        </div>
      </div> 
      <div class="form-group">
        <div class="label">
          <label for="sitename">一句话：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" id="oneword" name="oneword" size="50" value="${home.oneword }" />       
        </div>
      </div>      
     
      <div class="form-group">
        <div class="label">
          <label for="sitename">数量：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" name="homecount" size="50" value="${home.homecount }"  />          
        </div>
      </div>
       <div class="form-group">
        <div class="label">
          <label for="sitename">价格：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" name="price" size="50" value="${home.price }"  />          
        </div>
      </div>
       <div class="form-group">
        <div class="label">
          <label for="sitename">是否特价：</label>
        </div>
        <div class="field">
        	<c:if test="${home.tejia==0}">
	          	<input type="radio" id="tejia" name="tejia" value="0" checked="checked">原价
				<input type="radio" id="tejia2" name="tejia" value="1">特价  
			</c:if>
			<c:if test="${home.tejia==1}">
	          	<input type="radio" id="tejia" name="tejia" value="0">原价
				<input type="radio" id="tejia2" name="tejia" value="1" checked="checked">特价  
			</c:if>             
        </div>
      </div>
       <div class="form-group">
        <div class="label">
          <label for="sitename">折扣：</label>
        </div>
        <div class="field">
         	<input type="text" class="input w50" name="discount" size="50" value="${home.discount }"  />     
        </div>
      </div>
       <div class="form-group">
        <div class="label">
          <label for="sitename">状态：</label>
        </div>
        <div class="field">
          	<c:if test="${home.effective==0}">
				<input type="radio" name="effective" value="0" checked="checked">无效
				<input type="radio" name="effective" value="1">有效
			</c:if>
			<c:if test="${home.effective==1}">
				<input type="radio" name="effective" value="0">无效
				<input type="radio" name="effective" value="1" checked="checked">有效
			</c:if>    
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label for="sitename">发布人：</label>
        </div>
        <div class="field">
         	<input type="text" class="input w50" name="replayusername" size="50" value="${home.replayusername }"  />     
        </div>
      </div>
       
      
      
      <div class="form-group">
        <div class="label">
          <label for="sitename">规格：</label>
        </div>
        <div class="field">
         	<input type="text" class="input w50" name="big_small" size="50" placeholder="请输入家具规格"  value="${home.big_small }" />     
        </div>
      </div>  
      <div class="form-group">
        <div class="label">
           <label for="sitename">商品分类：</label>
        </div>
        <div  class="form-group">
        	<select name="chargeType" id="chargeType" style="width:240px;height:40px">
        	<c:if test="${home.chargeType==0}">
        		<option value="0" checked="checked">家具</option>
        		<option value="1">建材灯饰</option>
        		<option value="2">家居家饰</option>
        	</c:if>
        	<c:if test="${home.chargeType==1}">
        		<option value="0">家具</option>
        		<option value="1" checked="checked">建材灯饰</option>
        		<option value="2">家居家饰</option>
        	</c:if>
        	<c:if test="${home.chargeType==2}">
        		<option value="0">家具</option>
        		<option value="1">建材灯饰</option>
        		<option value="2" checked="checked">家居家饰</option>
        	</c:if>
        	</select>
        </div>
      
      <center>
       <div class="form-group">
	       <div class="field">
	          <button class="button bg-main icon-check-square-o" type="submit" onclick="check();"> 保存 </button>   
	        </div>   
        </div>
        </center>
      
      
     
    </form>
  </div>
</div>
  </body>
</html>
