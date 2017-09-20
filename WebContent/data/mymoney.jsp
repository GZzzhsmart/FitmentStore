<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="SQLBean.UserBean"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"+ request.getServerName() + ":" + request.getServerPort()+ path + "/";
%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="<%=basePath %>js/jquery-1.4.1.js"></script>
 <script type="text/javascript" src="scripts/swfobject.js"></script>
 <script type="text/javascript" src="scripts/fullAvatarEditor.js"></script>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>用户的操作</title>
<link rel="shortcut icon" href="http://image.meilele.com/favicon.ico" />
<link rel="stylesheet" href="<%=basePath%>data/data_files/mll.common.user.min.css" />
<link href="<%=basePath%>data/data_files/user_interface.min.css" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/js/jquery-easyui-1.3.0/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/js/jquery-easyui-1.3.0/themes/icon.css">
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-easyui-1.3.0/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-easyui-1.3.0/jquery.easyui.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-easyui-1.3.0/locale/easyui-lang-zh_CN.js"></script>


<style type="text/css"></style>
</head>
<body class="root-body" style="min-width:1190px;">
<%
	UserBean user = (UserBean)session.getAttribute("user");
%>




<style type="text/css">
.page-header .hover .cart-box{display: block;background: #fff;padding-bottom: 20px;}
.Cart_del{color: #333!important}
.user-page-header .uph-cart .cart-box{left: -160px;}
.page-header .phc-cart{width:130px;height:30px;border:1px solid #ededed;margin-top:8px;position: relative;z-index: 5;text-align: center;}
.page-header .phc-cart .cart{width:130px;height:25px;display:inline-block;*zoom:1;color:#666;padding-top:5px;background-color:#f9f9f9;}
.page-header .phc-cart .cart:hover{color:#c9033b!important;}
.page-header .phc-cart .cart-box{width:280px;border:1px solid #ededed;left:-151px;top:31px;position: absolute;box-shadow:0px 0px 3px #ccc;z-index: 2;display:none;}
.page-header .phc-cart .cart-icon{width:22px;height:22px;padding-right:11px;display:inline-block;background-position:-100px 1px;vertical-align:middle;}
.page-header .phc-cart .cart-num{padding:1px 5px;border-radius:20px;position:absolute;top:-11px;left:21px;text-align: center;color:#fff;background:#ff8f16;font-weight: bold}
.page-header .phc-cart .cart-arrow{width:12px;height:12px;margin-left:25px;*margin-top:-14px;display:inline-block;*zoom:1;vertical-align:middle;background-position:1px -55px;transition: .2s ease-in-out ;-webkit-transition: .2s ease-in-out ;-moz-transition: .2s ease-in-out ;-o-transition: .2s ease-in-out ;vertical-align:-1px;}
.page-header .phc-cart .cart-list{height: 72px;background:#fff url(/images/common/loading.gif) no-repeat center center;}
.page-header .hover .cart-box{display:block;}
.page-header .hover.phc-cart{box-shadow:0px 0px 3px #ccc}
.page-header .phc-cart .cart .blank{display: none;}
.page-header .hover .blank{width:100%;height:3px;z-index:10;left:0;top:29px;position: absolute;background:#fff;display: inline!important}
.page-header .hover .cart-arrow{transform: rotate(-180deg);-webkit-transform: rotate(-180deg);-moz-transform: rotate(-180deg);-o-transform: rotate(-180deg);}
.page-header .hover .cart-arrow-ie{background-position: 1px -40px;}
.page-header .hover .cart{background:#fff}
.page-header .hover .cart-list{*zoom:1;}
.page-header .hover .cart-list .nothing{height:28px;font-size: 14px;font-family: 微软雅黑;color:#999;padding-top:25px;background-color:#fff}
.page-header .hover .cart-list .nothing-icon{width: 21px;height:20px;display: inline-block;*zoom:1;background-position:-101px -59px;vertical-align:bottom;}
.page-header .hover .cart-full{height:auto;max-height:255px;*max-height:270px;background:#fff;padding:0 15px;text-align: left;overflow-y:auto;}
.page-header .hover .cart-full3{_height:270px!important;}
.page-header .hover .cart-full2{_height:185px!important;}
.page-header .hover .cart-full1{_height:100px!important;}
.page-header .cart-full .cart-item{height:54px;*height:auto;padding:15px 0;background:00;border-bottom:1px dashed #eaeaea;*zoom:1;}
.page-header .cart-full .cart-item .cart-img{width:87px;height:59px;}
.page-header .cart-full .cart-item .cart-link{width:auto;min-width:131px;height:36px;margin-left:98px;line-height:18px;color:#333;display:block;overflow: hidden;word-break:break-all;word-wrap:break-word;}
.page-header .cart-full .cart-item .cart-link{_width:130px!important;}
.page-header .cart-full .cart-item .cart-link:hover{color:#ee1f1f !important;}
.page-header .cart-full .cart-item .cart-price{margin-left:10px;margin-top:5px;color:#cf000e
;}
.page-header .cart-full .cart-item .cart-cal{margin-top:5px}
.page-header .cart-full .cart-item .cart-del{margin-right:8px;color:#c9033b;}
.page-header .cart-full .cart-item .cart-del:hover{color:#c9033b!important;}
.page-header .phc-cart .cart-box .cart-count{padding-bottom:11px;padding-top: 10px;background:#f8f8f8;text-align:right;}
.page-header .cart-box .cart-count .count-area{padding-right:20px;}
.page-header .cart-box .cart-count .count-total{font-size:16px;vertical-align:middle;position:relative;top:-1px;color:#cf000e;}
.page-header .cart-box .cart-count .count-btn{width:106px;height:29px;border-radius:3px;margin-right: 21px;color:#fff;display: inline-block;font-size: 14px;background: #cf000e;font-weight:bold;line-height: 29px;text-align: center;margin-top:10px;font-family: 微软雅黑}
.page-header .cart-box .cart-count .count-btn:hover{color:#fff!important;text-decoration: none;}

.page-header .phc-cart .cart-tip{padding:14px 10px 12px 19px;border:1px solid #EBEBEB;margin:20px 17px 17px 17px;background:#fff;display:none;text-align:left}
.page-header .phc-cart .cart-tip .tip-link{width:210px;overflow:hidden;white-space:nowrap;text-overflow:ellipsis;display:block;color:#777;text-decoration:underline;line-height:16px;background:#fff;}
.page-header .phc-cart .cart-tip .tip-content{margin-top:3px;background:#fff;}
.page-header .hover .cart-tip{display:block;}
.page-header .cart-box .cart-count{padding-bottom: 11px;padding-top: 10px;background: #f8f8f8;text-align: right;}
.user-page-header .uph-cart .cart-icon{float:left;margin-top:2px;margin-left:11px;padding-right:0;width:17px;height:14px;background:url(http://image.meilele.com/images/common/site/site.png) -92px -48px no-repeat;}
.user-page-header .uph-cart .cart-arrow{margin:-2px 4px 0 3px;height:6px;vertical-align:middle;background:url(http://image.meilele.com/images/user/user_bg.png) -135px -5px no-repeat;}
.user-page-header .uph-cart .cart{padding-top:6px;height:24px;font-size:13px;}
</style>
<div class="user-page-header  page-header">
	
		<div class="w clearfix uph-container">
        <ul class="uph-navigator Left">
        	<li><a href="<%=basePath %>data/face.jsp"> <img src="<%=basePath %>images/face1.png" alt="" width="120" height="44"></a></li>
        	<li><a href="<%=basePath %>data/face.jsp">首页</a></li>
        	<li><a href="<%=basePath %>userservlet?order=login2&username=${user.usermobile }">我的乐家具</a></li>
        	<li><a href="<%=basePath %>userservlet?order=login3&usermobile=${user.usermobile }">账户设置</a></li>
        	<li><a class="drop-title" href="<%=basePath %>homeservlet?order=list1" target="_blank">购买家具</a></li>
        </ul>
        <div class="uph-search Left">
			<form id="JS_search_form" class="search-form" action="<%=basePath %>homeservlet?order=findlist" method="post"  target="_blank">
				<input type="submit" class="submit-btn Right" value="搜索">
				<input id="JS_MLL_search_header_input" name="homename" placeholder="团购" value="" autocomplete="off" type="text" maxlength="255" class="search-input search-input-focus">
			</form>
			<div id="JS_search_suggest" class="suggest" style="display: none;">
			</div>
		</div>
        <div id="JS_cart" class="uph-cart Right">
			<a href="/flow/?step=cart&amp;rel=header" class="cart"><b class="common-bg cart-icon"></b>我的购物车<b class="common-bg cart-arrow"></b></a>
			<span id="JS_cart_num" class="cart-num">0</span>
			<span class="blank none">&nbsp;</span>
			<div id="JS_cart_box" class="cart-box">
				<ul id="JS_cart_list" class="cart-list cart-full cart-full3" onclick="Cart.del(event);"></ul>
				<div id="JS_count_area" class="cart-count">
					<p class="count-area">共<span id="JS_cart_count">0</span>件商品，共计<strong id="JS_count_total" class="count-total red">¥279398.23</strong></p>
					<a class="count-btn" target="_blank" href="/flow/?step=cart&amp;rel=header">去购物车结算</a>
				</div>
			</div>
		</div>
		<span class="triangle"></span>
	</div>
</div>

		<div class="user-page-content">
			<div class="clearfix w">
				<div class="user_menu">
					<div class="navs" id="JS_u_navs">
						<h3>
							<span class="s1"></span>订单中心
						</h3>
						<ul>
							<li>
								<a href="<%=basePath%>dingdanservlet?order=init">我的订单</a>
							</li>
							<li>
								<a href="<%=basePath%>addressservlet?order=init" class="active">收货地址</a>
							</li>
							<li>
								<a href="<%=basePath %>collectionservlet?order=list">我的收藏</a>
							</li>
							<li>
								<a href="<%=basePath%>pingjiaservlet?order=list" >评价晒单</a>
							</li>
							
						</ul>
						<h3>
							<span class="s2"></span>我的资产
						</h3>
						<ul>
							<li>
								<a href="<%=basePath%>moneyrecordservlet?order=mymoneyList">我的金币</a>
							</li>
							<li>
								<a href="<%=basePath%>data/myinfo.jsp" onclick="test();">我的乐币</a>
							</li>
							<li>
								<a href="<%=basePath%>data/myinfo.jsp" onclick="test();">我的优惠券</a>
							</li>
							
						</ul>
						<h3>
							<span class="s3"></span>客服服务
						</h3>
						<ul>
							
							<li>
								<a href="<%=basePath%>data/myinfo.jsp" onclick="test();">返修/退换货</a>
							</li>
							
							<li class="last">
								<a href="<%=basePath%>data/myinfo.jsp"" onclick="test();">退款记录</a>
							</li>
							
							<li>
								<a href="<%=basePath%>data/myinfo.jsp" onclick="test();">我的留言</a>
							</li>
							
						</ul>

					</div>
					
					<!---->
				</div>
	<style type="text/css">
.record{background: #fff;padding:20px 30px 40px;margin-top: 15px;}
.title-h3{font-size: 16px;}
.happy_coin_title{width:950px;padding:20px 30px;background: #fff;font-size: 14px;}
.title_left{margin-top: 10px;}
.red_bold{color: #e52952!important;font-weight:bold;font-size:16px;}
#JS_orderList_table .lebi_td_row3{color:#ee1f1f;}
#JS_orderList_table .lebi_td_row4{color:#46913c;}
.lebi_tb{border-top: none;border-bottom:none;}
.current{font-size: 14px;color: #ee1f1f;font-weight: 600;border-bottom: 2px solid #ee1f1f;margin-top: 0px;}
.u_input{cursor:pointer;box-sizing:border-box;height:30px;width: 111px;font-size:12px;}
.datepicker{display: inline-block;position: relative;}
.datepicker i{position: absolute;right: 10px;top: 7px;width: 15px;height: 16px;background:url(http://image.meilele.com/images/user/time_select.png) no-repeat}
.u_btn1{cursor: pointer;position: relative;margin-left:8px;width: 92px;height: 30px;line-height:28px;text-align: center;color: #fff;font-size:14px;background: #ed4c4c;border-radius: 2px;outline: none;border: none;vertical-align:top;}
.happy_coin_title{position:relative;}
.happy_coin_title .c-help{position:absolute;right:32px;top:20px;}
.happy_coin_title .c-help .i-help{display: inline-block;width: 16px;height: 16px;background:url(http://img.meilele.com/images/user/user_bg.png) -145px -230px no-repeat;margin-right: 2px;vertical-align: -4px;}
.happy_coin_title .c-help a{font-size:14px;}
.table_list tr.lebi_tr_cont a{color: #0072ca;}
.table_list tr.lebi_tr_cont a:hover{text-decoration: underline;}
</style>
<div class="user_main">

<div class="happy_coin_title" style="font-family:'微软雅黑'">
	<h3 class="title-h3">我的金币</h3>
	
	<div class="title_left">
		<p style="display:inline-block">可用金币：
		<span class="red_bold">${user.remainmoney }</span>个&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a href="javascript:void(0);" id="href1"><font size="5">充值</font></a>
		</p>
		
	</div>
	
</div>
<div class="record" id="div1">
<div class="inBox" style="padding:0px;margin-bottom:0px;font-family: '微软雅黑'">
	<div class="title clearfix ">
		<div class="Left current">金币记录</div>
	</div>
</div>
	<div class="lebi_tb" style="font-family:'微软雅黑'">
		<form action="<%=basePath %>moneyrecordservlet?action=mymoney" method="post" onsubmit="return test();">
		<input type="hidden" name="sdate" id="sdate"/>
		<input type="hidden" name="edate" id="edate"/>
			<div class="" style="padding-top:20px;">
				<span class="l_h25 fl">时间：</span>
				<input class="easyui-datebox" type="text" value="" id="sdate1" name="sdate1"><i></i>
				<span class="l_h25 fl" style="margin:0 5px;">-</span>
				 <input class="easyui-datebox" value="" type="text" name="edate1" id="edate1"> <i></i>
				<input type="submit" class="u_btn1 yahei" id="chaxun" value="查询">
			</div>
		</form>
		<table class="orders mt20 table_list" id="JS_orderList_table" >
			<tbody>
				<tr class="lebi_tr">
					<th width="186" >时间</th>
					<th width="126">类型</th>
					<th width="70">收入</th>
					<th width="70">支出</th>
					
				</tr>
				<c:if test="${count==0}">
					<tr class="lebi_tr_cont">
						<td colspan="4">
							<div>您还没有任何金币记录！</div>
						</td>
					</tr>
				</c:if>
				<c:if test="${count!=0}">
					<c:forEach items="${moneyList}" var="d">
						<tr>
							<td>${d.paydate }</td>
							<td>
								<c:if test="${d.leixing==0}">
									充值
								</c:if>
								<c:if test="${d.leixing==1}">
									支付
								</c:if>
							</td>
							<td>${d.paymoney }</td>
							<td>${d.setmoney }</td>
							
						</tr>
					</c:forEach>
				</c:if>
			</tbody>
		</table>
	</div>
	</div>
	
	
<div class="record" id="div2" style="display:none">
<div class="inBox" style="padding:0px;margin-bottom:0px;font-family: '微软雅黑'">
	<div class="title clearfix ">
		<div class="Left current">充  值</div>
	</div>
</div>
	<div class="lebi_tb" style="font-family:'微软雅黑'">
		<form action="<%=basePath %>moneyrecordservlet?order=mymoneyAdd" method="post" name="form2">
		<div class="" style="padding-top:20px;">
		<span class="l_h25 fl"><font size="4">支付工具：</font></span>
			<input type="radio" id="input1" name="se" style="width:30px;height:30px" /><a href="javascript:void(0);" id="href2"><img src="<%=basePath %>images/a.png"/></a>&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="radio" id="input2" name="se" style="width:30px;height:30px"/><a href="javascript:void(0);" id="href3"><img src="<%=basePath %>images/b.png"/></a>
		
		</div>
		<br/><br/>
		<span class="l_h25 fl"><font size="4">&nbsp;充 值 金 额：</font></span>
			<input type="text" id="paymoney" name="paymoney" style="width:180px;height:30px"/>
		
		<br/><br/>
		<span class="l_h25 fl"><font size="4">&nbsp;交 易 密 码：</font></span>
			<input type="password" id="paypassword" name="paypassword" style="width:180px;height:30px"/>
			<br/><br/>
			<span class="l_h25 fl"><font size="4">图片验证码：</font></span>
			<input type="text" name="code" id="code" style="width:180px;height:30px"/>
			<img src="<%=basePath %>data/enimg.jsp" id="codes" onclick="refresh();" width="90" height="35" title="看不清换一张" alt="验证码">
			<a onclick="refresh();" href="javascript:void(0);" style="margin-left: 7px;color:#0072ca">刷新验证码</a>
			<br/><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input id="form2" type="submit" value=" 充 值 " style="height: 44px; width: 180px; background-color: #ff0033 ;font-size: 25px;"/>
		</form>
	</div>
	</div>
	
	
</div>


</div>

<script type="text/javascript">
				$(function(){
					var d = new Date();
					var year = d.getFullYear();
					var month = d.getMonth()+1;
					var day = d.getDate();
					
					year = year+"-"+month;
					 $("#sdate1").datebox("setValue",year+"-"+day);
					 $("#edate1").datebox("setValue",year+"-30");
					 $("#href1").bind("click",function(){
					 	document.getElementById("div1").style.display='none';
						document.getElementById("div2").style.display='block';
					 });
					//$("#href2").hover(
						//function(){
							//document.getElementById("href2").style.display='none';
							//document.getElementById("href4").style.display='block';
						//},
						//function(){
						//	document.getElementById("href2").style.display='block';
						//	document.getElementById("href4").style.display='none';
					//});
					$("#href2").bind("click",function(){
						//var name=prompt("请输入交易密码?"); 
						document.getElementById("input1").checked='checked';
					});
					$("#href3").bind("click",function(){
						document.getElementById("input2").checked='checked';
					});
					$("#form2").bind("click",function(){
					var i=1;
					if(i=1){
						var paymoney=document.getElementById("paymoney");
						var paypassword=document.getElementById("paypassword");
						var code=document.getElementById("code");
							if($("input[name=se]:checked").val()==undefined){
									alert("请选择支付方式");
									return false;
				   			}
				   			if(paymoney.value==""){
									alert("请输入充值金额");
									paymoney.focus();
									return false;
				   			}
				   			if(isNaN(paymoney.value)){
									alert("充值金额只能为数字");
									paymoney.focus();
									return false;
				   			}
				   			if(paypassword.value==""){
									alert("请输入交易密码");
									paypassword.focus();
									return false;
				   			}
				   			if(paypassword.value.length !=6){
									alert("交易密码长度必须为6位数");
									paypassword.focus();
									return false;
							}
							if(code.value==""){
									alert("请输入验证码");
									code.focus();
									return false;
				   			}
				   		}else{
				   			return true;
				   		}
					});
				})
				function test(){
					var sd = $("#sdate1").datebox("getValue") +" 00:00:00";
					var ed = $("#edate1").datebox("getValue") +" 23:59:59";
					$("#sdate").val(sd);
					$("#edate").val(ed);
					return true;
				}
				
	</script>
	<script type="text/javascript">
	function refresh(){
		document.getElementById("codes").src= '<%=basePath %>data/enimg.jsp?'+Math.random();
	}
	
	
</script>
<!-- 尾部 -->

		<style type="text/css">
    .footer-copy .copy-index{border:none;padding-top:0;}
    .footer-icon{margin-top:0;}
</style>
<div class="footer">
    
    <div class="footer-index">
        <div class="w clearfix">
            <ul class="Left coverage">
                <li class="s1">客服热线（8:00-23:00）</li>
                <li class="s2">400-009-8666</li>
                <li class="s3">乐家具在全国实体店<span class="red">297</span>家、样板间<span class="red">1</span>家</li>
                <li class="s4">
                    <a href="javascript:void(0);" target="_blank"><i class="i-coord"></i>查看全国实体店</a>
                </li>
                <li class="s5">
                    <a href="javascript:void(0);" onclick="$.codeSms(false, {click: &#39;版权&#39;});return false;"><i class="i-mobile"></i>免费发送到手机</a>
                </li>
            </ul>
            <div class="Right clearfix service">
                   <dl>
                    <dt>关于乐家具</dt>
                    <dd>
                    <a href="javascript:void(0);" target="_blank" title="公司简介" rel="nofollow">公司简介</a>
                    <a href="javascript:void(0);" target="_blank" title="媒体聚焦" rel="nofollow">媒体聚焦</a>
                    <a href="javascript:void(0);" target="_blank" title="体验馆" rel="nofollow">体验馆</a>
                    <a href="javascript:void(0);" target="_blank" title="诚聘英才" rel="nofollow">诚聘英才</a>
                    <a href="javascript:void(0);" target="_blank" title="联系我们" rel="nofollow">联系我们</a>
                    <a href="javascript:void(0);" target="_blank" title="乐家具O2O" rel="nofollow">乐家具O2O</a>
                	</dl>
                   <dl>
                    <dt>新手指南</dt>
                    <dd>
                        <a href="javascript:void(0);" target="_blank" title="注册新用户" rel="nofollow">注册新用户</a>
                        <a href="javascript:void(0);" target="_blank" title="会员级别" rel="nofollow">会员级别</a>
                        <a href="javascript:void(0);" target="_blank" title="金币说明" rel="nofollow">金币说明</a>
                        <a href="javascript:void(0);" target="_blank" title="乐币说明" rel="nofollow">乐币说明</a>
                        <a href="javascript:void(0);" target="_blank" title="订购家具流程" rel="nofollow">订购家具流程</a>
                        <a href="javascript:void(0);" target="_blank" title="体验馆购买指导" rel="nofollow">体验馆购买指导</a>
                                                                                                                                                                                                                    </dd>
                </dl>
                                <dl>
                    <dt>配送安装</dt>
                    <dd>
                       <a href="javascript:void(0);" target="_blank" title="收货指南" rel="nofollow">收货指南</a>
                       <a href="javascript:void(0);" target="_blank" title="体验馆服务费" rel="nofollow">体验馆服务费</a>
                       <a href="javascript:void(0);" target="_blank" title="物流配送" rel="nofollow">物流配送</a>
                    </dd>
                </dl>
                <dl>
                    <dt>售后服务</dt>
                    <dd>
                       <a href="javascript:void(0);" target="_blank" title="45天无理由退换货" rel="nofollow">45天无理由退换货</a>
                       <a href="javascript:void(0);" target="_blank" title="如何申请退款" rel="nofollow">如何申请退款</a>
                       <a href="javascript:void(0);" target="_blank" title="维修补件说明" rel="nofollow">维修补件说明</a>
                       <a href="javascript:void(0);" target="_blank" title="贵就赔" rel="nofollow">贵就赔</a>
                    </dd>
                </dl>
                <dl>
                    <dt>购物保障</dt>
                    <dd>
                       <a href="javascript:void(0);" target="_blank" title="正品保证" rel="nofollow">正品保证</a>
                       <a href="javascript:void(0);" target="_blank" title="注册协议" rel="nofollow">注册协议</a>
                       <a href="javascript:void(0);" target="_blank" title="隐私保护" rel="nofollow">隐私保护</a>
                       <a href="javascript:void(0);" target="_blank" title="免责声明" rel="nofollow">免责声明</a>
                	</dd>
                </dl>
                <dl class="fr">
                    <dt>官方微信</dt>
                    <dd>
                        <img src="<%=basePath%>data/data_files/b039d9a8b5c45485f1923a7298c671a2.jpg" alt="乐家具微信公众号" width="96" height="96">
                    </dd>
                </dl>
            </div>
        </div>    
    </div>
<c:if test="${msg!=null}">
	<script type="text/javascript">
		alert("${msg}");
	</script>
</c:if>
</body>
</html>
