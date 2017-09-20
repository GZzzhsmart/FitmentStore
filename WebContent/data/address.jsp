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
<div class="user_main">

<style type="text/css">
.user_main .c-title-tips {margin-top:20px;}
.user_main .content-one{padding:20px 30px 30px 30px;}
.user_main .content-hei{min-height:543px;}
.user_main .edit-addr-box{display:none;padding:30px 0 50px 0;font-size:14px;font-family:'Microsoft YaHei';}
.user_main .edit-addr-box .u_input{height:26px;color:#333;border-radius:0;border:solid 1px #ddd;font-family:'Microsoft YaHei';}
.user_main .edit-addr-box .u_select{padding-left:10px;width: 125px;height:30px;appearance:none;-moz-appearance:none;-webkit-appearance:none;background:url(http://image.meilele.com/images/user/arrow.png) 90% 50% no-repeat;color:#333;border-radius:0;border:solid 1px #ddd;font-family:'Microsoft YaHei';}
.u-address-box li{margin:30px 30px 0 0;width:296px;height:147px;color:#666;background-color:#fafafa;}
.u-address-box li:nth-child(3n){margin-right:0px;}
.u-address-box li.default{background-color:#fff7f7;}
.u-address-box li.add-addr-box{background-color:#fff;}
/* 地址列表头部条文 */
.u-address-box .addr-bordert{width: 100%;height: 4px;background: url(http://image.meilele.com/images/user/user_bg.png) 0 -278px  repeat-x;}
.u-address-box .default .addr-bordert{background-position: 0 -270px;}
.u-address-box .hover .addr-bordert{background-position: 0 -274px;}

/* 地址列表内容样式 */
.u-address-box .addr-content{padding:0 15px;border: solid 1px #e8e8e8;border-top:0;}
.u-address-box .addr-content .addr-name{border-bottom: dotted 1px #ebebeb;}
.u-address-box .addr-content .name{height: 40px;line-height: 40px;font-weight: bold;}
.u-address-box .addr-content .i-name{display: inline-block;margin-right: 6px;width: 14px;height: 14px;vertical-align: -3px;background: url(http://image.meilele.com/images/user/user_bg.png) -164px 0 no-repeat;}

.u-address-box .label{display: none;margin-top:10px;}
/* 默认地址样式 */
.u-address-box .default .addr-content{border: solid 1px #ffd6d6;border-top:0;}
.u-address-box .default .label{display: block; padding:2px 4px;color:#f33939;border-radius:2px;border: solid 1px #f7b3b3;}
/* hover效果样式 */
.u-address-box .hover .label{display: block;}
.u-address-box .hover .addr-content{border:solid 1px #ffbcbc;border-top:0;}
.u-address-box .hover a.set-btn{display:block;padding: 1px 4px;color:#fff;border-radius: 2px;border:solid 1px #ed4c4c;background-color: #ed4c4c;}

.u-address-box .addr{height: 44px;padding:8px 0;line-height:22px;border-bottom:dotted 1px #ebebeb;}
.u-address-box .addr .i-addr{display: inline-block;margin-right: 6px;width: 14px;height: 14px;background: url(http://image.meilele.com/images/user/user_bg.png) -183px 0 no-repeat;vertical-align: -3px;}
.u-address-box .contact{height: 40px;line-height: 40px;}
.u-address-box .contact .i-phone{display: inline-block;margin-right: 6px;width: 14px;height: 14px;background: url(http://image.meilele.com/images/user/user_bg.png) -200px 0 no-repeat;vertical-align: -3px;}
.u-address-box .add-addr-box {cursor:pointer;margin-right: 0; width: 94px; height: 108px;border: dashed 1px #ddd;padding: 40px 100px 0 100px;}
.u-address-box .s-add-addr{display: block;width: 37px;height: 37px;margin: 0 auto;background: url(http://image.meilele.com/images/user/user_bg.png) -118px -127px no-repeat;}
.u-address-box .t-add-addr{margin-top:10px;text-align: center;line-height:1;font-size: 14px;font-weight: bold;color:#b3b3b3;}

.edit-addr-box .btnBox{margin-top:10px;margin-left:90px;}
/*编辑*/
.c-addr-title{font-size: 14px; padding: 2px 3px 4px 3px;color: #ee1f1f; font-weight: bold; text-decoration: none; border-bottom: solid 2px #ee1f1f;}
.address_add td.label {text-align: right;color:#333;}
.address_add td {padding: 10px 0;}
.subAddr{padding:0 18px !important;margin-left:82px;margin-top:10px;}
/* 弹窗样式调整 */
.address-dialog .in{box-sizing:border-box;width:300px;border:none;padding:25px;border-radius:0;}
.address-dialog .htmls{padding:0;text-align:center;line-height:24px;}
.address-dialog .htmls span{padding-left:5px;}
.address-dialog .htmls i{display: inline-block;width:24px;height:24px;vertical-align:top;}
.address-dialog .htmls i.set-confirm{background:url(http://image.meilele.com/images/user/user_bg.png) -48px -230px no-repeat;}
.address-dialog .htmls i.set-success{background:url(http://image.meilele.com/images/user/user_bg.png) 0px -230px no-repeat;}
.address-dialog .htmls i.set-fail{background:url(http://image.meilele.com/images/user/user_bg.png) -72px -230px no-repeat;}
.address-dialog .btns{padding:18px 0 0 0;border:none;}
.address-dialog .btns a{display: inline-block;padding: 5px 26px;margin:0 10px 0 0;border:1px solid #ccc;border-radius:2px;color:#666;cursor:pointer;background:none;}
.address-dialog .btns a.lightbox_btnsi_1{background:#ed4c4c;border:solid 1px #ed4c4c;color:#fff !important;}
</style>


				
					
<div class="content-one content-hei" id="J-content">
	<div class="c-title">收货地址</div>
	<div class="c-title-tips">您已经创建了<span class="orange">${count }</span>个收货地址，最多可创建<span class="orange">10</span>个</div>
					<ul class="u-address-box clearfix" id="JS_addr_ul">
					<c:forEach items="${addList}" var="d">
					<li class=" Left default">
				<div class="addr-bordert"></div>
				<div class="addr-content">
					<div class="clearfix addr-name">
						<div class="Left name"><i class="i-name"></i>${d.username }</div>
						<c:if test="${d.effective==0}">
							<div class="Right label">默认地址</div>
						</c:if>
						<c:if test="${d.effective==1}">
							<div class="Right label" ><a href="<%=basePath %>addressservlet?order=setEffective&addressid=${d.addressid }" class="set-btn" onclick="javascript:if(confirm('您确定将这条地址设为默认地址？')){return true;}else{return false;}">设置为默认地址</a></div>
						</c:if>
					</div>
					<div class="addr"><i class="i-addr"></i>${d.address }</div>
					<div class="contact">
						<div class="Left"><i class="i-phone"></i>${d.telephone }</div>
						<div class="Right">
							<a href="javascript:;" class="blue JS_addr_edit" id="btn_update" onclick="update('${d.addressid }');">修改</a>&emsp;
							<a href="<%=basePath %>addressservlet?order=del&addressid=${d.addressid }" class="blue JS_addr_del" id="btn_delete" onclick="javascript:if(confirm('确定删除？')){return true;}else{return false;}">删除</a>
						</div>
					</div>
				</div>
			</li>
			</c:forEach>		
					
					
						<li class="Left add-addr-box" id="JS_add_addr">
							<span class="s-add-addr"></span>
							<p class="t-add-addr">新增收货地址</p>
						</li>
					</ul>
		<div class="content-one edit-addr-box" id="JS_addr_edit_box" style="display: none">

			<div>
				<span class="c-addr-title">添加新的收货地址</span>
			</div>
			<div class="body subInsured">
				<form action="<%=basePath%>addressservlet?order=add" method="post" id="address_add_form" name="address_add_form">
				    <table class="address_add mt10">
						<tbody><tr>
							<td class="label"><em class="orange">*</em>&nbsp;收货人姓名：</td>
							<td class="input"><input name="consignee" id="JS_i_consignee" class="u_input" value=""></td>
						</tr>
						<tr>
							<td class="label"><em class="orange">*</em>&nbsp;收货地址：</td>
							<td class="input"><input name="address" id="JS_i_address" class="u_input u_w400" value=""></td>
						</tr>
						<tr>
							<td class="label"><em class="orange">*</em>&nbsp;手机号码：</td>
							<td class="input"><input name="mobile" id="JS_i_mobile" class="u_input u_w150" value=""></td>
						</tr>
						<tr>
							<td class="label">固定电话：</td>
							<td class="input"><input name="tel" id="JS_i_tel" class="u_input u_w150" value=""></td>
						</tr>
				        <tr>
							<td class="label">邮政编码：</td>
							<td class="input"><input name="zipcode" id="JS_i_zipcode" class="u_input u_w150" value=""></td>
						</tr>
						</tbody></table>
						<input type="hidden" name="country" value="1">
						<input type="hidden" name="act" value="act_edit_address">
				        <input type="hidden" name="address_id" value="">
				      	<div class="btnBox">
				        	<a href="javascript:void(0)" class="btn_b" id="subAddr"><span>保存收货地址</span></a>
				        </div>
				    </form>
			</div>
			
			
			

<script type="text/javascript" src="http://image.meilele.com/js/region.js"></script>
<script type="text/javascript">
 
$('#subAddr').click(function(){
	if($("#JS_i_consignee").val() == ""){
		alert("收货人不能为空");
		return false;
	}
	
	var address = $("#JS_i_address").val();
	if( $("#JS_i_address").val()=="" ){
		alert("收货地址不能为空");
		return false;
	}
	if( /^\d+$/.test( address ) || /^[a-zA-Z]+$/.test( address ) || !/^.{5,60}$/.test( address )){
		alert("详细地址只能输入5-60字，不能全部为数字或字母或特殊字符");
		return false;
	}
	if( $("#JS_i_mobile").val() == "" ){
		alert("请输入手机号码");
		return false;
	}
	if( $('#JS_region_province').val() ==0 || $('#JS_region_city').val() ==0 || ( $('#JS_region_district').val() == 0 && $('#JS_region_district').is(':visible') )){
		alert("配送地区必须填写");
		return false;
	}
	$('#address_add_form').submit();
	return false;
})


</script>
</div>
<div class="content-one edit-addr-box" id="box" style="display: none">

			<div>
				<span class="c-addr-title">修改收货地址</span>
			</div>
			<div class="body subInsured">
				<form action="<%=basePath%>addressservlet?order=updateSave" method="post" id="address_add_form1" name="address_add_form1">
				    <table class="address_add mt10">
						<tbody><tr>
							<td class="label"><em class="orange">*</em>&nbsp;收货人姓名：</td>
							<td class="input"><input name="consignee" id="consignee" class="u_input" value=""></td>
						</tr>
						<tr>
							<td class="label"><em class="orange">*</em>&nbsp;收货地址：</td>
							<td class="input"><input name="address" id="address" class="u_input u_w400" value=""></td>
						</tr>
						<tr>
							<td class="label"><em class="orange">*</em>&nbsp;手机号码：</td>
							<td class="input"><input name="mobile" id="mobile" class="u_input u_w150" value=""></td>
						</tr>
						<tr>
							<td class="label">固定电话：</td>
							<td class="input"><input name="tel" id="tel" class="u_input u_w150" value=""></td>
						</tr>
				        <tr>
							<td class="label">邮政编码：</td>
							<td class="input"><input name="zipcode" id="zipcode" class="u_input u_w150" value=""></td>
						</tr>
						</tbody></table>
						<input type="hidden" id="addressid" name="addressid"/>
				      	<div class="btnBox">
				        	<a href="javascript:void(0)" class="btn_b" id="subAddr1"><span>保存收货地址</span></a>
				        </div>
				    </form>
			</div>
		</div>
<script type="text/javascript">
 
$('#subAddr1').click(function(){
	if($("#consignee").val() == ""){
		alert("收货人不能为空");
		return false;
	}
	
	var address = $("#address").val();
	if( $("#address").val()=="" ){
		alert("收货地址不能为空");
		return false;
	}
	if( /^\d+$/.test( address ) || /^[a-zA-Z]+$/.test( address ) || !/^.{5,60}$/.test( address )){
		alert("详细地址只能输入5-60字，不能全部为数字或字母或特殊字符");
		return false;
	}
	if( $("#mobile").val() == "" ){
		alert("请输入手机号码");
		return false;
	}
	
	$('#address_add_form1').submit();
	return false;
})


</script>
	
</div>

<script type="text/javascript">
$(function(){
	$("#JS_add_addr").bind("click",function(){
		if(${count}>=10){
			alert("最多只能创建10个收货地址");
			return;
		}else{
			$('#JS_addr_edit_box').show();
			document.getElementById("box").style.display='none';
		}
	});
	
});



function update(addressid){
	var url="<%=basePath%>addressservlet";
			$.post(url,{
					"addressid":addressid,
					"order":"update"
				},
				function(data){
					$("#addressid").val(data.addressid);
					$("#consignee").val(data.username);
					$("#address").val(data.address);
					$("#mobile").val(data.telephone);
					$("#tel").val(data.phone);
					$("#zipcode").val(data.unicode);
					document.getElementById("box").style.display='block';
					document.getElementById("JS_addr_edit_box").style.display='none';
				},
				"json"
				);
}
</script>

</div>
</div></div>



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
                <li class="s3">美乐乐在全国实体店<span class="red">297</span>家、样板间<span class="red">1</span>家</li>
                <li class="s4">
                    <a href="javascript:void(0);" target="_blank"><i class="i-coord"></i>查看全国实体店</a>
                </li>
                <li class="s5">
                    <a href="javascript:void(0);" onclick="$.codeSms(false, {click: &#39;版权&#39;});return false;"><i class="i-mobile"></i>免费发送到手机</a>
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

</body>
</html>
