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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="<%=basePath %>js/jquery-1.4.1.js"></script>
<script async="true" type="text/javascript" src="<%=basePath%>data/data_files/event" data-owner="criteo-tag"></script>
<script type="text/javascript" async="" src="<%=basePath%>data/data_files/mv.js"></script>
<script type="text/javascript" async="" src="<%=basePath%>data/data_files/mba.js"></script>
<script charset="utf-8" src="<%=basePath%>data/data_files/v.js"></script>
<script src="<%=basePath%>data/data_files/x.js"></script>
<script src="<%=basePath%>data/data_files/hm.js"></script>
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">



<meta name="keywords" content="实木床 实木床 实木床图片 实木床品牌 实木床价格">
<meta name="description" content="">
<meta http-equiv="cache-control" content="no-transform">
<title>【实木床】十大排名,首选【实木床】品牌,全球销量冠军</title>
<link rel="stylesheet" href="<%=basePath%>data/data_files/mll.common.new.min.css">
<link rel="shortcut icon" href="http://image.meilele.com/favicon.ico">
<link rel="icon" href="http://image.meilele.com/favicon.ico"> 
<link rel="alternate" media="only screen and(max-width: 640px)" href="http://m.meilele.com/keywords/shimuchuang/list-p21/">
<link href="<%=basePath%>data/data_files/category.min.css" rel="stylesheet" type="text/css">



