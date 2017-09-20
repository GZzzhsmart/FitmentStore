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
 <script type="text/javascript" src="<%=basePath %>scripts/swfobject.js"></script>
 <script type="text/javascript" src="<%=basePath %>scripts/fullAvatarEditor.js"></script>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>用户的操作</title>
<link rel="shortcut icon" href="http://image.meilele.com/favicon.ico" />
<link rel="stylesheet" href="<%=basePath%>data/data_files/mll.common.user.min.css" />
<link href="<%=basePath%>data/data_files/user_interface.min.css" rel="stylesheet" type="text/css"/>
<style type="text/css"></style>
</head>
<body class="root-body" style="min-width:1190px;">
<%
	UserBean user = (UserBean)session.getAttribute("user");
%>
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
			<a href="<%=basePath %>shopcarservlet?order=list" class="cart"><b class="common-bg cart-icon"></b>我的购物车<b class="common-bg cart-arrow"></b></a>
			<span id="JS_cart_num" class="cart-num">0</span>
			<span class="blank none">&nbsp;</span>
			<div id="JS_cart_box" class="cart-box">
				<ul id="JS_cart_list" class="cart-list cart-full cart-full3" onclick="Cart.del(event);"></ul>
				<div id="JS_count_area" class="cart-count">
					<p class="count-area">共<span id="JS_cart_count">0</span>件商品，共计<strong id="JS_count_total" class="count-total red">¥279398.23</strong></p>
					<a class="count-btn" target="_blank" href="javascript:void(0);">去购物车结算</a>
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
<div class="user_main">

<style type="text/css">
.content-one {
	padding: 10px 30px;
}

.content-list {
	margin-top: 15px;
}

.content-one .u-info {
	position: relative;
}

.content-one .u-head {
	width: 110px;
	height: 110px;
	border: none;
	border-radius: 50%;
	overflow: hidden;
	margin: 20px 20px 20px 0;
}

.content-one .u-head img {
	width: 110px;
	height: 110px;
}

.content-one .u-level {
	width: 151px;
	height: 117px;
	padding: 20px 38px 20px 0;
	border-right: dashed 1px #efefef;
}

.content-one .u-level .name {
	color: #333;
	font-size: 18px;
}

