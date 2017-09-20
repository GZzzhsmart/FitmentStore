<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="SQLBean.UserBean"%>
<!DOCTYPE html>
<!-- saved from url=(0041)http://www.meilele.com/user/?act=security -->
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><script async="true" type="text/javascript" src="<%=basePath%>data/data_files/event" data-owner="criteo-tag"></script><script type="text/javascript" async="" src="<%=basePath%>data/data_files/mv.js"></script><script type="text/javascript" async="" src="<%=basePath%>data/data_files/mba.js"></script><script src="<%=basePath%>data/data_files/x.js"></script>
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<meta name="keywords" content="美乐乐家具网（www.meilele.com），用户中心">
<meta name="description" content="网上家具商城，在线销售田园家具，韩式家具，美式家具，儿童家具，现代家具，中式家具，欧式家具，板式家具，实木家具，沙发，软床，衣柜，餐桌。">
<title>用户中心Meilele 美乐乐家具网,网上家具商城:在线销售沙发 软床 实木床 餐桌 衣柜 韩式家具 美式家具 现代家具等</title>
<link rel="shortcut icon" href="http://image.meilele.com/favicon.ico">
<link rel="stylesheet" href="<%=basePath%>data/data_files/mll.common.user.min.css">
<link href="<%=basePath%>data/data_files/user_interface.min.css" rel="stylesheet" type="text/css">

<style type="text/css"></style>
<body class="root-body" style="min-width: 1190px;">
<%
	UserBean user = (UserBean)session.getAttribute("user");
%>
<script>
//初始空函数，防止页面报错，勿删，函数真身在页脚。
function _show_(){};function _hide_(){};
var City = {init: function(){}};
window.$ = window.$ || {};
window.M = window.M || {};
$.__IMG = M.__IMG  = 'http://image.meilele.com' || 'http://image.meilele.com';
if ( window._ipad_from && document.body ) {document.body.className = document.body.className + ' ipad_root';}
</script>
<script type="text/javascript" src="<%=basePath %>js/jquery-1.4.1.js"></script>