<script type="text/javascript" async="" defer="" src="<%=basePath%>data/data_files/dc.js"></script>
<script type="text/javascript" async="" src="<%=basePath%>data/data_files/ocl.invoke.min.js"></script>
<script type="text/javascript" async="" src="<%=basePath%>data/data_files/get.do"></script>
<script type="text/javascript" async="" src="<%=basePath%>data/data_files/getMiniActivityWebPage"></script>
<script type="text/javascript" async="" src="<%=basePath%>data/data_files/recad.min.js"></script>
<style type="text/css">.AD_tonglan{width:100%;height:50px;background:#e3f0dd/*粽享端午*/;}
.AD_sanjiao{position:fixed;top:0;right:0;width:100px;height:100px;background:none;z-index:1002;_position:absolute;
_top:expression(eval(document.documentElement.scrollTop));}</style><script type="text/javascript" async="" src="<%=basePath%>data/data_files/chatFloat.min.js"></script>
<style type="text/css">.FC_hide{height:0px!important;}#Fchat1,#Fchat2{font-size:12px;z-index:1500;position:fixed;
_position:absolute;overflow:hidden}#Fchat1{width:100px;height:268px;right:5px;top:190px;_top:expression(eval(document.documentElement.scrollTop+190))px;}
#Fchat1{background:url( http://image.meilele.com/images/201505/1431483773443.png) 0 0 no-repeat;_background:url(http://image.meilele.com/images/201505/1431483763486.jpg) 0 0 no-repeat;}
.FC_btns{background-image:url(http://image.meilele.com/images/blank.gif);position:absolute;cursor:pointer;z-index:1501;}#Fchat2{width:58px;height:127px;right:5px;top:190px;_top:expression(eval(document.documentElement.scrollTop+190))px;
;background:url(http://image.meilele.com/images/201405/1401178094439.png) 0 0;_background:url(http://image.meilele.com/images/201405/140117892382.gif) 0 0;cursor:pointer}.FC_number{width:20px;height:20px;line-height:20px;text-align:center;
color:#fff;font-weight:bold;font-family:Arial;border-radius:12px;background:#ff9030;color:#f5e0ce;border:2px solid #f5e0ce;display:none;font-size:14px;}
.FC_number2{width:28px;}#FchatMsg{font-family:微软雅黑;display:none;z-index:1500;width:109px;height:66px;border:1px solid #fac3c9;border-radius:6px;background-color: #fff0f1;position: relative;
padding:12px;position:fixed;right:28px; top:90px;_position:absolute;_top:expression(eval(document.documentElement.scrollTop+90))px;}#FchatMsg a{font-family:微软雅黑;font-weight:bold;font-size:13px;color:#e5134e}
#FchatMsg a:hover{text-decoration:underline;}#FchatMsg.FC_min_msg{right:3px; top:90px;_position:absolute;_top:expression(eval(document.documentElement.scrollTop+90))px;}
#FchatMsg .triangle{width:0px;height:0px;position: absolute;*zoom:1;}#FchatMsg .triangle_out{left:54px;top:90px;_top:96px;border-left:11px solid transparent;border-top:11px solid #fac3c9;_border-left-color:tomato;
_filter:chroma(color=tomato)}#FchatMsg .triangle_in{left:54px;top:89px;_top:95px;border-left:10px solid transparent;border-top:10px solid #fff0f1;_border-left-color:tomato;
 _filter:chroma(color=tomato)}#FchatMsg .msg_title{font-size:14px;color:#333;}#FchatMsg .msg_content{font-size:14px;color:#666;font-weight:bold;margin-top:6px;width:119px;height:44px;overflow:hidden;}
 #FchatMsg .close_btn{float:right;font-size:14px;text-decoration:none;font-weight:normal;margin-right:-6px;font-family:SimSun;color:#666;}
 #FchatMsg .close_btn:hover{color:#C9033B;}#FchatMsg .faq_list{list-style: none;font-size: 12px;font-weight: normal;padding-bottom: 10px;line-height: 21px;margin-top: 0}
 #FchatMsg .faq_item{width:119px;overflow:hidden;white-space:nowrap;text-overflow:ellipsis}
 #FchatPoMsg {cursor: pointer;font-family: 微软雅黑;z-index: 1500;width: 108px;border: 1px solid #fac3c9;border-radius: 6px;background-color: #fff0f1;position: relative;padding: 12px;position: fixed;right: 116px;top: 302px;line-height: 20px;display:none;}
 #FchatPoMsg.FC_min_pomsg{top:246px;right:70px;}#FchatPoMsg .triangle { width: 0; height: 0; position: absolute;}
 #FchatPoMsg .triangle_out { right: -11px; top: 30px; _top: 96px; border-right: 11px solid transparent; border-top: 11px solid #fac3c9; _border-left-color: tomato; _filter: chroma(color=tomato);}
 #FchatPoMsg .triangle_in { right: -8px; top: 31px; _top: 96px; border-right: 10px solid transparent; border-top: 10px solid #fff0f1; _border-left-color: tomato; _filter: chroma(color=tomato);}
 #FchatPoMsg .expr-msg-close{position: absolute;top: -1px;right: -2px;font-size: 16px;display: inline-block; width: 20px; height: 20px;cursor:pointer;}
 #FchatPoMsg .expr-msg-close:hover{text-decoration:none;}</style>
 <script type="text/javascript" async="" src="<%=basePath%>data/data_files/rt.js"></script>
 <script type="text/javascript" async="" src="<%=basePath%>data/data_files/stats"></script>
 <script type="text/javascript" async="" src="<%=basePath%>data/data_files/gdt.php"></script>
 <script type="text/javascript" async="" src="<%=basePath%>data/data_files/gdt(1).php"></script>
 <script type="text/javascript" async="" src="<%=basePath%>data/data_files/gdt(2).php"></script>
 <script type="text/javascript" async="" src="<%=basePath%>data/data_files/gdt(3).php"></script>
 <script type="text/javascript" async="" src="<%=basePath%>data/data_files/mvl.js"></script>
 <script type="text/javascript" async="" src="<%=basePath%>data/data_files/ld.js"></script>
 <script type="text/javascript" async="" src="<%=basePath%>data/data_files/gt.js"></script></head> 

 <script type="text/javascript">
    		function validate(){
        		var page = document.getElementsByName("page")[0].value;
        		if(page==""){
        			alert("请输入您要跳转的页数");
        			return false;
        		}
	            if(page >${pageBean.totalPage})
	            {
	                alert("你输入的页数大于最大页数，页面将跳转到首页！");
	                window.document.location.href = "<%=basePath %>homeservlet?order=list2&hometype=${hometype }";
	                return false;
	            }
	              return true;
        	}
    	function test(homeid){
    	//alert((home+10000));
    		$("#"+homeid).css("display","block");
    		$("#"+(homeid+10000)).css("border-color"," red");
    		$("#"+(homeid+10000)).css("border-width"," 1px");
    		 //style="border-color: red;border-width: 3px;"
    		 //document.getElementById("").style.border-color='red';
    		
    	}
    	function test1(homeid){
    		$("#"+homeid).css("display","none");
    		$("#"+(homeid+10000)).css("border-color"," white");
    		$("#"+(homeid+10000)).css("border-width"," 1px");
    	}
    	
		function shoucang(homeid){
			
			var url="<%=basePath%>collectionservlet";
				$.post(url,{
						
					"homeid":homeid,
					"order":"add",
					
					},
					function(data){
						alert(data);
					},
					"text"
					);
		}
			
		
    </script>
<body class="root_body" style="">
<%
	UserBean user = (UserBean)session.getAttribute("user");
