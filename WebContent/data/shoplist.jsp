<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="renderer" content="webkit">
<title></title>
<link rel="stylesheet" href="<%=basePath %>css/pintuer.css">
<link rel="stylesheet" href="<%=basePath %>css/admin.css">
<script src="<%=basePath %>/js/jquery.js"></script>
<script src="<%=basePath %>/js/pintuer.js"></script>
</head>
<body>
<form method="post" action="" id="listform">
<c:if test="${msg!=null}">
	<script type="text/javascript">
		alert("${msg}");
	</script>
  </c:if>
  <div class="panel admin-panel">
    <div class="panel-head"><strong class="icon-reorder"> 我的购物车列表</strong> <a href="javascript:void(0);" style="float:right; display:none;">添加课程</a></div>
    <div class="padding border-bottom">
      <ul class="search" style="padding-left:10px;">
        <li> <a class="button border-main icon-plus-square-o" href="<%=basePath %>shopcarservlet?order=addcar" target="_blank">继续加入</a> </li>
        <li>搜索：</li>
        <li>
          <input type="text" placeholder="请输入搜索关键字" name="keywords" class="input" style="width:250px; line-height:17px;display:inline-block" />
          <a href="javascript:void(0)" class="button border-main icon-search" onclick="changesearch()" > 搜索</a></li>
      </ul>
    </div>
    <table class="table table-hover text-center">
     <tr>
		<th align='center'>家具名称</th>
		<th align='center'>图片网址</th>
		<th align='center'>家具简介</th>
		<th align='center'>家具数量</th>
		<th align='center'>家具售价</th>
		<th align='center'>家具折扣</th>
		<th align='center'>是否有效</th>
		<th align='center'>发布时间</th>
		<th align='center'>发布人名</th>
		<th align='center' >操作</th>
	</tr>
        <tr>
          <c:forEach items="${list}" var="y">
			<tr height='40'>
				<td align='center'><input type="checkbox" id="box" name="box" value="id|username"  onclick="checkonebox();">${y.username}</td>
				<td align='center'><img src="${y.pictureurl}" width="40px" height="40px"></td>
				<td align='center'>${y.oneword}</td>
				<td align='center'>${y.homecount}节</td>
				<td align='center'>${y.price}</td>
				<td align='center'>${y.discount}</td>
				<td align='center'>
					<c:if test="${y.effective==1}">
						有效
					</c:if>
					<c:if test="${y.effective!=1}">
						无效
					</c:if>
				</td>
				<td align='center'>${y.replaydate}</td>
				<td align='center'>${y.replayusername}</td>
				<td align="center">
					<div class="button-group"> 
						
						<a  class="button border-red icon-trash-o" href="<%=basePath %>shopcarservlet?carid=${y.carid}&order=delete"  onclick="javascript:if(confirm('删除确认')){return true;}else{return false;}"> 删 除 </a>
					</div>
				</td>
			</tr>
		</c:forEach>
      <tr width="100%">
        <td style="text-align:left; padding:19px 0;padding-left:20px;" colspan="6">
	        <a href="javascript:void(0)" class="button border-red icon-trash-o" style="padding:5px 15px;" onclick="DelSelect()"> 删除</a> <a href="javascript:void(0)" style="padding:5px 15px; margin:0 10px;" class="button border-blue icon-edit" onclick="sorts()"> 排序</a> 
	        <input id="checkall"  type="checkbox" value="" onclick="checkall();"/> 全选/全不选 
		</td>
		
		<td class="pagelist" colspan="10" align="center">
			<a href="">总记录数&nbsp;&nbsp;${pager.barsum }</a>
			<a href="">页码&nbsp;&nbsp;${pager.currentpage }/${pager.pagesum }页</a>
			<a href="<%=basePath %>shopcarservlet?order=list&currentpage=1&handle=firstpage">首   页</a>
			<a href="<%=basePath %>shopcarservlet?order=list&currentpage=${pager.currentpage }&handle=uppage">上一页</a>
			<a href="<%=basePath %>shopcarservlet?order=list&currentpage=${pager.currentpage }&handle=downpage">下一页</a>
			<a href="<%=basePath %>shopcarservlet?order=list&currentpage=${pager.pagesum }&handle=lastpage">尾  页</a> 
		</td>
      </tr>
    </table>
