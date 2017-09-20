<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
    <title>登录</title>  
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/pintuer.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/admin.css">
    <script src="${pageContext.request.contextPath }/js/jquery.js"></script>
    <script src="${pageContext.request.contextPath }/js/pintuer.js"></script>  
    <script type="text/javascript">
    	function refresh(){
			document.getElementById("codes").src= '${pageContext.request.contextPath }/data/enimg.jsp?'+Math.random();
		}
    </script>
   
<c:if test="${msg!=null}">
	<script type="text/javascript">
		alert("${msg}");
	</script>
</c:if>
   
    <script type="text/javascript">
	$(function(){
		$("#managerpassword").bind("click",function(){
			var un=$("#managername").val();
			if(un==""){
				alert("请输入姓名");
				$("#managername").focus();
				return;
			}
		});
		$("#code").bind("click",function(){
			var un=$("#managername").val();
			var pw=$("#managerpassword").val();
			if(un==""){
				alert("请输入姓名");
				$("#managername").focus();
				return;
			}
			if(pw==""){
				alert("请输入密码");
				$("#managerpassword").focus();
				return;
			}
		});
		
	});
	function btntest(){
			var un=$("#managername").val();
			var pw=$("#managerpassword").val();
			var code=$("#code").val();
			if(un==""){
				alert("请输入姓名");
				$("#managername").focus();
				return false;
			}
			if(pw==""){
				alert("请输入密码");
				$("#managerpassword").focus();
				return false;
			}
			if(code==""){
				alert("请输入验证码");
				$("#code").focus();
				return false;
			}
			return true;
	}
</script>
    
</head>
<body>
<div class="bg"></div>
<div class="container">
    <div class="line bouncein">
        <div class="xs6 xm4 xs3-move xm4-move">
            <div style="height:150px;"></div>
            <div class="media media-y margin-big-bottom">           
            </div>         
            <form action="${pageContext.request.contextPath }/managerservlet?order=login" method="post" name="form1" onsubmit="return btntest();">
            <div class="panel loginbox">
                <div class="text-center margin-big padding-big-top"><h1>乐家具后台管理中心</h1></div>
                <div class="panel-body" style="padding:30px; padding-bottom:10px; padding-top:10px;">
                    <div class="form-group">
                        <div class="field field-icon-right">
                            <input type="text" class="input input-big" name="managername" id="managername" placeholder="登录账号" data-validate="required:请填写账号" />
                            <span class="icon icon-user margin-small"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="field field-icon-right">
                            <input type="password" class="input input-big" name="managerpassword" id="managerpassword"  placeholder="登录密码" data-validate="required:请填写密码" />
                            <span class="icon icon-key margin-small"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="field">
                            <input type="text" class="input input-big" name="code" id="code" placeholder="填写右侧的验证码" data-validate="required:请填写右侧的验证码" />
                           <img src="${pageContext.request.contextPath }/data/enimg.jsp" alt="验证码" id="codes" width="100" height="32" class="passcode" style="height:43px;cursor:pointer;" onclick="refresh();">  
                        </div>
                    </div>
                </div>
                <div style="padding:30px;"><input type="submit" onclick="btnTest();" class="button button-block bg-main text-big input-big" value="登录"></div>
            </div>
            </form>          
        </div>
    </div>
</div>
</body>
</html>