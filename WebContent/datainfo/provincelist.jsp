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
   
    <title>省份列表</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/pintuer.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/admin.css">
	<script src="${pageContext.request.contextPath }/js/jquery1.js"></script>
	<script src="${pageContext.request.contextPath }/js/pintuer.js"></script>
  </head>
  
  <body>
     <form method="post" action="" id="listform">
  <div class="panel admin-panel">
    <div class="panel-head"><strong class="icon-reorder"> 内容列表</strong> <a href="" style="float:right; display:none;">添加字段</a></div>
    <div class="padding border-bottom">
      <ul class="search" style="padding-left:10px;">
        <li> <a class="button border-main icon-plus-square-o" href="<%=basePath%>datainfo/provinceAdd.jsp"> 添加内容</a> </li>
        <li>
          <input type="text" placeholder="请输入搜索关键字" name="keywords" class="input" style="width:250px; line-height:17px;display:inline-block" />
          <a href="javascript:void(0)" class="button border-main icon-search" onclick="changesearch()" > 搜索</a></li>
      </ul>
    </div>
    <table class="table table-hover text-center">
      <tr>
	        <th width="10%">省份编号</th>
	        <th>省份名称</th>
	        <th width="310">操作</th>
      </tr>
    
      <c:forEach items="${list}" var="d">
        <tr>
          <td style="text-align:left; padding-left:20px;">${d.provinceid }</td>
          <td>${d.provincename }</td>
          <td>
          <div class="button-group"> 
          <a class="button border-main" href="<%=basePath%>provinceservlet?order=update&provinceid=${d.provinceid }"><span class="icon-edit">
          </span> 修改</a> 
          <a class="button border-red" href="<%=basePath%>provinceservlet?order=del&provinceid=${d.provinceid }" onclick="javascript:if(confirm('删除确认')){return true;}else{return false;}"><span class="icon-trash-o">
          </span> 删除</a> 
          </div>
          </td>
        </tr>
   	</c:forEach>
      <tr>
        <td colspan="8"><div class="pagelist"> 
        <a href="<%=basePath%>provinceservlet?order=list&currentpage=${pager.currentpage}&handle=uppage">上一页</a> 
        <span class="current">1</span>
        <a href="#">2</a>
        <a href="#">3</a>
        <a href="<%=basePath%>provinceservlet?order=list&currentpage=${pager.currentpage}&handle=downpage">下一页</a>
        <a href="<%=basePath%>provinceservlet?order=list&currentpage=${pager.pagesum}&handle=lastpage">尾页</a> 
        </div>
        </td>
      </tr>
    </table>
  </div>
</form>
<script type="text/javascript">

</script>
  </body>
</html>