%>
<script type="text/javascript">
(function(){var screenWidth=window.screen.width;
if(screenWidth>=1280){document.body.className='root_body';
window.isWideScreen = true;window.LOAD = true;}else{window.LOAD = false;}})();
window._pageConfig_ = {pageSn: 'category', dressUpAdTop: '60px'};
window._IMG="http://image.meilele.com";
</script>




<script>
  
    window.M = window.M || {};M.__IMG = 'http://image.meilele.com';if(window.$ && window.$.addToCart)M.addToCart = $.addToCart
  
    
  
    if (navigator.userAgent.indexOf("iPad") != -1) {
  
        document.body.className = document.body.className + ' ipad_root';
  
    }
  
    //初始空函数，防止页面报错，勿删，函数真身在页脚。
  
    function _show_() {};
  
    function _hide_() {};
  
    var City = {
  
        init: function () {}
  
    }
  
    var M=M||{};M.getCookie=function(a){var e;if(document.cookie&&document.cookie!=="")
  
    {var d=document.cookie.split(";");var f=d.length;for(var c=0;c<f;c++){var b=d[c].replace(/(^\s*)|(\s*$)/g,"");
  
    if(b.substring(0,a.length+1)==(a+"=")){e=decodeURIComponent(b.substring(a.length+1));break;}}}return e;};</script>



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




<div class="page-header">
  
    <div class="w ph-contenter clearfix">
  
        <a id="JS_Header_Logo_link_home" class="fl logo" href="/">
  
            <img src="<%=basePath %>images/face.png" alt="" width="193" height="61">
  
        </a>
  
                <a onclick="_clickSearchAd()" title="体验馆6周年庆" class="fl ph-ad" href="" rel="nofollow" target="_blank">
  
            <img width="170" height="60" src="http://image.meilele.com/images/201703/1489706919671841862.gif" alt="体验馆6周年庆">
  
        </a>
  
                <div class="fl search-group">
  
            <form class="search-form clearfix" action="/category-9999/" onsubmit="return MLL_header_search_submit();" target="_blank">
  
                <input type="hidden" name="fl" value="q">
  
                <input type="submit" class="submit-btn fr" value="搜&nbsp;索" onclick="window._gaq.push(['_trackEvent','2016美乐乐搜索','固定搜索按钮','click'])">
  
                <input id="JS_MLL_search_header_input" name="keywords" value="" autocomplete="off" type="text" maxlength="255" class="search-input gray" onclick="window._gaq.push(['_trackEvent','2016美乐乐搜索','固定文字输入框','click'])">
  
            </form>
  
            <div id="JS_search_suggest" class="suggest"></div>
  
            <div data-target="search" id="JS_search_history" class="history clearfix"></div>
  
            <div class="search-hot">
  
                <a target="_blank" class="hot-key" title="床" style="color:#999999;" href="<%=basePath %>homeservlet?order=list2&hometype=0" onclick="_clickHotSearch(this);">床</a>
  
                <a target="_blank" class="hot-key" title="沙发" style="color:#999999;" href="<%=basePath %>homeservlet?order=list2&hometype=4" onclick="_clickHotSearch(this);">沙发</a>
  
                <a target="_blank" class="hot-key" title="餐桌椅" style="color:#999999;" href="<%=basePath %>homeservlet?order=list2&hometype=6" onclick="_clickHotSearch(this);">餐桌椅</a>
  
                <a target="_blank" class="hot-key" title="家居饰品" style="color:#999999;" href="<%=basePath %>homeservlet?order=list2&hometype=19" onclick="_clickHotSearch(this);">家居饰品</a>
  
                <a target="_blank" class="hot-key" title="特价抢购" style="color:#FF6600;" href="<%=basePath %>homeservlet?order=list2&hometype=0" onclick="_clickHotSearch(this);">特价抢购</a>
  
                <a target="_blank" class="hot-key" title="衣柜" style="color:#999999;" href="<%=basePath %>homeservlet?order=list2&hometype=3" onclick="_clickHotSearch(this);">衣柜</a>
  
                <a target="_blank" class="hot-key" title="灯饰" style="color:#999999;" href="<%=basePath %>homeservlet?order=list2&hometype=12" onclick="_clickHotSearch(this);">灯饰</a>
  
            </div>
  
        </div>
  
        
  
    </div>
</div>