<div class="site-nav">
    <div class="w clearfix">
        <ul class="Left menu clearfix">
            <li class="Left banner last" id="JS_head_login">
            	<c:if test="<%=user.getUsername()==null %>">
            		<a target="_blank" href="<%=basePath %>data/login.jsp">请登录</a>&nbsp;&nbsp;
            	</c:if>
            	<c:if test="<%=user.getUsername()!=null %>">
            		<a target="_blank" href="<%=basePath %>data/login.jsp"><font color="blue"><%=user.getUsername()%></font></a>&nbsp;&nbsp;
            	</c:if>
            	<a target="_blank" href="<%=basePath %>data/zhuce.jsp">免费注册</a>&nbsp;
            	<a href="<%=basePath %>userservlet?order=exit">退出</a>
            </li>
            	
        </ul>
        <ul class="Right menu clearfix">
            <li class="Left fore">
                <a class="drop-title" href="<%=basePath %>userservlet?order=login2&username=${user.usermobile }">我的乐家具<i class="drop-arrow" target="_blank"></i></a>
               
            </li>

           <li id="JS_cart2" class="phc-cart Left fore">
                <a class="drop-title" href="/flow/?step=cart&rel=header" target="_blank" onmouseenter="window._gaq.push(['_trackEvent','2016版首页','鼠标移入购物车区域','onMouseOver'])"><i class="i-cart"></i><span class="cart-word">购物车<span id="JS_cart_num2" class="cart-count">0</span></span><i class="drop-arrow"></i></a>
                <div id="JS_cart_box2" class="cart-box dropdown cart-self">
                    <ul id="JS_cart_list2" class="cart-list" onclick="Cart.del(event);">
                    </ul>
                    <div id="JS_count_area2" class="cart-count none shopcart-count">
                        <p class="count-area" >共<span id="JS_cart_count2">0</span>件商品，共计<strong id="JS_count_total2" class="count-total red">&yen;00.00</strong></p>
                        <a class="count-btn" target="_blank" href="javascript:void(0);" target="_blank">去购物车结算</a>
                    </div>
                </div>
            </li>
            
            <li class="Left fore">
           	 	<a href="javascript:void(0);" class="drop-title"><span class="scan-word">我的消息</span></a>
                
                <ul class="dropdown two-dimension">
                    <li>
                        <a href="javascript:void(0);" class="JS_header_gaerCode" target="_blank">
                            <img src="http://img003.mllres.com/images/201704/dfad46af6bcae11c07c491b7c73d7bf3.jpg" width="132px" height="132px">
                            <span>扫一扫</span>
                            <img src="http://img002.mllres.com/images/201610/1476412218454787057.jpg">
                        </a>
                    </li>
                </ul>
            </li>
            <li class="Left fore">
                <a class="drop-title" href="javascript:void(0);" target="_blank">帮助中心<i class="drop-arrow" target="_blank"></i></a>
                <ul class="dropdown help-center">
                    <li><a href="javascript:void(0);" target="_blank">招商加盟</a></li>
                    <li><a href="javascript:void(0);" target="_blank">购买流程</a></li>
                    <li><a href="javascript:void(0);" onclick="window.mchat&&window.mchat.openui&& window.mchat.openui()" rel="nofollow">在线帮助</a></li>
                    <li><a href="javascript:void(0);" target="_blank">企业采购</a></li>
                </ul>
            </li>
            <li class="Left banner">
                <a href="javascript:;" onclick="addFavorite()">收藏本站</a>
            </li>
            
            <li class="Left banner last">
                <span class="blank" style="width:222px;height:24px;z-index:2"></span>
                <div id="JS_head_scoll_phone_527" class="JS_head_scoll_phone_527_active_br" ><div style="height:24px;width:213px;padding:0 5px;padding-left:7px;line-height:24px;overflow:hidden;" ><span style="color: #999;">服务热线：</span><span class="hotLine">176-0797-5702</span></div></div>
            </li>
        </ul>
    </div>
</div>




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
.page-header .phc-cart .cart-arrow{width:12px;height:12px;margin-left:25px;*margin-top:-14px;display:inline-block;*zoom:1;vertical-align:middle;background-position:1px -55px;transition: .2s ease-in-out ;
-webkit-transition: .2s ease-in-out ;-moz-transition: .2s ease-in-out ;-o-transition: .2s ease-in-out ;vertical-align:-1px;}
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
	<div class="user_menu" style="height: 617px;">
		<div class="navs" id="JS_u_navs">
   
    <h3><span class="s4"></span>账户设置</h3>
    <ul>
      <li><a href="<%=basePath %>userservlet?order=login3&usermobile=${user.usermobile }">账户安全</a></li>
       <li><a href="<%=basePath %>userservlet?order=login4&usermobile=${user.usermobile }" class="active">账户绑定</a></li>
      <li><a href="<%=basePath %>userservlet?order=update&usermobile=${user.usermobile }">个人资料</a></li>
    </ul>
    </div>
<!---->	</div>
<div class="user_main">
		
					<style>
