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
<style type="text/css"></style>
</head>

<body class="root-body" style="min-width:1190px;" onload="body();">
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
			<form id="JS_search_form" class="search-form" order="<%=basePath %>homeservlet?order=findlist" method="post"  target="_blank">
				<input type="submit" class="submit-btn Right" value="搜索">
				<input id="JS_MLL_search_header_input" name="homename" placeholder="团购" value="" autocomplete="off" type="text" maxlength="255" class="search-input search-input-focus">
			</form>
			<div id="JS_search_suggest" class="suggest" style="display: none;">
			</div>
		</div>
        <div id="JS_cart" class="uph-cart Right">
			<a href="javascript:void(0);" class="cart"><b class="common-bg cart-icon"></b>我的购物车<b class="common-bg cart-arrow"></b></a>
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
<div class="user_main">

<style type="text/css">
.content-list{padding:20px 30px;min-height:573px;background-color: #fff;}
.order-nav{margin-top: 20px;}
.order-nav li{margin-right: 26px;float: left;}
.order-nav li a{color: #333;font-size: 14px;padding: 2px  3px 4px 3px;}
.order-nav li a.current,.order-nav li a:hover{color: #ee1f1f!important;font-weight:bold;text-decoration: none;border-bottom: solid 2px #ee1f1f;}
.order-filter{float: right;height: 22px;border:solid 1px #ebebeb;position: relative;margin-top: 20px;}
.order-filter .order-fl-show{width:100px;box-sizing:border-box;padding-left:5px;display: inline-block;height: 22px;line-height:22px;color:#666;position:relative;}
.order-filter .order-fl-show .i-arrow {position: absolute; width: 12px; height: 6px; background: url(http://image.meilele.com/images/user/user_bg.png) -135px -5px no-repeat;top: 9px; right:2px;overflow: hidden;}
.order-filter .order-f{display: none; background-color: #fff;border: solid 1px #ebebeb;border-radius: 2px; position: absolute; right: -1px;top: 23px;z-index: 100;}
.order-filter.hover .order-f{display: block;}
.order-filter .order-f li a{display: block;box-sizing:border-box;width:100px;height: 20px;line-height: 20px;padding:0 5px;background-color: #fff;white-space: nowrap;}
.order-filter .order-f li a:hover{background-color: #ed4c4c;color: #fff;}
.content-list .table-list{width: 950px;border:none;font-size: 12px;font-style: normal;border-collapse: collapse;}
.content-list .table-list .gray-td{background-color: #f2f2f2;height: 36px;color:#555;}
.content-list .table-list .white-line{background-color: #fff;height: 10px;}
.content-list .table-list .gray-title{background-color: #f2f2f2;height: 36px;color:#666;border:solid 1px #eee;border-bottom: none;text-indent: 20px;}
.content-list .table-list .nobt{border-left: solid 1px #eee;border-bottom: solid 1px #eee;border-right: solid 1px #eee;}
.content-list .table-list .td-cen{text-align: center;}
.content-list .order-img{width: 340px;margin: 15px 15px 0 15px;}
.content-list .list-h-l{height: 82px;overflow: hidden;}
.content-list .order-img a{float:left;margin:0 0 15px 15px;}
.content-list .order-img a.first{margin-left: 0;}
.content-list .order-img-num{display: block; margin: 40px 20px 0 0; color: #999;cursor: pointer;}
.content-list .order-img-num i{display:inline-block;width: 12px; height: 6px; background: url(http://image.meilele.com/images/user/user_bg.png) -135px -5px no-repeat;}
.content-list .order-img-num .i-up-arr{background-position: -135px 1px;vertical-align: 2px;}
.content-list .order-trace-a i{display: inline-block; width: 12px; height: 6px; background: url(http://image.meilele.com/images/user/user_bg.png) -135px -13px no-repeat;}
.content-list .track{position: relative;z-index: 4;}
.content-list .track .trackInfo {border: 1px solid #eacaa5;border-radius:2px;background: #fffae3; padding: 5px 10px 10px 10px; margin-top: 7px;position: absolute;width: 513px; top: 0; right: 8px; z-index: 10;}
.content-list .track .trackInfo .out {width: 0; height: 0; position: absolute; top: -7px; right: 30px;border-left: 7px solid transparent;border-right: 7px solid transparent;border-bottom: 7px solid #eacaa5;_border-left-color: tomato;_border-right-color: tomato;_filter: chroma(color=tomato);}
.content-list .track .trackInfo .in {width: 0; height: 0; position: absolute; top: -6px; right: 31px;border-left: 6px solid transparent;border-right: 6px solid transparent;border-bottom: 6px solid #fffae3;_border-left-color: tomato;_border-right-color: tomato;_filter: chroma(color=tomato);}

.content-list .track .trackList{width: 100%;}
.content-list .track .trackInfo th{font-weight: normal;border-bottom: dotted 1px #ebebeb; color: #999; height: 24px;text-align: left;}
.content-list .track .trackInfo td{color: #666;height: 20px;text-align: left;}
.content-list .oper a{display:block;padding-top:3px;color: #0072ca;}
.content-list .oper .btn_s,.content-list .oper .btn_cancel_s{display: block; width: 80px; margin: 0 auto; padding: 3px; margin-bottom: 5px; background-color: #ed4c4c; border-radius: 2px;color: #fff;}
.content-list .order-num-search{float:right;margin-top:20px;margin-left:5px;}
.content-list .order-num-btn{margin-left:2px;padding:0;width:50px;height:24px;line-height:24px;color:#fff;background-color:#ed4c4c;border:none;border-radius:2px;}
.content-list .order-num-input{box-sizing:border-box;width:150px;height:24px;line-height:22px;color:#333;border:solid 1px #ebebeb;vertical-align:top;}
.cancelAndRefund .info_box{width:100%;}
.content-list .paybtn{display:inline-block;width:70px;height:24px;line-height:24px;text-align:center;color:#fff;background-color:#ed4e4e;border-radius:2px;}
/* 弹窗样式修改 */
.prompt-error .in{width:300px;}
.lightBox_ucommon .in{width:600px;}
</style>

				
					
<div class="content-list">
    <div class="c-title">我的订单</div>
    <div class="order-title-box clearfix">
        <ul class="order-nav Left" id="ul" style="display:block"> 
            <li><a href="<%=basePath%>dingdanservlet?order=init" class="current" id="btn_all">全部订单</a></li>
            <li><a href="<%=basePath%>dingdanservlet?order=init1&effective=1" id="btn_1">待付款</a></li>
            <li><a href="<%=basePath%>dingdanservlet?order=init1&effective=2" id="btn_2">待发货</a></li>
            <li><a href="<%=basePath%>dingdanservlet?order=init1&effective=3" id="btn_3">待收货</a></li>
            <li><a href="<%=basePath%>dingdanservlet?order=init1&effective=4" id="btn_4">待评价</a></li>
        </ul>
         <ul class="order-nav Left" id="ul1" style="display:none"> 
            <li><a href="<%=basePath%>dingdanservlet?order=init" id="btn_all">全部订单</a></li>
            <li><a href="<%=basePath%>dingdanservlet?order=init1&effective=1" class="current" id="btn_1">待付款</a></li>
            <li><a href="<%=basePath%>dingdanservlet?order=init1&effective=2" id="btn_2">待发货</a></li>
            <li><a href="<%=basePath%>dingdanservlet?order=init1&effective=3" id="btn_3">待收货</a></li>
            <li><a href="<%=basePath%>dingdanservlet?order=init1&effective=4" id="btn_4">待评价</a></li>
        </ul>
         <ul class="order-nav Left" id="ul2" style="display:none"> 
            <li><a href="<%=basePath%>dingdanservlet?order=init" id="btn_all">全部订单</a></li>
            <li><a href="<%=basePath%>dingdanservlet?order=init1&effective=1" id="btn_1">待付款</a></li>
            <li><a href="<%=basePath%>dingdanservlet?order=init1&effective=2" class="current" id="btn_2">待发货</a></li>
            <li><a href="<%=basePath%>dingdanservlet?order=init1&effective=3" id="btn_3">待收货</a></li>
            <li><a href="<%=basePath%>dingdanservlet?order=init1&effective=4" id="btn_4">待评价</a></li>
        </ul>
         <ul class="order-nav Left" id="ul3" style="display:none"> 
            <li><a href="<%=basePath%>dingdanservlet?order=init" id="btn_all">全部订单</a></li>
            <li><a href="<%=basePath%>dingdanservlet?order=init1&effective=1" id="btn_1">待付款</a></li>
            <li><a href="<%=basePath%>dingdanservlet?order=init1&effective=2" id="btn_2">待发货</a></li>
            <li><a href="<%=basePath%>dingdanservlet?order=init1&effective=3" class="current" id="btn_3">待收货</a></li>
            <li><a href="<%=basePath%>dingdanservlet?order=init1&effective=4" id="btn_4">待评价</a></li>
        </ul>
         <ul class="order-nav Left" id="ul4" style="display:none"> 
            <li><a href="<%=basePath%>dingdanservlet?order=init" id="btn_all">全部订单</a></li>
            <li><a href="<%=basePath%>dingdanservlet?order=init1&effective=1" id="btn_1">待付款</a></li>
            <li><a href="<%=basePath%>dingdanservlet?order=init1&effective=2" id="btn_2">待发货</a></li>
            <li><a href="<%=basePath%>dingdanservlet?order=init1&effective=3" id="btn_3">待收货</a></li>
            <li><a href="<%=basePath%>dingdanservlet?order=init1&effective=4" class="current" id="btn_4">待评价</a></li>
        </ul>
        
        <form action="/user/" name="searchForm" name="order_search" id="order_search">
            <input type="hidden" name="act" value="order_list" />
            <input type="hidden" name="composite_status" id="JS_composite_status" value="0" />
            <div class="order-num-search">
                <input id="order_sn" placeholder="查询" name="order_sn" class="order-num-input" class="input" />
                <input type="submit" class="order-num-btn yahei" value="查询" />
            </div>
        </form>
                
            </div>
    		<c:if test="${count==0}">
            	<div class="list-tips"><i class="i-warn"></i>当前无购买记录，请尝试其它搜索条件。</div>
            </c:if>
            <c:if test="${count!=0}">
            	 <table class="orders mt20 table-list" id="JS_orderList_table">
			        <tr>
			            <th width="300" class="gray-td">订单商品</th>
			            <th width="114" class="gray-td">商品名称</th>
			            <th width="114" class="gray-td">收货人</th>
			            <th width="123" class="gray-td">订单金额</th>
			            <th width="115" class="gray-td">订单状态</th>
			            <th class="gray-td">操作</th>
			        </tr>
			        <c:forEach items="${dingdanList}" var="d">
                	<tr><td class="white-line" colspan="7"></td></tr>
			        <tr>
				        <c:if test="${effective==1}">
				            <td colspan="7" class="gray-title">
					            <input type="checkbox" name="item"  data-order_id="2219753"  style="vertical-align: middle;">
					              下单时间：${d.time }&emsp;
					               订单号：<a href="javascript:void(0);">${d.dingdannumber }</a>&nbsp;
				            </td>
				        </c:if>
				        <c:if test="${effective!=1}">
				            <td colspan="7" class="gray-title">
					            <p type="checkbox" name="item"  data-order_id="2219753"  style="vertical-align: middle;">
					              下单时间：${d.time }&emsp;
					               订单号：<a href="javascript:void(0);">${d.dingdannumber }</a>&nbsp;</p>
				            </td>
				        </c:if>
			        </tr>
			        <tr>
			            <td class="nobt">
			                <div class="Left order-img list-h-l">
			                   <a href="<%=basePath %>homeservlet?order=look&homeid=${d.homeid }" title="${d.name }" class="first"><img src="<%=basePath %>${d.tupian }" width="100" height="67"/></a>
			                </div>
			            </td>
			            <td class="nobt td-cen">${d.name }</td>
			            <td class="nobt td-cen">${d.username }</td>
			            <td class="orange nobt td-cen">¥${d.price }</td>
			            <c:if test="${d.effective==1}">
			            	<td class="nobt td-cen">待付款</td>
				            <td class="nobt td-cen">
				                <div class="oper" data-time1="120">
				                	<a href="<%=basePath %>dingdanservlet?order=look&dingdanid=${d.dingdanid }&homeid=${d.homeid }">付款</a>
				                	<a href="<%=basePath %>dingdanservlet?order=del&dingdanid=${d.dingdanid }" onclick="return confirm('是否取消订单');">取消订单</a>
				                	<a href="<%=basePath %>dingdanservlet?order=look&dingdanid=${d.dingdanid }&homeid=${d.homeid }" >查看订单</a>
				                </div>
				            </td>
			            </c:if>
			             <c:if test="${d.effective==2}">
			            	<td class="nobt td-cen">待发货</td>
				            <td class="nobt td-cen">
				                <div class="oper" data-time1="120">
				                	<a href="<%=basePath %>dingdanservlet?order=look&dingdanid=${d.dingdanid }&homeid=${d.homeid }">查看订单</a>
				                	<a href="javascript:void(0);"  onclick="return confirm('是否取消订单');">取消订单</a>
				                </div>
				            </td>
			            </c:if>
			             <c:if test="${d.effective==3}">
			            	<td class="nobt td-cen">待收货</td>
				            <td class="nobt td-cen">
				                <div class="oper" data-time1="120">
				                	<a href="<%=basePath %>dingdanservlet?order=shouhuo&dingdanid=${d.dingdanid }">确认收货</a>
				                	<a href="<%=basePath %>dingdanservlet?order=look&dingdanid=${d.dingdanid }&homeid=${d.homeid }" >查看订单</a>
				                </div>
				            </td>
			            </c:if>
			             <c:if test="${d.effective==4}">
			            	<td class="nobt td-cen">待评价</td>
				            <td class="nobt td-cen">
				                <div class="oper" data-time1="120">
				                	<a href="<%=basePath %>pingjiaservlet?order=init&homeid=${d.homeid }">评价</a>
				                	<a href="<%=basePath %>dingdanservlet?order=look&dingdanid=${d.dingdanid }&homeid=${d.homeid }" >查看订单</a>
				                </div>
				            </td>
			            </c:if>
			             <c:if test="${d.effective==5}">
			            	<td class="nobt td-cen">已评价</td>
				            <td class="nobt td-cen">
				                <div class="oper" data-time1="120">
				                	<a href="<%=basePath %>pingjiaservlet?order=look&dingdanid=${d.dingdanid }" >查看评价</a>
				                </div>
				            </td>
			            </c:if>
			        </tr>
			       	</c:forEach>
			       
       
            </table>
            <c:if test="${effective==1}">
			    <div class="done">
			            <div class="Left"><label><input type="checkbox" id="JS_all_select" style="vertical-align:middle;" /> 全选</label>
							<a href="javascript:;" title="合并付款" class="paybtn" id="JS_merge_pay">合并付款</a>
						</div>
			    </div>
			</c:if>
          </c:if>
    </div>
</div>
</div>
</div>

<script type="text/javascript">
window._onReadyList = window._onReadyList || [];
//我的订单页面事件
_onReadyList.push(function(){
    $('#JS_order_filter_a').click(function(){
        $('#JS_order_fl_box').addClass('hover');
        return false;
    });
    $('#JS_order_filter_ul').hover(function(){},function(){
        $('#JS_order_fl_box').removeClass('hover');
    });
    $('#JS_order_filter_ul a').click(function(){
        var curStatus = $('#JS_composite_status').val();
        if(curStatus != $(this).data('compstatus')) {
            $('#JS_composite_status').val($(this).data('compstatus'));
            document.forms.searchForm.submit();
        }
        return false;
    });

    $('.JS_order_trace_a').hover(function(){
        $(this).next('.track').find('.trackInfo').show();
    },function(){
        $(this).next('.track').find('.trackInfo').hide();
    });

    $('.JS_order_d_more').click(function(){
        if ($(this).prev().hasClass('list-h-l')) {
            $(this).prev().removeClass('list-h-l');
            $(this).find('i').addClass('i-up-arr');
        } else {
            $(this).prev().addClass('list-h-l');
            $(this).find('i').removeClass('i-up-arr');
        }
    })

    /*合并付款*/
    $(function(){
        var table = $('#JS_orderList_table');
        var isChecked = false;

        // 全选
        $('#JS_all_select').click(function(){
            var _this = $(this),
            checkbox = table.find('input[name=item]');
            state = _this.attr('data-state');

            if ( isChecked ) {
                checkbox.prop('checked', false);
                isChecked = false;
            } else {
                checkbox.prop('checked', true);
                isChecked = true;
            }
        });

        // 合并付款
        $('#JS_merge_pay').click(function(){
            var checkbox = table.find('input[name=item]:checked'),
            order_sn = [];

            checkbox.each(function(i){
                order_sn.push(checkbox.eq(i).data('order_sn'));
            });

            if ( order_sn.length <= 0 ) {
                $.alert('请至少勾选一个订单！');
                return false;
            }

            sn = order_sn.join(',');
            var form = $('<form id="JS_merge_pay_temp_form" order="/pay.html" target="_blank"><input type="hidden" name="sn" value="'+sn+'" /></form>');
            form.appendTo('body');
            form.submit();
            return false;
        });
    });
});
	
function body(){
		if(${effective==0}){
			document.getElementById("ul").style.display='block';
			document.getElementById("ul1").style.display='none';
			document.getElementById("ul2").style.display='none';
			document.getElementById("ul3").style.display='none';
			document.getElementById("ul4").style.display='none';
		}
		if(${effective==1}){
			document.getElementById("ul").style.display='none';
			document.getElementById("ul1").style.display='block';
			document.getElementById("ul2").style.display='none';
			document.getElementById("ul3").style.display='none';
			document.getElementById("ul4").style.display='none';
		}
		if(${effective==2}){
			document.getElementById("ul").style.display='none';
			document.getElementById("ul1").style.display='none';
			document.getElementById("ul2").style.display='block';
			document.getElementById("ul3").style.display='none';
			document.getElementById("ul4").style.display='none';
		}
		if(${effective==3}){
			document.getElementById("ul").style.display='none';
			document.getElementById("ul1").style.display='none';
			document.getElementById("ul2").style.display='none';
			document.getElementById("ul3").style.display='block';
			document.getElementById("ul4").style.display='none';
		}
		if(${effective==4}){
			document.getElementById("ul").style.display='none';
			document.getElementById("ul1").style.display='none';
			document.getElementById("ul2").style.display='none';
			document.getElementById("ul3").style.display='none';
			document.getElementById("ul4").style.display='block';
			
		}
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

</body>
</html>