<div class="navigator-index">
  
    <div class="w clearfix">
  
        <div class="menu-panel">
  
            <h2>商品分类<span class="jiantou"></span></h2>
        </div>
        <ul class="navigator">
            <li>
                <a target="_blank" href="http://www.meilele.com/jiaju/" title="家具城">家具城</a>
            </li>
            <li>
                <a target="_blank" href="http://www.meilele.com/jiancai/" title="建材城">建材城</a>
            </li>
            <li id="JS_mll_head_menu_jiashi">
                <a target="_blank" href="http://www.meilele.com/shipin/" title="家居家饰">家居家饰</a>
            </li>
            <li>
                <a target="_blank" href="http://www.meilele.com/tuangou/" title="团购">团购</a>
            </li>
            <li>
                <a id="JS_mll_head_menu_expr" target="_blank" href="http://www.meilele.com/expr.html" title="体验馆">体验馆<img src="<%=basePath%>data/data_files/hot.gif"></a>
            </li>
            <li>
                <a target="_blank" href="http://www.meilele.com/xspace/" title="客户晒家">晒家</a>
            </li>
            <li>
                <a target="_blank" href="http://zx.meilele.com/" title="装修网">装修网</a>
            </li>
            <li>
                <a target="_blank" href="http://www.meilele.com/tljj/" title="图览家居">图览家居</a>
            </li>
        </ul>
    </div>
</div>


<div class="category-filter">
	
	<div class="w">
		
		<div class="prompt-info">
			<strong class="red f14">&nbsp;实木床&nbsp;</strong><span>您可根据以下条件进行筛选。</span>
		</div>
<div class="w self-panel"> 
	<div class="self-wrap clearfix"> 
		<div class="s-page"><span class="p-info">${pageBean.currentPage }/${pageBean.totalPage }</span><a class="list-bg p-btn p-prev" href="javascript:void(0);"></a><a class="list-bg p-btn p-next-disabled" href="javascript:void(0);"></a></div>
				<div class="s-info">共<b class="i-num"> ${pageBean.allRows } </b>件商品</div>
					<ul class="s-attrs clearfix">
						<li><a class="a-key first  list-bg a-cur" href="javascript:void(0);" onclick="" title="默认排序">综合</a></li>
						<li><a class="a-key " href="javascript:void(0);" onclick="" rel="nofollow" title="销量从高到低排序">销量</a></li>
						<li><a class="a-key " href="javascript:void(0);" onclick="" rel="nofollow" title="价格从低到高排序">价格</a></li>
						<li><a class="a-key " href="javascript:void(0);" rel="nofollow" title="评论数从高到低排序">评论数</a></li>
						<li><a class="a-key " href="javascript:void(0);" onclick="" rel="nofollow" title="上架时间从近到远排序">上架时间</a></li>
					</ul>
				</div>
		</div>

<div id="JS_list_panel" class="list-panel">
	<div class="w list-wrap"> 
		<ul class="list-goods clearfix"> 
			<c:forEach items="${homeList}" var="d">
				<li style="height:330px;width:275px;" class="ga-list g-item" id="${d.homeid+10000}" onmouseover="test(${d.homeid });" onmouseout="test1(${d.homeid });">
					<div class="g-dtl">
						<a href="<%=basePath %>homeservlet?order=look&homeid=${d.homeid }" id="btn_div" target="_blank">
							<img class="d-img"  src="<%=basePath%>${d.pictureurl }" alt="${d.homename }">
						</a>
						<div class="d-price clearfix">
				
						<strong class="Left p-money"><sub class="m-mark">¥</sub><span data-goods_id="261793" class="m-count JS_async_price">${d.price }</span></strong>
					</div>
						<a href="javascript:void(0);" target="_blank" title="${d.oneword }" class="d-name">
							<span>&nbsp;&nbsp;${d.homename }</span><br/>
							<span class="n-extra">${d.introduce }</span>
						</a>
						<div class="d-tags">
							<span class="t-item t-sale">
								<a target="_blank" href="">已售 
									<b  class="t-num JS_async_sale_num  border-rb">${d.buyed }</b>
								</a>
							</span>
							<span class="t-item t-score">
								<a target="_blank" href="http://www.meilele.com/category-guiyichuangweideng/goods-240487.html?page=21&amp;index=1">评论
									<b class="t-num JS_async_score">10</b>
								</a>
							</span> 
						</div>
						<div class="d-options" id="${d.homeid }" style="display:none">
							<a class="ga5 o-btn o-cart o-btn3" href="javascript:void(0);" onclick="shoucang('${d.homeid }')">
								<i class="i3 i"></i><span style="color: #cf000e;"><font size="4">收&nbsp;藏&nbsp;&nbsp;&nbsp;</font></span>
							</a>
							<a class="ga5 o-btn o-cart o-btn3" href="<%=basePath %>shopcarservlet?order=add&homeid=${d.homeid}" onclick="goodAddToCat(&#39;240487&#39;,this.href,&#39;categoryMainList&#39;);return false;">
								<i class="i3 i"></i><span style="color: #cf000e;"><font size="4">加入购物车</font></span>
							</a> 
						</div>
					</div>
				</li>
			</c:forEach>
		</ul>
	</div>