<script type="text/javascript">
//搜索
function changesearch(){	
		
}

//单个删除
function del(id,mid,iscid){
	if(confirm("您确定要删除吗?")){
		
	}
}

//全选
$("#checkall1").click(function(){ 
  $("input[name='id[]']").each(function(){
	  if (this.checked) {
		  this.checked = false;
	  }
	  else {
		  this.checked = true;
	  }
  });
})

//批量删除
function DelSelect(){
	var Checkbox=false;
	 $("input[name='id[]']").each(function(){
	  if (this.checked==true) {		
		Checkbox=true;	
	  }
	});
	if (Checkbox){
		var t=confirm("您确认要删除选中的内容吗？");
		if (t==false) return false;		
		$("#listform").submit();		
	}
	else{
		alert("请选择您要删除的内容!");
		return false;
	}
}

//批量排序
function sorts(){
	var Checkbox=false;
	 $("input[name='id[]']").each(function(){
	  if (this.checked==true) {		
		Checkbox=true;	
	  }
	});
	if (Checkbox){	
		
		$("#listform").submit();		
	}
	else{
		alert("请选择要操作的内容!");
		return false;
	}
}


//批量首页显示
function changeishome(o){
	var Checkbox=false;
	 $("input[name='id[]']").each(function(){
	  if (this.checked==true) {		
		Checkbox=true;	
	  }
	});
	if (Checkbox){
		
		$("#listform").submit();	
	}
	else{
		alert("请选择要操作的内容!");		
	
		return false;
	}
}

//批量推荐
function changeisvouch(o){
	var Checkbox=false;
	 $("input[name='id[]']").each(function(){
	  if (this.checked==true) {		
		Checkbox=true;	
	  }
	});
	if (Checkbox){
		
		
		$("#listform").submit();	
	}
	else{
		alert("请选择要操作的内容!");	
		
		return false;
	}
}

//批量置顶
function changeistop(o){
	var Checkbox=false;
	 $("input[name='id[]']").each(function(){
	  if (this.checked==true) {		
		Checkbox=true;	
	  }
	});
	if (Checkbox){		
		
		$("#listform").submit();	
	}
	else{
		alert("请选择要操作的内容!");		
	
		return false;
	}
}


//批量移动
function changecate(o){
	var Checkbox=false;
	 $("input[name='id[]']").each(function(){
	  if (this.checked==true) {		
		Checkbox=true;	
	  }
	});
	if (Checkbox){		
		
		$("#listform").submit();		
	}
	else{
		alert("请选择要操作的内容!");
		
		return false;
	}
}

//批量复制
function changecopy(o){
	var Checkbox=false;
	 $("input[name='id[]']").each(function(){
	  if (this.checked==true) {		
		Checkbox=true;	
	  }
	});
	if (Checkbox){	
		var i = 0;
	    $("input[name='id[]']").each(function(){
	  		if (this.checked==true) {
				i++;
			}		
	    });
		if(i>1){ 
	    	alert("只能选择一条信息!");
			$(o).find("option:first").prop("selected","selected");
		}else{
		
			$("#listform").submit();		
		}	
	}
	else{
		alert("请选择要复制的内容!");
		$(o).find("option:first").prop("selected","selected");
		return false;
	}
}
	
</script>
<script type="text/javascript">
	//点击"全选/全不选"复选框，如果选中，则选中全部复选框，否则取消选中全部复选框 
	function checkall() { 
		alert("ok");
	 var ischecked = document.getElementById("checkall").checked;
	   if(ischecked) {
	      checkallbox();  
	      }else {
	        discheckallbox();  
	     } 
	   } 
	   //选中全部复选框 
	   function checkallbox() {
	     var boxarray = document.getElementsByName("box");
	     for(var i = 0; i < boxarray.length; i++) {
	     boxarray[i].checked = true;
	     } 
	  } 
	  //取消选中全部复选框 
	  function discheckallbox() {
	    var boxarray = document.getElementsByName("box");
	    for(var i = 0; i < boxarray.length; i++) {
	     boxarray[i].checked = false;
	     
	       } 
</script>
</body>
</html>