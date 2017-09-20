<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">   
    <title>用户列表</title> 
	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/pintuer.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/admin.css">
	<script src="${pageContext.request.contextPath }/js/jquery2.js"></script>
	<script src="${pageContext.request.contextPath }/js/pintuer.js"></script>
	 <script type="text/javascript" src="<%=basePath %>js/jquery-1.4.1.js"></script>  
   <script type="text/javascript">
       	function validate(){
        		var page = document.getElementsByName("page")[0].value;
	            if(page >${pageBean.totalPage})
	            {
	                alert("你输入的页数大于最大页数，页面将跳转到首页！");
	                window.document.location.href = "<%=basePath %>userservlet?order=list";
	                return false;
	            }
	              return true;
        	}
        
    </script>
  </head>
  <body>
  	 <body>
   <form method="post" action="" id="listform">
  <div class="panel admin-panel">
    <div class="panel-head"><strong class="icon-reorder"> 内容列表</strong> <a href="" style="float:right; display:none;">添加字段</a></div>
    <div class="padding border-bottom">
      <ul class="search" style="padding-left:10px;">
        <li> <a class="button border-main icon-plus-square-o" href="${pageContext.request.contextPath }/loginservlet?order=init"> 添加内容</a> </li>
        <li>
          <input type="text" placeholder="请输入搜索关键字" name="keywords" class="input" style="width:250px; line-height:17px;display:inline-block" />
          <a href="javascript:void(0)" class="button border-main icon-search" onclick="changesearch()" > 搜索</a></li>
      </ul>
    </div>
    <table class="table table-hover text-center">
      <tr>
        <th style="text-align:left; padding-left:20px;">用户编号</th>
    	<th>用户名称</th>
    	<th>用户电话</th>
     	<th>性别</th>
     	<th>家庭住址</th>
     	<th>注册时间</th>
        <th width="310">操作</th>
      </tr>
    
      <c:forEach items="${userList}" var="p">
        <tr>
          <td style="text-align:left; padding-left:20px;">${p.userid }</td>
          <td>${p.username }</td>
          <td align="middle">${p.usermobile}</td>
    	  <td>
          	<c:if test="${p.usersex==0}">男</c:if>
			<c:if test="${p.usersex==1}">女</c:if>
          </td>
    	 <td align="middle">${p.userhomeaddress}</td>
    	 <td align="middle">${p.userregisterdate}</td>
          <td>
          <div class="button-group"> 
          <a class="button border-main" href="<%=basePath%>userservlet?order=look&usermobile=${p.usermobile }"><span class="icon-edit">
          </span> 查看信息</a> 
          <a class="button border-red" href="<%=basePath%>userservlet?order=del&userid=${p.userid }" onclick="javascript:if(confirm('删除确认')){return true;}else{return false;}"><span class="icon-trash-o">
          </span> 删除</a> 
          </div>
          </td>
        </tr>
   	</c:forEach>
   	</table>
    <table width="1000" align="center">
	    	<tr height="40">
		    	<td align="center">
		        	<font size="5">共<font color="red">${pageBean.totalPage }</font>页 </font>
		        </td>
		        <td align="center">
		        	<font size="5">当前<font color="red">${pageBean.currentPage }</font></font>
		        	<font size="5">/ <font color="red">${pageBean.totalPage }</font></font>
		        </td>
		        <td align="center">
		        	<font size="5">共<font color="red">${pageBean.allRows }</font>条记录</font>
		        </td>
	        </tr>
        </table>
        <center>
        <c:if test="${pageBean.currentPage == 1}">
          <span class="button border-red">上一页</span>
        </c:if>
        
        <c:if test="${pageBean.currentPage != 1}">
            
            &nbsp;&nbsp;&nbsp;
            <a class="button border-red" href="<%=basePath %>userservlet?order=list&page=${pageBean.currentPage - 1 }">上一页</a>
        </c:if>
        
        
        
        
        <a href="<%=basePath %>userservlet?order=list" /><span class="button border-red">1</span></a>
        <c:if test="${pageBean.totalPage>3}">
       
	        <c:if test="${pageBean.currentPage == 1}">
	        	
	        	<a href="<%=basePath %>userservlet?order=list&page=2"><span class="button border-red">2</span></a>
	        	<a href="<%=basePath %>userservlet?order=list&page=3"><span class="button border-red">3</span></a>
	        	...
	        	<a href="<%=basePath %>userservlet?order=list&page=${pageBean.totalPage }"><span class="button border-red">${pageBean.totalPage }</span></a>
	        </c:if>
	        <c:if test="${pageBean.currentPage == 2}">
	        	<c:if test="${pageBean.totalPage>4}">
		        	<a href="<%=basePath %>userservlet?order=list&page=2"><span class="button border-red">2</span></a>
		        	<a href="<%=basePath %>userservlet?order=list&page=3"><span class="button border-red">3</span></a>
		        	<a href="<%=basePath %>userservlet?order=list&page=4"><span class="button border-red">4</span></a>
		        	...
	        		<a href="<%=basePath %>userservlet?order=list&page=${pageBean.totalPage }"><span class="button border-red">${pageBean.totalPage }</span></a>
	        	</c:if>
	        	<c:if test="${pageBean.totalPage<=4}">
	        		<a href="<%=basePath %>userservlet?order=list&page=2"><span class="button border-red">2</span></a>
		        	<a href="<%=basePath %>userservlet?order=list&page=3"><span class="button border-red">3</span></a>
		        	...
	        	<a href="<%=basePath %>userservlet?order=list&page=${pageBean.totalPage }"><span class="button border-red">${pageBean.totalPage }</span></a>
	        	</c:if>
	        </c:if>
	        <c:if test="${pageBean.currentPage == 3}">
	        	
	        	<c:if test="${pageBean.totalPage>5 }">
		        	<a href="<%=basePath %>userservlet?order=list&page=2"><span class="button border-red">2</span></a>
		        	<a href="<%=basePath %>userservlet?order=list&page=3"><span class="button border-red">3</span></a>
		        	<a href="<%=basePath %>userservlet?order=list&page=4"><span class="button border-red">4</span></a>
		        	<a href="<%=basePath %>userservlet?order=list&page=5"><span class="button border-red">5</span></a>
		        	...
	        		<a href="<%=basePath %>userservlet?order=list&page=${pageBean.totalPage }"><span class="button border-red">${pageBean.totalPage }</span></a>
	        	</c:if>
	        	<c:if test="${pageBean.totalPage<=5}">
	        		<a href="<%=basePath %>userservlet?order=list&page=2"><span class="button border-red">2</span></a>
		        	<a href="<%=basePath %>userservlet?order=list&page=3"><span class="button border-red">3</span></a>
		        	<a href="<%=basePath %>userservlet?order=list&page=4"><span class="button border-red">4</span></a>
		        	...
	        		<a href="<%=basePath %>userservlet?order=list&page=${pageBean.totalPage }"><span class="button border-red">${pageBean.totalPage }</span></a>
	        	</c:if>
	        </c:if>
	        <c:if test="${pageBean.currentPage == 4}">
	        	<c:if test="${pageBean.totalPage>6 }">
		        	<a href="<%=basePath %>userservlet?order=list&page=2"><span class="button border-red">2</span></a>
		        	<a href="<%=basePath %>userservlet?order=list&page=3"><span class="button border-red">3</span></a>
		        	<a href="<%=basePath %>userservlet?order=list&page=4"><span class="button border-red">4</span></a>
		        	<a href="<%=basePath %>userservlet?order=list&page=5"><span class="button border-red">5</span></a>
		        	<a href="<%=basePath %>userservlet?order=list&page=6"><span class="button border-red">6</span></a>
		        	...
	        		<a href="<%=basePath %>userservlet?order=list&page=${pageBean.totalPage }"><span class="button border-red">${pageBean.totalPage }</span></a>
	        	</c:if>
	        	
	        	<c:if test="${pageBean.totalPage<6 }">
	        		<a href="<%=basePath %>userservlet?order=list&page=2"><span class="button border-red">2</span></a>
		        	<a href="<%=basePath %>userservlet?order=list&page=3"><span class="button border-red">3</span></a>
		        	<a href="<%=basePath %>userservlet?order=list&page=4"><span class="button border-red">4</span></a>
		        	...
	        		<a href="<%=basePath %>userservlet?order=list&page=${pageBean.totalPage }"><span class="button border-red">${pageBean.totalPage }</span></a>
	        	</c:if>
	        </c:if>
	        <c:if test="${pageBean.currentPage==pageBean.totalPage-2}">
	        	...
	        	<a href="<%=basePath %>userservlet?order=list&page=${pageBean.currentPage - 2 }"><span class="button border-red">${pageBean.currentPage-2 }</span></a>
	        	<a href="<%=basePath %>userservlet?order=list&page=${pageBean.currentPage -1 }"><span class="button border-red">${pageBean.currentPage-1 }</span></a>
	        	<a href="<%=basePath %>userservlet?order=list&page=${pageBean.currentPage  }"><span class="button border-red">${pageBean.currentPage }</span></a>
	        	<a href="<%=basePath %>userservlet?order=list&page=${pageBean.currentPage +1}"><span class="button border-red">${pageBean.currentPage+1 }</span></a>
		        <a href="<%=basePath %>userservlet?order=list&page=${pageBean.currentPage +2 }"><span class="button border-red">${pageBean.currentPage+2 }</span></a>
	        </c:if>
	        <c:if test="${pageBean.currentPage==pageBean.totalPage-1}">
	         	...
	        	<a href="<%=basePath %>userservlet?order=list&page=${pageBean.currentPage - 2 }"><span class="button border-red">${pageBean.currentPage-2 }</span></a>
	        	<a href="<%=basePath %>userservlet?order=list&page=${pageBean.currentPage -1 }"><span class="button border-red">${pageBean.currentPage-1 }</span></a>
	        	<a href="<%=basePath %>userservlet?order=list&page=${pageBean.currentPage  }"><span class="button border-red">${pageBean.currentPage }</span></a>
	        	<a href="<%=basePath %>userservlet?order=list&page=${pageBean.currentPage +1}"><span class="button border-red">${pageBean.currentPage+1 }</span></a>
	        </c:if>
	        <c:if test="${pageBean.currentPage==pageBean.totalPage}">
	        	...
	        	<a href="<%=basePath %>userservlet?order=list&page=${pageBean.currentPage - 2 }"><span class="button border-red">${pageBean.currentPage-2 }</span></a>
	        	<a href="<%=basePath %>userservlet?order=list&page=${pageBean.currentPage -1 }"><span class="button border-red">${pageBean.currentPage-1 }</span></a>
	        	<a href="<%=basePath %>userservlet?order=list&page=${pageBean.currentPage  }"><span class="button border-red">${pageBean.currentPage }</span></a>
	        <c:if test="${pageBean.currentPage<pageBean.totalPage-1}">
	        	<a href="<%=basePath %>userservlet?order=list&page=${pageBean.currentPage +1}"><span class="button border-red">${pageBean.currentPage+1 }</span></a>
		        <a href="<%=basePath %>userservlet?order=list&page=${pageBean.currentPage +2 }"><span class="button border-red">${pageBean.currentPage+2 }</span></a>
	        </c:if>
	        	
	        	<c:if test="${pageBean.totalPage>4}">
		        	<c:if test="${pageBean.currentPage<pageBean.totalPage}">
		        		...
		        	</c:if>
	        
		        </c:if>
		        <c:if test="${pageBean.currentPage==pageBean.totalPage}"></c:if>
		        <c:if test="${pageBean.currentPage!=pageBean.totalPage}">
		        	<a href="<%=basePath %>userservlet?order=list&page=${pageBean.totalPage }"><span class="button border-red">${pageBean.totalPage }</span></a>
	        	</c:if>
	        </c:if>
        </c:if>
        
        
        <c:if test="${pageBean.currentPage!=pageBean.totalPage}">
            <a href="<%=basePath %>userservlet?order=list&page=${ pageBean.currentPage + 1}"><span class="button border-red">下一页>></span></a>
            &nbsp;&nbsp;&nbsp;
        </c:if>
        
        <c:if test="${pageBean.currentPage==pageBean.totalPage}">
            <span class="button border-red">下一页>></span>
        </c:if>
    
    </center><br>
    
   
       
  </div>
</form>
 <center>
        
        <form action="<%=basePath %>userservlet?order=list" method="post" onsubmit="return validate();">
            <font size="4">跳转至</font>
            <input type="text" size="2" name="page">页
             <input type="submit" value="跳转" class="button border-red">
        </form>
        
    </center>
 
<script type="text/javascript">

</script>
       </body>
</html>