</div>
<br/><br/>
 
        
 	<table align="center" >
 		<tr>
 			<td width="600" align="right">
 	
        <c:if test="${pageBean.currentPage == 1}">
           <input type="text" readonly="readonly" value="<<上一页" style="width:100px;height:30px;text-align: center; font-size:22px" size="65"/>
        </c:if>
        
        <c:if test="${pageBean.currentPage != 1}">
            
            &nbsp;&nbsp;&nbsp;
            <a href="<%=basePath %>homeservlet?order=list2&hometype=${hometype }&page=${pageBean.currentPage - 1 }"><input type="text" readonly="readonly" value="<<上一页" style="width:100px;height:30px;text-align: center; font-size:22px" size="65"/></a>
        </c:if>
        
        <a href="<%=basePath %>homeservlet?order=list2&hometype=${hometype }" /><input id="1" type="text" readonly="readonly" value="1" style="width:30px;height:30px;text-align: center; font-size:22px" size="65"/></a>
        <c:if test="${pageBean.totalPage>3}">
       
	        <c:if test="${pageBean.currentPage == 1}">
	        	
	        	<a href="<%=basePath %>homeservlet?order=list2&hometype=${hometype }&page=2"><input type="text" id="2" readonly="readonly" value="2" style="width:30px;height:30px;text-align: center; font-size:22px" size="65"/></a>
	        	<a href="<%=basePath %>homeservlet?order=list2&hometype=${hometype }&page=3"><input type="text" id="3" readonly="readonly" value="3" style="width:30px;height:30px;text-align: center; font-size:22px" size="65"/></a>
	        	...
	        	<a href="<%=basePath %>homeservlet?order=list2&hometype=${hometype }&page=${pageBean.totalPage }"><input type="text" readonly="readonly" value="${pageBean.totalPage }" style="width:30px;height:30;text-align: center; font-size:22px" size="65"/></a>
	        </c:if>
	        <c:if test="${pageBean.currentPage == 2}">
	        	<c:if test="${pageBean.totalPage>4}">
		        	<a href="<%=basePath %>homeservlet?order=list2&hometype=${hometype }&page=2"><input type="text" readonly="readonly" value="2" style="width:30px;height:30px;text-align: center; font-size:22px" size="65"/></a>
		        	<a href="<%=basePath %>homeservlet?order=list2&hometype=${hometype }&page=3"><input type="text" readonly="readonly" value="3" style="width:30px;height:30px;text-align: center; font-size:22px" size="65"/></a>
		        	<a href="<%=basePath %>homeservlet?order=list2&hometype=${hometype }&page=4"><input type="text" readonly="readonly" value="4" style="width:30px;height:30px;text-align: center; font-size:22px" size="65"/></a>
		        	...
	        		<a href="<%=basePath %>homeservlet?order=list2&hometype=${hometype }&page=${pageBean.totalPage }"><input type="text" readonly="readonly" value="${pageBean.totalPage }" style="width:30px;height:30px;text-align: center; font-size:22px" size="65"/></a>
	        	</c:if>
	        	<c:if test="${pageBean.totalPage<=4}">
	        		<a href="<%=basePath %>homeservlet?order=list2&hometype=${hometype }&page=2"><input type="text" readonly="readonly" value="2" style="width:30px;height:30px;text-align: center; font-size:22px" size="65"/></a>
		        	<a href="<%=basePath %>homeservlet?order=list2&hometype=${hometype }&page=3"><input type="text" readonly="readonly" value="3" style="width:30px;height:30px;text-align: center; font-size:22px" size="65"/></a>
		        	...
	        	<a href="<%=basePath %>homeservlet?order=list2&hometype=${hometype }&page=${pageBean.totalPage }"><input type="text" readonly="readonly" value="${pageBean.totalPage }" style="width:30px;height:30px;text-align: center; font-size:22px" size="65"/></a>
	        	</c:if>
	        </c:if>
	        <c:if test="${pageBean.currentPage == 3}">
	        	
	        	<c:if test="${pageBean.totalPage>5 }">
		        	<a href="<%=basePath %>homeservlet?order=list2&hometype=${hometype }&page=2"><input type="text" readonly="readonly" value="2" style="width:30px;height:30px;text-align: center; font-size:22px" size="65"/></a>
		        	<a href="<%=basePath %>homeservlet?order=list2&hometype=${hometype }&page=3"><input type="text" readonly="readonly" value="3" style="width:30px;height:30px;text-align: center; font-size:22px" size="65"/></a>
		        	<a href="<%=basePath %>homeservlet?order=list2&hometype=${hometype }&page=4"><input type="text" readonly="readonly" value="4" style="width:30px;height:30px;text-align: center; font-size:22px" size="65"/></a>
		        	<a href="<%=basePath %>homeservlet?order=list2&hometype=${hometype }&page=5"><input type="text" readonly="readonly" value="5" style="width:30px;height:30px;text-align: center; font-size:22px" size="65"/></a>
		        	...
	        		<a href="<%=basePath %>homeservlet?order=list2&hometype=${hometype }&page=${pageBean.totalPage }"><input type="text" readonly="readonly" value="${pageBean.totalPage }" style="width:20px;height:30px;text-align: center; font-size:22px" size="65"/></a>
	        	</c:if>
	        	<c:if test="${pageBean.totalPage<=5}">
	        		<a href="<%=basePath %>homeservlet?order=list2&hometype=${hometype }&page=2"><input type="text" readonly="readonly" value="2" style="width:30px;height:30px;text-align: center; font-size:22px" size="65"/></a>
		        	<a href="<%=basePath %>homeservlet?order=list2&hometype=${hometype }&page=3"><input type="text" readonly="readonly" value="3" style="width:30px;height:30px;text-align: center; font-size:22px" size="65"/></a>
		        	<a href="<%=basePath %>homeservlet?order=list2&hometype=${hometype }&page=4"><input type="text" readonly="readonly" value="4" style="width:30px;height:30px;text-align: center; font-size:22px" size="65"/></a>
		        	...
	        		<a href="<%=basePath %>homeservlet?order=list2&hometype=${hometype }&page=${pageBean.totalPage }"><input type="text" readonly="readonly" value="${pageBean.totalPage }" style="width:20px;height:30px;text-align: center; font-size:22px" size="65"/></a>
	        	</c:if>
	        </c:if>
	        <c:if test="${pageBean.currentPage == 4}">
	        	<c:if test="${pageBean.totalPage>6 }">
		        	<a href="<%=basePath %>homeservlet?order=list2&hometype=${hometype }&page=2"><input type="text" readonly="readonly" value="2" style="width:30px;height:30px;text-align: center; font-size:22px" size="65"/></a>
		        	<a href="<%=basePath %>homeservlet?order=list2&hometype=${hometype }&page=3"><input type="text" readonly="readonly" value="3" style="width:30px;height:30px;text-align: center; font-size:22px" size="65"/></a>
		        	<a href="<%=basePath %>homeservlet?order=list2&hometype=${hometype }&page=4"><input type="text" readonly="readonly" value="4" style="width:30px;height:30px;text-align: center; font-size:22px" size="65"/></a>
		        	<a href="<%=basePath %>homeservlet?order=list2&hometype=${hometype }&page=5"><input type="text" readonly="readonly" value="5" style="width:30px;height:30px;text-align: center; font-size:22px" size="65"/></a>
		        	<a href="<%=basePath %>homeservlet?order=list2&hometype=${hometype }&page=6"><input type="text" readonly="readonly" value="6" style="width:30px;height:30px;text-align: center; font-size:22px" size="65"/></a>
		        	...
	        		<a href="<%=basePath %>userservlet?order=list&page=${pageBean.totalPage }"><input type="text" readonly="readonly" value="${pageBean.totalPage }" style="width:30px;height:30px;text-align: center; font-size:22px" size="65"/></a>
	        	</c:if>
	        	<c:if test="${pageBean.totalPage<6 }">
	        		<a href="<%=basePath %>homeservlet?order=list2&hometype=${hometype }&page=2"><input type="text" readonly="readonly" value="2" style="width:30px;height:30px;text-align: center; font-size:22px" size="65"/></a>
		        	<a href="<%=basePath %>homeservlet?order=list2&hometype=${hometype }&page=3"><input type="text" readonly="readonly" value="3" style="width:30px;height:30px;text-align: center; font-size:22px" size="65"/></a>
		        	<a href="<%=basePath %>homeservlet?order=list2&hometype=${hometype }&page=4"><input type="text" readonly="readonly" value="4" style="width:30px;height:30px;text-align: center; font-size:22px" size="65"/></a>
		        	...
	        		<a href="<%=basePath %>homeservlet?order=list2&hometype=${hometype }&page=${pageBean.totalPage }"><input type="text" readonly="readonly" value="${pageBean.totalPage }" style="width:30px;height:30px;text-align: center; font-size:22px" size="65"/></a>
	        	</c:if>
	        </c:if>
	         <c:if test="${pageBean.currentPage > 4}">
	        	<c:if test="${pageBean.currentPage<pageBean.totalPage-2}">
	        	...
	        	<a href="<%=basePath %>homeservlet?order=findlist&homename=${reuestScope.homename }&page=${pageBean.currentPage - 2 }"><input type="text" readonly="readonly" value="${pageBean.currentPage-2 }" style="width:30px;height:30px;text-align: center; font-size:22px" size="65"/></a>
	        	<a href="<%=basePath %>homeservlet?order=findlist&homename=${reuestScope.homename }&page=${pageBean.currentPage -1 }"><input type="text" readonly="readonly" value="${pageBean.currentPage-1 }" style="width:30px;height:30px;text-align: center; font-size:22px" size="65"/></a>
	        	<a href="<%=basePath %>homeservlet?order=findlist&homename=${reuestScope.homename }&page=${pageBean.currentPage  }"><input type="text" readonly="readonly" value="${pageBean.currentPage }" style="width:30px;height:30px;text-align: center; font-size:22px" size="65"/></a>
	        	<a href="<%=basePath %>homeservlet?order=findlist&homename=${reuestScope.homename }&page=${pageBean.currentPage +1}"><input type="text" readonly="readonly" value="${pageBean.currentPage+1 }" style="width:30px;height:30px;text-align: center; font-size:22px" size="65"/></a>
		        <a href="<%=basePath %>homeservlet?order=findlist&homename=${reuestScope.homename }&page=${pageBean.currentPage +2 }"><input type="text" readonly="readonly" value="${pageBean.currentPage+2 }" style="width:30px;height:30px;text-align: center; font-size:22px" size="65"/></a>
		        ...
		        <a href="<%=basePath %>homeservlet?order=findlist&homename=${reuestScope.homename }&page=${ pageBean.totalPage}"><input type="text" readonly="readonly" value="${pageBean.totalPage }" style="width:30px;height:30px;text-align: center; font-size:22px" size="65"/></a>
	        	</c:if>
	        <c:if test="${pageBean.currentPage==pageBean.totalPage-2}">
	        	...
	        	<a href="<%=basePath %>homeservlet?order=list2&hometype=${hometype }&page=${pageBean.currentPage - 2 }"><input type="text" readonly="readonly" value="${pageBean.currentPage-2 }" style="width:30px;height:30px;text-align: center; font-size:22px" size="65"/></a>
	        	<a href="<%=basePath %>homeservlet?order=list2&hometype=${hometype }&page=${pageBean.currentPage -1 }"><input type="text" readonly="readonly" value="${pageBean.currentPage-1 }" style="width:30px;height:30px;text-align: center; font-size:22px" size="65"/></a>
	        	<a href="<%=basePath %>homeservlet?order=list2&hometype=${hometype }&page=${pageBean.currentPage  }"><input type="text" readonly="readonly" value="${pageBean.currentPage }" style="width:30px;height:30px;text-align: center; font-size:22px" size="65"/></a>
	        	<a href="<%=basePath %>homeservlet?order=list2&hometype=${hometype }&page=${pageBean.currentPage +1}"><input type="text" readonly="readonly" value="${pageBean.currentPage+1 }" style="width:30px;height:30px;text-align: center; font-size:22px" size="65"/></a>
		        <a href="<%=basePath %>homeservlet?order=list2&hometype=${hometype }&page=${pageBean.currentPage +2 }"><input type="text" readonly="readonly" value="${pageBean.currentPage+2 }" style="width:30px;height:30px;text-align: center; font-size:22px" size="65"/></a>
	        </c:if>
	        <c:if test="${pageBean.currentPage==pageBean.totalPage-1}">
	         	...
	        	<a href="<%=basePath %>homeservlet?order=list2&hometype=${hometype }&page=${pageBean.currentPage -2 }"><input type="text" readonly="readonly" value="${pageBean.currentPage-2 }" style="width:30px;height:30px;text-align: center; font-size:22px" size="65"/></a>
	        	<a href="<%=basePath %>homeservlet?order=list2&hometype=${hometype }&page=${pageBean.currentPage -2 }"><input type="text" readonly="readonly" value="${pageBean.currentPage-1 }" style="width:30px;height:30px;text-align: center; font-size:22px" size="65"/></a>
	        	<a href="<%=basePath %>homeservlet?order=list2&hometype=${hometype }&page=${pageBean.currentPage  }"><input type="text" readonly="readonly" value="${pageBean.currentPage }" style="width:30px;height:30px;text-align: center; font-size:22px" size="65"/></a>
	        	<a href="<%=basePath %>homeservlet?order=list2&hometype=${hometype }&page=${pageBean.currentPage +1 }"><input type="text" readonly="readonly" value="${pageBean.currentPage+1 }" style="width:30px;height:30px;text-align: center; font-size:22px" size="65"/></a>
	        </c:if>
	        <c:if test="${pageBean.currentPage==pageBean.totalPage}">
	        	...
	        	<a href="<%=basePath %>homeservlet?order=list2&hometype=${hometype }&page=${pageBean.currentPage -2 }"><input type="text" readonly="readonly" value="${pageBean.currentPage-2 }" style="width:30px;height:30px;text-align: center; font-size:22px" size="65"/></a>
	        	<a href="<%=basePath %>homeservlet?order=list2&hometype=${hometype }&page=${pageBean.currentPage -1 }"><input type="text" readonly="readonly" value="${pageBean.currentPage-1 }" style="width:30px;height:30px;text-align: center; font-size:22px" size="65"/></a>
	        	<a href="<%=basePath %>homeservlet?order=list2&hometype=${hometype }&page=${pageBean.currentPage  }"><input type="text" readonly="readonly" value="${pageBean.currentPage }" style="width:30px;height:30px;text-align: center; font-size:22px" size="65"/></a>
	        	<c:if test="${pageBean.currentPage<pageBean.totalPage-1}">
		        	<a href="<%=basePath %>homeservlet?order=list2&hometype=${hometype }&page=${pageBean.currentPage +1 }"><input type="text" readonly="readonly" value="${pageBean.currentPage+1 }" style="width:30px;height:30px;text-align: center; font-size:22px" size="65"/></a>
			        <a href="<%=basePath %>homeservlet?order=list2&hometype=${hometype }&page=${pageBean.currentPage +2 }"><input type="text" readonly="readonly" value="${pageBean.currentPage+2 }" style="width:30px;height:30px;text-align: center; font-size:22px" size="65"/></a>
	        	</c:if>
	        	
	        	<c:if test="${pageBean.totalPage>4}">
		        	<c:if test="${pageBean.currentPage<pageBean.totalPage}">
		        		...
		        	</c:if>
	        
		        </c:if>
		        <c:if test="${pageBean.currentPage==pageBean.totalPage}"></c:if>
		        <c:if test="${pageBean.currentPage!=pageBean.totalPage}">
		        	<a href="<%=basePath %>homeservlet?order=list2&hometype=${hometype }&page=${ pageBean.totalPage}"><input type="text" readonly="readonly" value="${pageBean.totalPage }" style="width:30px;height:30px;text-align: center; font-size:22px" size="65"/></a>
		        </c:if>
	        </c:if>
        </c:if>
        </c:if>
        <c:if test="${pageBean.totalPage==3}">
        	<a href="<%=basePath %>homeservlet?order=list2&hometype=${hometype }&page=2"><input type="text" readonly="readonly" value="2" style="width:30px;height:30px;text-align: center; font-size:22px" size="65"/></a>
		    <a href="<%=basePath %>homeservlet?order=list2&hometype=${hometype }&page=3"><input type="text" readonly="readonly" value="3" style="width:30px;height:30px;text-align: center; font-size:22px" size="65"/></a>
		        	
        </c:if>
        
        <c:if test="${pageBean.currentPage!=pageBean.totalPage}">
            <a href="<%=basePath %>homeservlet?order=list2&hometype=${hometype }&page=${ pageBean.currentPage + 1}"><input type="text" readonly="readonly" value="下一页>>" style="width:100px;height:30px;text-align: center; font-size:22px" size="65"/></a>
            &nbsp;&nbsp;&nbsp;
        </c:if>
        
        <c:if test="${pageBean.currentPage==pageBean.totalPage}">
            <input type="text" readonly="readonly" value="下一页>>" style="width:100px;height:30px;text-align: center; font-size:22px" size="65"/>
        </c:if>
    	</td>
    	<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
    	<td align="right">
    		
    	<form action="homeservlet?order=list2&hometype=${hometype }" method="post" onsubmit="return validate();">
            <font size="4">到第</font>
            <input type="text" size="2" name="page"><font size="4">页</font>
            <input type="submit" value="确 定" style="height: 26px; width:70px;font-size: 15px;">
        </form>
   
    </td>
 </tr>
</table>


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
