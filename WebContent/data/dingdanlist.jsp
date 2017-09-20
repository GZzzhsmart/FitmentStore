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
        <li> <a class="button border-main icon-plus-square-o" href="<%=basePath %>shoppingcarservlet?order=addcar" target="_blank">继续加入</a> </li>
        <li>搜索：</li>
        <li>
          <input type="text" placeholder="请输入搜索关键字" name="keywords" class="input" style="width:250px; line-height:17px;display:inline-block" />
          <a href="javascript:void(0)" class="button border-main icon-search" onclick="changesearch()" > 搜索</a></li>
      </ul>
    </div>
    <table class="table table-hover text-center">
     <tr>
		<th align='center'>订单商品</th>
		<th align='center'>商品名称</th>
		<th align='center'>订单号</th>
		<th align='center'>收货人</th>
		<th align='center'>订单金额</th>
		<th align='center'>订单状态</th>
		<th align='center' >操作</th>
	</tr>
        <tr>
          <c:forEach items="${list}" var="y">
			<tr height='67'>
				<td align='center' width="200"><img src="${y.tupian}"  width="100" height="67"></td>
				<td align='center' width="100">${y.name}></td>
				<td align='center'width="100">${y.dingdannumber}</td>
				<td align='center'width="100">${y.username}</td>
				<td align='center'width="100">${y.price}</td>
				<c:if test="${y.effective==1}">
					<td align='center'>待付款</td>
				</c:if>
				<c:if test="${y.effective==2}">
					<td align='center'>待发货</td>
				</c:if>
				<c:if test="${y.effective==3}">
					<td align='center'>待收货</td>
				</c:if>
				<c:if test="${y.effective==4}">
					<td align='center'>待评价</td>
				</c:if>
				<td align="center">
					<div class="button-group"> 
						<a class="button border-main icon-edit" href="<%=basePath %>dingdanservlet?order=fahuo&dingdanid=${y.dingdanid}"> 发货 </a>&nbsp;&nbsp;
					</div>
				</td>
			</tr>
		</c:forEach>
      <tr width="100%">
        <td style="text-align:left; padding:19px 0;padding-left:20px;" colspan="6">
	        <a href="javascript:void(0)" class="button border-red icon-trash-o" style="padding:5px 15px;" onclick="DelSelect()"> 删除</a> <a href="javascript:void(0)" style="padding:5px 15px; margin:0 10px;" class="button border-blue icon-edit" onclick="sorts()"> 排序</a> 
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

</script>
</body>
</html>