.account-bind{width: 983px;}
    .account-bind ul {width: 294px;height: 100px;border: 1px solid #ededed;border-left: 2px solid #ed4c4c;background-color: #f7f7f7;margin: 30px 30px 0 0;_display:inline}
    .account-bind .i-icon {width: 50px;height: 50px;margin: 25px 40px;_display:inline}
    .account-bind .i-weixin {background:url(http://image.meilele.com/themes/paipai/images/user/account-bind.png) no-repeat -100px -50px;}
    .account-bind .i-taobao {background:url(http://image.meilele.com/themes/paipai/images/user/account-bind.png) no-repeat -0 -50px;}
    .account-bind .i-weibo {background:url(http://image.meilele.com/themes/paipai/images/user/account-bind.png) no-repeat -50px -50px;}
    .account-bind .i-zhifubao {background:url(http://image.meilele.com/themes/paipai/images/user/account-bind.png) no-repeat -150px -50px;}
    .account-bind .i-qq {background:url(http://image.meilele.com/themes/paipai/images/user/account-bind.png) no-repeat -200px -50px;}
    .account-bind .i-weixin-bind {background:url(http://image.meilele.com/themes/paipai/images/user/account-bind.png) no-repeat -100px 0;}
    .account-bind .i-taobao-bind {background:url(http://image.meilele.com/themes/paipai/images/user/account-bind.png) no-repeat 0 0;}
    .account-bind .i-weibo-bind {background:url(http://image.meilele.com/themes/paipai/images/user/account-bind.png) no-repeat -50px 0;}
    .account-bind .i-zhifubao-bind {background:url(http://image.meilele.com/themes/paipai/images/user/account-bind.png) no-repeat -150px 0;}
    .account-bind .i-qq-bind {background:url(http://image.meilele.com/themes/paipai/images/user/account-bind.png) no-repeat -200px 0;}
    .account-bind .btn-group {margin-top: 18px;width: 100px;}
    .account-bind .no-bind{color: #333;}
    .account-bind .bind-done{color: #333333;}
    .account-bind .btn-group .bind-btn {box-sizing:border-box;display: block;width: 98px;height: 30px; border:1px solid #ebebeb;background-color: #fff;line-height: 28px;text-align: center;color: #ed4c4c;font-size: 14px;margin-top: 13px;border-radius:2px;}
    .account-bind .btn-group .bind-btn:hover {color:#ed4c4c !important}
    .account-bind .btn-group .bind-btn.done {border:1px solid #ed4c4c;background-color: #ed4c4c;color: #fff}
    .account-bind .btn-group .bind-btn.done {color: #fff !important}
    
    .account-bind-layer .in {width: 480px;border: 1px solid #fff;border-radius:0;color:#333;}
    
    .account-bind-layer .a-title {font-size: 16px;font-weight: bold;color: #333;padding-bottom: 15px;border-bottom:1px solid #eeeeee;}
    .account-bind-layer .a-title .a-x {background:url(http://image.meilele.com/themes/paipai/images/user/account-bind-layer.png) no-repeat;height: 18px;width: 18px;cursor: pointer;}
    .account-bind-layer .a-content {text-align: center;margin: 40px 0}
    .account-bind-layer .a-content .a-tips {font-size: 14px;line-height: 41px;position: relative;margin-left: 41px;_margin-left:0;}
    .account-bind-layer .a-content i {width:41px;height: 41px;background:url(http://image.meilele.com/themes/paipai/images/user/account-bind-layer.png) no-repeat -18px 0;position: absolute;left: -51px;_top:-10px}
    .account-bind-layer .a-content .a-type {color: #ed4c4c;margin: 0 3px;}
    .account-bind-layer .a-btn {text-align: center;margin-bottom: 35px;}
    .account-bind-layer .a-btn a {display: inline-block;width: 90px;height: 30px;text-align: center;font-size: 14px;line-height: 30px;color: #fff;border-radius: 2px;}
    .account-bind-layer .a-btn a:hover {color: #fff !important;text-decoration: none}
    .account-bind-layer .a-btn .a-ok {background-color: #ed4c4c;margin-right: 10px;}
    .account-bind-layer .a-btn .a-cancel {background-color: #fff;color: #666666;border: 1px solid #d6d6d6;}
     .account-bind-layer .a-btn .a-cancel:hover{color: #666666!important;}
    .account-bind-layer .a-form {margin-top: 30px;}
    .account-bind-layer .a-form .a-group {line-height: 30px;margin-bottom: 20px;}
    .account-bind-layer .a-form label {width: 100px;text-align: right;margin-left:50px;float:left;height: 30px;margin-right: 6px;font-size: 14px;}
    .account-bind-layer .a-form input {padding-left:6px;width: 136px;height: 30px;border:1px solid #ebebeb;line-height: 30px;float:left;}
    .account-bind-layer .a-form .a-captcha {margin: 0 10px;cursor: pointer}
    .account-bind-layer .a-form .a-captcha-btn {color:#4a92f5}
    .account-bind-layer .a-form .a-captcha-btn:hover {color:#4a92f5 !important;text-decoration: none}
    .account-bind-layer .a-form .a-icon {display: inline-block;width:16px;height: 16px;margin-left: 4px;vertical-align: -2px;_vertical-align: 0;}
    .account-bind-layer .a-form .a-sms-btn {background-color: #fff;color: #0072ca;display: inline-block;height: 30px;line-height: 30px;padding: 0 10px;margin-left:10px;border-radius: 2px;border:1px solid #d6d6d6;}
    .account-bind-layer .a-form .a-sms-btn:hover {color: #333 !important; text-decoration: none}
    .account-bind-layer .a-form .sms-disabled {color: #999;cursor: default}
    .account-bind-layer .a-form .sms-disabled:hover {color: #333 !important;}
    #JS_tip_msg {color:#ed4c4c;text-align:center;margin: 10px 0;}
    
    .account-bind-layer2 .a-form label {width: 70px;text-align: right;margin-left: 130px;}
    
    .account-bind-layer3 .in {width:440px;}
    .account-bind-layer3 .qr-code {position: relative;}

    .account-bind-layer3 .qr-code .qr-mark {position: absolute;background: rgba(0,0,0,.5);width: 174px;height: 174px;left: 118px;top:33px}
    .account-bind-layer3 .qr-mark i {position:static;display: block;width: 48px;height: 48px;background: url('http://image.meilele.com/themes/paipai/images/allPuzzle.png') -123px -53px no-repeat;margin: 63px auto 0;}
    #JS_QR_TEXT {margin-bottom:10px;font-size:16px;font-weight:bold}
    .img-div{border: 1px solid #ccc;width: 174px;height: 174px;margin: 0 auto;}

    
</style>

   <div class="white_box u_profile yahei">
   <h3 class="title-h3">账户绑定</h3>
    <div class="account-bind clearfix">
        <ul class="Left clearfix">
            <li class="i-icon i-weixin Left"></li>
            <li class="btn-group Left">
                <div class="clearfix"><span class="Left">微信</span><span class="Right no-bind">未绑定</span></div>
                <div>
                                    <a class="bind-btn done" href="javascript:;" onclick="bind('w2252064541','WEIXIN')">立即绑定</a>
                                </div>
            </li>
        </ul>
        <ul class="Left clearfix">
            <li class="i-icon i-taobao Left"></li>
            <li class="btn-group Left">
                <div class="clearfix"><span class="Left">淘宝</span><span class="Right no-bind">未绑定</span></div>
                <div>
                                    <a class="bind-btn done" href="javascript:;" onclick="bind('w2252064541','TAOBAO')">立即绑定</a>
                                </div>
            </li>
        </ul>
        <ul class="Left clearfix">
            <li class="i-icon i-weibo Left"></li>
            <li class="btn-group Left">
                <div class="clearfix"><span class="Left">微博</span><span class="Right no-bind">未绑定</span></div>
                <div>
                   <a class="bind-btn done" href="javascript:;" onclick="bind('w2252064541','WEIBO')">立即绑定</a>
                </div>
            </li>
        </ul>
        <ul class="Left clearfix">
            <li class="i-icon i-zhifubao Left"></li>
            <li class="btn-group Left">
                <div class="clearfix"><span class="Left">支付宝</span><span class="Right no-bind">未绑定</span></div>
                <div>
                   <a class="bind-btn done" href="javascript:;" onclick="bind('w2252064541','ALIPAY')">立即绑定</a>
                </div>
            </li>
        </ul>
        <ul class="Left clearfix">
            
            <li class="i-icon i-qq Left"></li>
            <li class="btn-group Left">
                <div class="clearfix"><span class="Left">QQ</span><span class="Right no-bind">未绑定</span></div>
                <div>
                   <a class="bind-btn done" href="javascript:;" onclick="bind('w2252064541','QQ')">立即绑定</a>
                </div>
            </li>
        </ul>
    </div>
</div>
</div>




</div>


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
                <li class="s3">美乐乐在全国实体店<span class="red">297</span>家、样板间<span class="red">1</span>家</li>
                <li class="s4">
                    <a href="http://www.meilele.com/expr.html" target="_blank"><i class="i-coord"></i>查看全国实体店</a>
                </li>
                <li class="s5">
                    <a href="javascript:;" onclick="$.codeSms(false, {click: &#39;版权&#39;});return false;"><i class="i-mobile"></i>免费发送到手机</a>
                </li>
            </ul>
            <div class="Right clearfix service">
                   <dl>
                    <dt>关于美乐乐</dt>
                    <dd>
                    <a href="javascript:void(0);" target="_blank" title="公司简介" rel="nofollow">公司简介</a>
                    <a href="javascript:void(0);" target="_blank" title="媒体聚焦" rel="nofollow">媒体聚焦</a>
                    <a href="javascript:void(0);" target="_blank" title="体验馆" rel="nofollow">体验馆</a>
                    <a href="javascript:void(0);" target="_blank" title="诚聘英才" rel="nofollow">诚聘英才</a>
                    <a href="javascript:void(0);" target="_blank" title="联系我们" rel="nofollow">联系我们</a>
                    <a href="javascript:void(0);" target="_blank" title="美乐乐O2O" rel="nofollow">美乐乐O2O</a>
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
                        <img src="<%=basePath%>data/data_files/b039d9a8b5c45485f1923a7298c671a2.jpg" alt="美乐乐微信公众号" width="96" height="96">
                    </dd>
                </dl>
            </div>
        </div>    
    </div>
    
   


<script id="JS_city_data" type="text/html"></script>



<script src="<%=basePath%>data/data_files/jq.js"></script> 


<div id="static_dynamic" name="static_dynamic" page_sn="user" rgn_id="" debug=""></div>
<script type="text/javascript">window.static_dynamic && static_dynamic();</script><div id="INIT_Fchat2" class="" style="display: none;width: 58px;height: 127px;right: 5px;top: 190px;_top: expression(eval(document.documentElement.scrollTop+190));background: url(http://image.meilele.com/images/201405/1401178094439.png) 0 0;_background: url(http://image.meilele.com/images/201405/140117892382.gif) 0 0;cursor: pointer;font-size: 12px;z-index: 1500;position: fixed;_position: absolute;overflow: hidden;"><div class="FC_btns FC_number" style="margin-left:24px;margin-top:-1px;" id="JS_FC_number2"></div></div>
<script type="text/javascript">
(function(){
	window.mchat = window.mchat || {};

			mchat.activityUrl = 'http://www.meilele.com/topic/201705_mqjcj.html?site_from=zhannei&href=[JS_img_1]#thg=gaca&adg=gaco&adn=%E6%B5%AE%E6%BC%8220%E6%8A%B5200&ado=1&adc=0';
	
	var d = document.getElementById('INIT_Fchat2');
	if( (d && mchat.config) || window._ipad_from ){
		d.style.display = 'none';
	}
	var date = new Date();
	d.onclick = function(){
		if( mchat.show ){
			mchat.show();
		}else{
			if (window.isGoodsIndex) {
				$.ajax({
					url:'http://image.meilele.com/js/mll/chatFloat_new.min.js?'+date.getFullYear()+date.getMonth()+date.getDate(),
					cache:true,
					dataType:'script'
				});
			} else {
				$.ajax({
					url:'http://image.meilele.com/js/mll/chatFloat.min.js?'+date.getFullYear()+date.getMonth()+date.getDate(),
					cache:true,
					dataType:'script'
				});
			}
		}
	}
	setTimeout(function(){
		if ( !mchat.config  || !mchat.config.background_main ) {
			$('#INIT_Fchat2').trigger('click');
		}
	},1500);
})();
</script><script src="<%=basePath%>data/data_files/ana.min.js"></script>
<script>window._ana && _ana.push( ['trackView'] );</script>

</body>
</html>