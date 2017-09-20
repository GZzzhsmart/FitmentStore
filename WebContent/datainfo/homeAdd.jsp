<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>上传家具</title>
    <script type="text/javascript" src="<%=basePath %>js/jquery-1.4.1.js"></script>
     <link rel="stylesheet" href="${pageContext.request.contextPath }/css/pintuer.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/admin.css">
    <script type="text/javascript">
    	$(function(){
    		$("#chargeType").bind("change",function(){
    			if(document.getElementById("chargeType").value==0){
	    			document.getElementById("hometype").style.display='block';
					document.getElementById("homei").style.display='none';
					document.getElementById("homeh").style.display='none';
				}
				if(document.getElementById("chargeType").value==1){
	    			document.getElementById("hometype").style.display='none';
					document.getElementById("homei").style.display='block';
					document.getElementById("homeh").style.display='none';
				}
				if(document.getElementById("chargeType").value==2){
	    			document.getElementById("hometype").style.display='none';
					document.getElementById("homei").style.display='none';
					document.getElementById("homeh").style.display='block';
				}
    		});
    		$("#tejia").bind("click",function(){
				document.getElementById("discount").style.display='none';
    		});
    		$("#tejia2").bind("click",function(){
	    		document.getElementById("discount").style.display='block';
				
    		});
    	
    	});
    	
    </script>
  </head>
  
  <body>
     <div class="panel admin-panel">
  <div class="panel-head"><strong><span class="icon-key"></span> 上传家具信息</strong></div>
  <div class="body-content">
    <form method="post" class="form-x" action="<%=basePath%>homeservlet?order=add" enctype="multipart/form-data" method="post" onsubmit="return check();">
       <div class="form-group">
        <div class="label">
          <label for="sitename">家具名称：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" id="homename" name="homename" size="50" placeholder="请输入家具名称" />       
        </div>
      </div>      
      <div class="form-group">
      	 <div class="label">
          <label for="sitename">家具图片：</label>
        </div>
        <div class="field">
          <input type="file" name="file1"/>       
        </div>
      </div> 
      <div class="form-group">
      	 <div class="label">
          <label for="sitename">家具副图片1：</label>
        </div>
        <div class="field">
          <input type="file" name="file2"/>       
        </div>
      </div> 
      <div class="form-group">
      	 <div class="label">
          <label for="sitename">家具副图片2：</label>
        </div>
        <div class="field">
          <input type="file" name="file3"/>       
        </div>
      </div> 
      <div class="form-group">
      	 <div class="label">
          <label for="sitename">家具副图片3：</label>
        </div>
        <div class="field">
          <input type="file" name="file4"/>       
        </div>
      </div> 
      <div class="form-group">
        <div class="label">
          <label for="sitename">一句话：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" id="oneword" name="oneword" size="50" placeholder="请输入一句话" />       
        </div>
      </div>      
      
      <div class="form-group">
        <div class="label">
          <label for="sitename">数量：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" name="homecount" size="50" placeholder="请输入数量"  />          
        </div>
      </div>
       <div class="form-group">
        <div class="label">
          <label for="sitename">价格：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" name="price" size="50" placeholder="请输入价格"  />          
        </div>
      </div>
       <div class="form-group">
        <div class="label">
          <label for="sitename">是否特价：</label>
        </div>
        <div class="field">
          	<input type="radio" id="tejia" name="tejia" value="0" checked="checked">原价
			<input type="radio" id="tejia2" name="tejia" value="1">特价           
        </div>
      </div>
       <div class="form-group" id="discount" style="display:none">
        <div class="label">
          <label for="sitename">折扣：</label>
        </div>
        <div class="field">
         	<input type="text" class="input w50" name="discount" size="50" value="0" placeholder="请输入折扣"  />     
        </div>
      </div>
       <div class="form-group">
        <div class="label">
          <label for="sitename">状态：</label>
        </div>
        <div class="field">
          	<input type="radio" name="effective" value="0" checked="checked">无效
			<input type="radio" name="effective" value="1">有效           
        </div>
      </div>
       
      <div class="form-group">
        <div class="label">
          <label for="sitename">发布人：</label>
        </div>
        <div class="field">
         	<input type="text" class="input w50" name="replayusername" size="50" placeholder="请输入发布人"  />     
        </div>
      </div>
      
      <div class="form-group">
        <div class="label">
          <label for="sitename">规格：</label>
        </div>
        <div class="field">
         	<input type="text" class="input w50" name="big_small" size="50" placeholder="请输入家具规格"  />     
        </div>
      </div>  
      <div class="form-group">
        <div class="label">
           <label for="sitename">商品分类：</label>
        </div>
        <div  class="form-group">
        	<select name="chargeType" id="chargeType" style="width:240px;height:40px">
        		<option value="0" checked="checked">家具</option>
        		<option value="1">建材灯饰</option>
        		<option value="2">家居家饰</option>
        	</select>
        </div>
        
        <div class="form-group">
        <div class="label">
           <label for="sitename">家具类型：</label>
        </div>
        <div  class="form-group" id="div1">
        	<select name="hometype" id="hometype" style="width:240px;height:40px">
        		<option value="0">床</option>
        		<option value="1">床垫</option>
        		<option value="3">衣柜</option>
        		<option value="4">沙发</option>
        		<option value="5">电视柜</option>
        		<option value="6">餐桌</option>
        		<option value="7">餐椅</option>
        		<option value="8">书桌</option>
        		<option value="9">书柜</option>
        		<option value="10">儿童床</option>
        		<option value="11">儿童桌</option>
        		
        		<option value="28">上下床</option>
        		<option value="29">公主床</option>
        		<option value="30">儿童衣柜</option>
        		<option value="31">字母床</option>
        		<option value="32">高低床</option>
        	</select>
        	<select name="homei" id="homei" style="width:240px;height:40px;display:none">
        		<option value="12">吊灯</option>
        		<option value="13">吸顶灯</option>
        		<option value="14">卫浴</option>
        		<option value="15">浴室柜</option>
        		<option value="16">座便器</option>
        		
        	
        	</select>
        	<select name="homeh" id="homeh" style="width:240px;height:40px;display:none">
        		<option value="17">床上用品</option>
        		<option value="18">布艺织物</option>
        		<option value="19">家居饰品</option>
        		<option value="20">居家日用</option>
        		
        		<option value="21">酒柜</option>
        		<option value="22">鞋柜</option>
        		<option value="23">茶几</option>
        		<option value="24">客厅套装</option>
        		<option value="25">床头柜</option>
        		<option value="26">餐厅套装</option>
        		<option value="27">餐边柜</option>
        	</select>
        </div>
      </div>
       <div class="form-group">
        <div class="label">
          <label for="sitename">商品风格：</label>
        </div>
        <div class="field">
         	<input type="text" class="input w50" name="fengge" size="50" placeholder="请输入商品风格"  />     
        </div>
      </div>  
      <div class="form-group">
        <div class="label">
          <label for="sitename">商品产地：</label>
        </div>
        <div class="field">
         	<input type="text" class="input w50" name="chandi" size="50" placeholder="请输入商品产地"  />     
        </div>
      </div>  
      
      <center>
       <div class="form-group">
	       <div class="field">
	          <button class="button bg-main icon-check-square-o" type="submit" onclick="check();"> 上传</button>   
	        </div>   
        </div>
        </center>
    </form>
  </div>
</div>
  </body>
</html>
