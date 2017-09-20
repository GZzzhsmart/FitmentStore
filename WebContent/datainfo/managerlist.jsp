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
   
    <title>管理员列表</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/pintuer.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/admin.css">
	<script src="${pageContext.request.contextPath }/js/jquery.js"></script>
	<script src="${pageContext.request.contextPath }/js/pintuer.js"></script>
	
  </head>
  
  <body>
   
  <div class="panel admin-panel">
    <div class="panel-head"><strong class="icon-reorder"> 内容列表</strong> <a href="" style="float:right; display:none;">添加字段</a></div>
    <div class="padding border-bottom">
    </div>
    <table class="table table-hover text-center">
      <tr>
        <th width="10%">管理员编号</th>
        <th>头像</th>
        <th>登录账号</th>
        <th>管理员姓名</th>
        <th>性别</th>
        <th>联系电话</th>
        <th width="310">操作</th>
      </tr>
    
      <c:forEach items="${list}" var="d">
        <tr>
        
          <td style="text-align:left; padding-left:20px;">${d.managerid }</td>
          <td width="150px">
			<img src="${pageContext.request.contextPath }/${d.managerfave}" height="50"/>
		  </td>
          <td>${d.manageraccount }</td>
          <td width="10%">${d.managername }</td>
          <td>
          	<c:if test="${d.sex==0}">男</c:if>
			<c:if test="${d.sex==1}">女</c:if>
          </td>
          <td>${d.contact }</td>
          <td>
          <div class="button-group"> 
          <a class="button border-main" href="<%=basePath%>managerservlet?order=look&managerid=${d.managerid }"><span class="icon-edit">
          </span> 查看资料</a> 
          <a class="button border-red" href="<%=basePath%>managerservlet?order=del&managerid=${d.managerid }" onclick="javascript:if(confirm('删除确认')){return true;}else{return false;}"><span class="icon-trash-o">
          </span> 删除</a> 
          </div>
          </td>
        </tr>
   	</c:forEach>
      <tr>
        <td colspan="8"><div class="pagelist"> 
        <span >总记录数&nbsp;&nbsp;${pager.barsum }</span>
		<span >页码&nbsp;&nbsp;${pager.currentpage }/${pager.pagesum }页</span>
        <a href="<%=basePath%>managerservlet?order=list&currentpage=${pager.currentpage}&handle=uppage">上一页</a> 
        <span class="current">1</span>
        <a href="#">2</a>
        <a href="#">3</a>
        <a href="<%=basePath%>managerservlet?order=list&currentpage=${pager.currentpage}&handle=downpage">下一页</a>
        <a href="<%=basePath%>managerservlet?order=list&currentpage=${pager.currentpage}&handle=lastpage">尾页</a> 
        </div>
        </td>
      </tr>
    </table>
  </div>

<script type="text/javascript">

</script>
       </body>
</html>