.content-one .u-level .i-mes {
	margin-left: 10px;
	position: relative;
	display: inline-block;
	width: 22px;
	height: 20px;
	background: url(http://image.meilele.com/images/user/user_bg.png) -60px
		-41px no-repeat;
}

.content-one .u-level .mes-num {
	position: absolute;
	display: inline-block;
	min-width: 11px;
	height: 15px;
	line-height: 15px;
	background: #ed4c4c;
	border-radius: 17px;
	color: #fff;
	font-style: normal;
	left: 11px;
	top: -7px;
	font-size: 12px;
	text-align: center;
	padding: 1px 3px;
}
.content-one .u-level .mem-lev,.content-one .u-level .secur-lev {
	height: 22px;
	line-height: 22px;
	margin-top: 6px;
	font-size: 12px;
}
.content-one .u-level .t {
	color: #666;
}
.content-one .u-level .mem-lev .i-mem-lev {
	display: inline-block;
	width: 17px;
	height: 17px;
	margin-left: 10px;
	vertical-align: -3px;
	background: url(http://image.meilele.com/images/user/user_bg.png) -105px
		-43px no-repeat;
}
.content-one .u-level .t-green {
	color: #25b957;
}
.content-one .u-level .lev-bar-bg {
	display: inline-block;
	margin-left: 8px;
	width: 56px;
	background: #e0e0e0;
	height: 8px;
	border-radius: 4px;
	position: relative;
}
.content-one .u-level .lev-bar {
	display: inline-block;
	width: 28px;
	height: 8px;
	position: absolute;
	border-radius: 4px;
	background-color: #25b957;
	top: 0;
	left: 0;
}
.content-one .bind-lev {
	margin-top: 10px;
	margin-left: -1px;
	font-size: 12px;
}
.content-one .bind-lev .i-valid {
	display: inline-block;
	margin-right: 4px;
	width: 28px;
	height: 28px;
	background: url(http://image.meilele.com/images/user/user_bg.png) 0
		-127px no-repeat;
}
.content-one .bind-lev .i-valid.v1 {
	background-position: 0 -155px;
}
.content-one .bind-lev .i-valid.v2 {
	background-position: -29px -127px;
}
.content-one .bind-lev .i-valid.v3 {
	background-position: -29px -155px;
}
.content-one .bind-lev .i-valid.v4 {
	background-position: -57px -127px;
}
.content-one .bind-lev .i-valid.v5 {
	background-position: -57px -155px;
}
.content-one .bind-lev .i-valid.v6 {
	background-position: -86px -127px;
}
.content-one .bind-lev .i-valid.v7 {
	background-position: -86px -155px;
}
.content-one .u-order-link {
	padding: 30px 40px;
	border-right: dashed 1px #efefef;
}
.content-one .u-order-link li {
	float: left;
	display: inline;
	margin-right: 36px;
	width: 66px;
}
.content-one .u-order-link li.last {
	margin-right: 0;
}
.content-one .u-order-link li .link-icon {
	display: block;
	width: 66px;
	height: 66px;
	background: url(http://image.meilele.com/images/user/user_bg.png) 0
		-61px no-repeat;
}
.content-one .u-order-link li .link-icon.i2 {
	background-position: -66px -61px;
}
.content-one .u-order-link li .link-icon.i3 {
	background-position: -132px -61px;
}
.content-one .u-order-link li .link-icon.i4 {
	background-position: -198px -61px;
}
.content-one .u-order-link li .link-txt {
	margin-top: 10px;
	display: block;
	height: 24px;
	line-height: 24px;
	text-align: center;
	color: #333;
}
.content-one .coin-box {
	padding: 30px 25px 0 0;
}
.content-one .coin-box td {
	height: 28px;
	color: #666;
	font-size: 14px;
}
.content-one .coin-box td a {
	color: #444;
	font-weight: bold;
}
.content-one .u-info .dot {
	position: absolute;
	width: 15px;
	height: 15px;
	background: url(http://image.meilele.com/images/user/user_bg.png) -162px
		-230px no-repeat;
	right: 170px;
	top: -16px;
}
.content-one .u-info .down-dot {
	top: 161px;
}
/*我的订单*/
.content-list .def-act-filter {
	height: 23px;
	border: solid 1px #ebebeb;
	position: relative;
}
.content-list .def-act-filter .act-show {
	display: inline-block;
	height: 23px;
	line-height: 23px;
	padding-right: 20px;
	text-indent: 6px;
	color: #666;
	position: relative;
}
.content-list .def-act-filter .i-arrow {
	position: absolute;
	width: 12px;
	height: 6px;
	background: url(http://image.meilele.com/images/user/user_bg.png) -135px
		-5px no-repeat;
	top: 9px;
	right: 2px;
	overflow: hidden;
}
.content-list .def-act-filter.hover .i-arrow {
	transform: rotateX(180deg);
	-o-transform: rotateX(180deg);
	-ms-transform: rotateX(180deg);
	-moz-transform: rotateX(180deg);
	-webkit-transform: rotateX(180deg);
}
.content-list .def-act-filter ul {
	display: none;
	background-color: #fff;
	border: solid 1px #ebebeb;
	border-radius: 2px;
	position: absolute;
	right: -1px;
	top: 23px;
	z-index: 300;
}
.content-list .def-act-filter.hover ul {
	display: block;
}
.content-list .def-act-filter ul li a {
	display: block;
	height: 26px;
	line-height: 26px;
	padding: 0 20px 0 6px;
	background-color: #fff;
	white-space: nowrap;
	color: #666;
}
.content-list .def-act-filter ul li a:hover {
	background-color: #ed4c4c;
	color: #fff;
}
.content-list .def-order {
	width: 100%;
	border-collapse: collapse;
}
.content-list .def-order td {
	height: 96px;
	border-top: solid 1px #ebebeb;
	border-bottom: solid 1px #ebebeb;
	text-align: center;
}
.content-list .def-order .o-img-td {
	font-size: 0;
	text-align: left;
}
.content-list .def-order .o-img-td a {
	display: inline-block;
	margin-right: 15px;
}
.content-list .def-order .o-dot {
	display: inline-block;
	height: 67px;
	line-height: 58px;
	font-size: 30px;
	color: #ccc;
}
.content-list .order-trace-a i {
	display: inline-block;
	width: 12px;
	height: 6px;
	background: url(http://image.meilele.com/images/user/user_bg.png) -135px
		-13px no-repeat;
}
.content-list .track {
	position: relative;
	z-index: 4;
}
.content-list .track .trackInfo {
	border: 1px solid #eacaa5;
	border-radius: 2px;
	background: #fffae3;
	padding: 5px 10px 10px 10px;
	margin-top: 7px;
	position: absolute;
	width: 513px;
	top: 0;
	right: 8px;
	z-index: 10;
}
.content-list .track .trackInfo .out {
	width: 0;
	height: 0;
	position: absolute;
	top: -7px;
	right: 30px;
	border-left: 7px solid transparent;
	border-right: 7px solid transparent;
	border-bottom: 7px solid #eacaa5;
	_border-left-color: tomato;
	_border-right-color: tomato;
	_filter: chroma(color = tomato);
}
.content-list .track .trackInfo .in {
	width: 0;
	height: 0;
	position: absolute;
	top: -6px;
	right: 31px;
	border-left: 6px solid transparent;
	border-right: 6px solid transparent;
	border-bottom: 6px solid #fffae3;
	_border-left-color: tomato;
	_border-right-color: tomato;
	_filter: chroma(color = tomato);
}
.content-list .track .trackList {
	width: 100%;
}
.content-list .track .trackInfo th {
	font-weight: normal;
	border-bottom: dotted 1px #ebebeb;
	color: #999;
	height: 24px;
	text-align: left;
}
.content-list .track .trackInfo td {
	color: #666;
	height: 20px;
	text-align: left;
	border: none;
}
.content-list .oper a {
	color: #0072ca;
}
.content-list .oper .btn_s {
	display: block;
	width: 80px;
	margin: 0 auto;
	padding: 3px;
	margin-bottom: 5px;
	background-color: #ed4c4c;
	border-radius: 4px;
	color: #fff;
}
.tabConts {
	padding-top: 20px;
}
.hotSlide {
	position: relative;
	height: 157px;
}
.hotSlide .container {
	position: absolute;
	width: 880px;
	height: 157px;
	overflow: hidden;
	left: 35px;
}
.hotSlide .hot_list {
	position: absolute;
	height: 157px;
}
.hotSlide .hot_list .listItem {
	float: left;
	width: 160px;
	height: 157px;
	line-height: 1.6;
	margin-right: 20px;
}
.hotSlide .next,.hotSlide .prev {
	width: 18px;
	height: 27px;
	background: url(http://image.meilele.com/images/user/user_bg.png) -170px
		-16px no-repeat;
	position: absolute;
	left: 6px;
	top: 40px;
	display: block;
	text-indent: -999em;
}
.hotSlide .next {
	background-position: -192px -16px;
	left: 930px;
}
.hotSlide .hot_list .listItem p {
	margin: 14px 0 4px 0;
	line-height: 1;
}
.avatar-layer {
	top: 80px;
}
.ava-edit {
	width: 682px;
	border: solid 5px rgba(85, 85, 85, 0.3);
	border-radius: 5px;
	background: #fff;
	margin-left: auto;
	margin-right: auto;
}
.ava-edit .header {
	height: 40px;
	padding: 0 10px;
	background: #eee;
	font-weight: bold;
}
.ava-edit .header span {
	padding-left: 10px;
	font-size: 15px;
	font-family: '微软雅黑';
	color: #454545;
	float: left;
}
.ava-edit .header span,.ava-edit .header a {
	display: inline-block;
	height: 40px;
	line-height: 40px;
	vertical-align: top;
}
.ava-edit .header a {
	font-size: 20px;
	text-decoration: none;
	color: #ccc;
	float: right;
}
.content-one .u-level p.name span {
	display: inline-block;
	max-width: 100px;
	overflow: hidden;
	white-space: nowrap;
	text-overflow: ellipsis;
}
</style>
				
			
					
<div class="content-one" id="div1">
	
    <div class="clearfix u-info">
        <div class="Left u-head">
            <a href="javascript:void(0);" onclick="avatar.show();" title="修改我的头像">
                <img class="avatar" src="<%=basePath %>${user.userface }" />
            </a>
        </div>
        
       
        <div class="Left u-level">
       		<c:if test="<%=user.getUsername()!=null %>">
            <p class="name"><span title="<%=user.getUsername()%>"><%=user.getUsername()%></span><a href="/user/?act=news" target="_blank" class="i-mes"><i class="mes-num JS_mes_num">0</i></a></p>
            </c:if>
            <p class="mem-lev mem-le-1">
                <a href="javascript:void(0);" target="_blank" class="t">注册会员</a><i class="i-mem-lev"></i>
            </p>
            <p class="secur-lev">
                <span class="t">账户安全</span>
                <span class="lev-bar-bg"><span class="lev-bar" style="width:14px;"></span></span>
                <span class="t  t-green ">25%</span>
            </p>
           
        </div>
        <ul class="u-order-link Left clearfix">
            <li>
                <a href="<%=basePath %>dingdanservlet?order=init1&effective=1" class="link-icon"></a>
                <a href="<%=basePath %>dingdanservlet?order=init1&effective=1" class="link-txt">未付款<span class="gray">(${count1 })</span></a>
            </li>
            <li>
                <a href="<%=basePath %>dingdanservlet?order=init1&effective=2" class="link-icon i2"></a>
                <a href="<%=basePath %>dingdanservlet?order=init1&effective=2" class="link-txt">待发货<span class="gray">(${count2 })</span></a>
            </li>
            <li>
                <a href="<%=basePath %>dingdanservlet?order=init1&effective=3" class="link-icon i3"></a>
                <a href="<%=basePath %>dingdanservlet?order=init1&effective=3" class="link-txt">待收货<span class="gray">(${count3 })</span></a>
            </li>
            <li class="last">
                <a href="<%=basePath %>dingdanservlet?order=init1&effective=4" class="link-icon i4"></a>
                <a href="<%=basePath %>dingdanservlet?order=init1&effective=4" class="link-txt">待评价<span class="gray">(${count4 })</span></a>
            </li>
        </ul>
        <div class="Right coin-box">
            <table>
                <tr><td>乐&emsp;币:&nbsp;&nbsp;</td><td>${user.ledou }个</td></tr>
                <tr><td>余&emsp;额:&nbsp;&nbsp;</td><td><a href="<%=basePath%>moneyrecordservlet?order=mymoneyList" class="num">${user.remainmoney }</a>元</td></tr>
                <tr><td>优&nbsp;惠&nbsp;券:&nbsp;&nbsp;</td><td><a href="javascript:void(0);" class="num">0</a>张</td></tr>
            </table>
        </div>
        <div class="dot up-dot"></div>
        <div class="dot down-dot"></div>
    </div>
</div>
		<div class="content-list">
			<div class="clearfix">
				<div class="c-title Left">
					我的订单
				</div>
				<a class="Right gray" href="<%=basePath%>data/myinfo.jsp"
					target="right">全部订单<span class="songti">>></span>
				</a>
			</div>
			<c:if test="${count1==0&&count2==0&&count3==0&&count4==0}">
				<div class="list-tips">
					<i class="i-warn"></i>您还没有任何商品购买记录！<br/><br/><br/><br/><br/><br/><br/><br/><br/>
				</div>
			</c:if>
			<c:if test="${count1!=0||count2!=0||count3!=0||count4!=0}">
				<c:forEach items="${dingdanList}" var="d">
					<table class="mt20 def-order">
			            <tr>
				            <td width="200" class="o-img-td">
				               <a  href="<%=basePath %>homeservlet?order=look&homeid=${d.homeid }" title="${d.name }"><img src="<%=basePath %>${d.tupian }" width="100" height="67" ></a>
				            </td>
			           		<td width="150">${d.name }</td>
				            <td width="184">
				                订单号：<a href="javascript:void(0)">${d.dingdannumber }</a><br />
				                ${d.time }            
				            </td>
				            <td width="116">
				                <span class="orange">¥${d.price }</span>
				            </td>
				            <c:if test="${d.effective==1}">
				           		 <td width="120">
				                	待付款<br />
				            	</td>
				            </c:if>
				             <c:if test="${d.effective==2}">
				           		 <td width="120">
				                	待发货<br />
				            	</td>
				            </c:if>
				             <c:if test="${d.effective==3}">
				           		 <td width="120">
				                	待收货<br />
				            	</td>
				            </c:if>
				             <c:if test="${d.effective==4}">
				           		 <td width="120">
				                	待评价<br />
				            	</td>
				            </c:if>
				             <c:if test="${d.effective==5}">
				           		 <td width="120">
				                	已评价<br />
				            	</td>
				            </c:if>
				            <td>
				                <a class="blue" href="<%=basePath %>dingdanservlet?order=look&dingdanid=${d.dingdanid }&homeid=${d.homeid }">查看</a>
				            </td>
			        	</tr>
	        		</table>
        		</c:forEach>
			</c:if>
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


<script LANGUAGE=javascript> 

function openwin() { 
	alert("ok");
	window.open ("<%=basePath%>data/simpleDemo.html", "","height=100,width=400,toolbar=no,menubar=no,scrollbars=no,resizable=no, location=no,status=no");
	//window.showModalDialog('<%=basePath%>data/simpleDemo.html','window','dialogHeight:400px;dialogWidth:600px;center:yes;scroll:yes;help:no;status:no');
} 

</script>

</body>
</html>
