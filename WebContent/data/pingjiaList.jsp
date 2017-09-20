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
<body class="root-body" style="min-width:1190px;"  onload="body();">
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
	<div class="user_main">
		
				<style type="text/css">
.content-list{padding:20px 30px 30px 30px;}
.content-one .c-help{margin-right:2px;}
.content-one .c-help a{font-size:14px;}
.content-one .c-help .i-help{display: inline-block;width: 16px;height: 16px;background:url(http://image.meilele.com/images/user/user_bg.png) -145px -230px no-repeat;margin-right: 2px;vertical-align: -4px;}
.content-one .comm-total{margin-top: 24px;margin-left: -22px;}
.content-one .comm-total li{width: 110px;height: 60px;}
.content-one .comm-total li.first{border-right: solid 1px #e6e6e6;}
.content-one .comm-total .txt{display: block;text-align:center;height: 24px;line-height: 24px;font-size: 14px;color: #333;}
.content-one .comm-total .num{display:block;text-align:center;color: #666;font-size: 28px;}
.content-one .comm-total .first .num{color: #ee1f1f;}
.content-list{margin-top: 15px;}
.content-list .c-title-box{margin-top: 0;}
.content-list .list-box{width: 100%;margin-top: 10px;border-collapse: collapse;}
.content-list .list-box th{border: solid 1px #ebebeb;border-bottom: none;background: #f2f2f2;color: #555;font-size: 12px;height: 37px;}
.content-list .list-box td{border: solid 1px #ebebeb;border-top: none;}
.content-list .list-box .nobr{border-right: none;}
.content-list .list-box .nobl{border-left: none;}
.content-list .list-box .img-a{display: inline-block;margin:15px 20px 15px 15px;width: 100px;height: 67px;}
.content-list .list-box .name{display: block;height: 40px;vertical-align: top;padding-right: 20px;}
.content-list .list-box .time{color:#999;}
.content-list .list-box .oper-btn{display: block;width: 58px;height: 24px;line-height: 24px;text-align: center;margin: 0 auto;border: solid 1px #d6d6d6;border-radius: 2px;}

/**
 * 评价输入样式
 */
.content-list .comment_info {padding: 20px 40px; background: #f7f7f7; color: #444;position: relative;}
.content-list .comment_info .out-arr{width: 0;height: 0;position: absolute; top: -10px; right: 61px;border-left: 10px solid transparent;border-right: 10px solid transparent;border-bottom: 10px solid #ebebeb; _border-left-color: tomato; _border-right-color: tomato; _filter: chroma(color=tomato);}
.content-list .comment_info .in-arr{width: 0;height: 0;position: absolute; top: -9px; right: 62px;border-left: 9px solid transparent;border-right: 9px solid transparent;border-bottom: 9px solid #f7f7f7; _border-left-color: tomato; _border-right-color: tomato; _filter: chroma(color=tomato);}
.content-list .comment_info .c_left {padding-bottom: 30px;width: 75px; text-align: right;}
.content-list .comment_info .c_right {width: 728px; margin-right: 58px;text-align: left;}
.content-list .comment_info .star_box {cursor: pointer; vertical-align: middle; display: inline-block;width: 94px; height: 16px;margin-right: 2px;background: url(http://image.meilele.com/images/user/user_bg.png) -96px -254px no-repeat;}
.content-list .comment_info .f5 {background-position: -2px -254px;}
.content-list .comment_info .f4 {background-position: -21px -254px;}
.content-list .comment_info .f3 {background-position: -40px -254px;}
.content-list .comment_info .f2 {background-position: -59px -254px;}
.content-list .comment_info .f1 {background-position: -77px -254px;}

.content-list .comment_info .input_area {border: solid 1px #ebebeb; background-color: #fff;}
.content-list .comment_info .comment_content {height: 98px; padding: 12px; overflow: auto;}
.content-list .comment_info .comment_content span {color: #bfbfbf;}
.content-list .comment_info .comment_button {margin-top:10px;padding:12px;}
.content-list .comment_info .upload_area {position: relative;}
.content-list .comment_info .pic_list .pic{position:relative;float:left;}
.content-list .comment_info .pic_list .pic .del_bg{cursor:pointer;position:absolute;left:44px;top:24px;color:#fff;z-index: 10;}
.content-list .comment_info .pic_list .pic .del-hover-bg{position:absolute;left:10px;display:block;background-color:#000;width:100px;height:67px;opacity:0.5;z-index:9;}
.content-list .comment_info .upload_img {cursor:pointer;display:inline-block;box-sizing:border-box;width:58px;height:26px;line-height:24px;text-align:center;color: #0072ca;border: solid 1px #d6d6d6;border-radius:2px;}
.content-list .comment_info .upload_img:hover{color: #0072ca;}
.content-list .comment_info .upload_form {position: absolute; left: 0; top: 0; width: 58px; height: 26px;}
.content-list .comment_info .upload_form input {width: 58px; height: 26px; cursor: pointer;opacity: 0;}
.content-list .comment_info .comment-tips{margin-left:10px;height:26px;line-height:26px;display: block;color: #888;font-weight:400;}
.content-list .comment_servic{margin:15px 0 14px 0; font-size: 13px;color: #666;}
.content-list .comment_servic span{font-size: 14px;}
.comment_info .comment_submit {text-align: center; margin-top: 26px;}
.comment_info .comment_submit .btn_s {padding: 5px 15px; background: #ed4c4c; color: #fff; border-radius: 2px;}
.u_comment_list td img {width: 100px; height: 67px;}
.u_comment_list .comment_info .pic_list img { float: left; margin-left:10px;background: url(http://image.meilele.com/themes/paipai/images/user/loading.gif) scroll no-repeat center center;}
.u_comment_list .JS_submit{padding:5px 10px;background-color:#ed4c4c;color:#fff;border-radius:2px;}
.u_comment_list .add-gold{display:block;text-align:center;margin-top:10px;}
.content-list .goods-score{display:inline-block;width:42px;color:#ff811a;}
/* 弹窗样式修改 */
.words-num .in{width:310px;}
</style>
<div class="content-one">
    <div class="clearfix">
        <div class="c-title Left">评价晒单</div>
    </div>
    <ul class="comm-total clearfix">
        <li class="first Left">
            <span class="txt">待评价</span>
            <span class="num">${conut4 }</span>
        </li>
        <li class="Left">
            <span class="txt">已评价</span>
            <span class="num">${count5 }</span>
        </li>
    </ul>
</div>
<div class="content-list">
    <div class="c-title-box">
        <ul class="c-title-nav clearfix" id="ul1">
            <li><a href="<%=basePath %>pingjiaservlet?order=list" class="current">待评价</a></li>
            <li><a href="<%=basePath %>pingjiaservlet?order=list2">已评价</a></li>
        </ul>
        <ul class="c-title-nav clearfix" id="ul2" style="display:none">
            <li><a href="<%=basePath %>pingjiaservlet?order=list">待评价</a></li>
            <li><a href="<%=basePath %>pingjiaservlet?order=list2" class="current">已评价</a></li>
        </ul>
    </div>
        <div class="list-tips">
        	
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
			            <td class="nobt">
			                <div class="Left order-img list-h-l">
			                   <a href="<%=basePath %>homeservlet?order=look&homeid=${d.homeid }" title="${d.name }" class="first"><img src="<%=basePath %>${d.tupian }" width="100" height="67"/></a>
			                </div>
			            </td>
			            <td class="nobt td-cen" align="center">${d.name }</td>
			            <td class="nobt td-cen" align="center">${d.username }</td>
			            <td class="orange nobt td-cen" align="center">¥${d.price }</td>
			            
			             <c:if test="${d.effective==4}">
			            	<td class="nobt td-cen" align="center">待评价</td>
				            <td class="nobt td-cen" align="center">
				                <div class="oper" data-time1="120">
				                	<a href="<%=basePath %>pingjiaservlet?order=init&homeid=${d.homeid }">评价</a>
				                </div>
				            </td>
			            </c:if>
			             <c:if test="${d.effective==5}">
			            	<td class="nobt td-cen" align="center">已评价</td>
				            <td class="nobt td-cen" align="center">
				                <div class="oper" data-time1="120">
				                	<a href="<%=basePath %>pingjiaservlet?order=look&dingdanid=${d.dingdanid }" >查看评价</a>
				                </div>
				            </td>
			            </c:if>
			        </tr>
			       	</c:forEach>
					 <tr width="100%" height="30">
							<td class="pagelist" colspan="7" align="center">
							</td>
			      	</tr>     
			       	<tr width="100%">
						<td class="pagelist" colspan="7" align="center">
							<a href="">总记录数&nbsp;&nbsp;${pager.barsum }</a>
							<a href="">页码&nbsp;&nbsp;${pager.currentpage }/${pager.pagesum }页</a>
							<a href="<%=basePath %>pingjiaservlet?order=list&currentpage=1&handle=firstpage">首   页</a>
							<a href="<%=basePath %>pingjiaservlet?order=list&currentpage=${pager.currentpage }&handle=uppage">上一页</a>
							<a href="<%=basePath %>pingjiaservlet?order=list&currentpage=${pager.currentpage }&handle=downpage">下一页</a>
							<a href="<%=basePath %>pingjiaservlet?order=list&currentpage=${pager.pagesum }&handle=lastpage">尾  页</a> 
						</td>
			      </tr>
            </table>
        	
        </div>
    
</div>

	
	
</div>


</div>
 <script type="text/javascript">
    function body(){
		if(${effective==4}){
			document.getElementById("ul1").style.display='block';
			document.getElementById("ul2").style.display='none';
		}
		if(${effective==5}){
			document.getElementById("ul1").style.display='none';
			document.getElementById("ul2").style.display='block';
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
   
<c:if test="${msg!=null}">
	<script type="text/javascript">
		alert("${msg}");
	</script>
</c:if>
</body>
</html>
