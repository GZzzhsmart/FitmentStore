<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="SQLBean.UserBean"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script async="true" type="text/javascript" src="<%=basePath%>data/data_files/event" data-owner="criteo-tag"></script>
<script charset="utf-8" src="<%=basePath%>data/data_files/v.js"></script>
<script type="text/javascript" async="" src="<%=basePath%>data/data_files/mv.js"></script>
<script type="text/javascript" async="" src="<%=basePath%>data/data_files/mba.js"></script>
<script src="<%=basePath%>data/data_files/x.js"></script><script src="<%=basePath%>data/data_files/hm.js"></script>
<script type="text/javascript" async="" defer="" src="<%=basePath%>data/data_files/dc.js"></script>
<script type="text/javascript" async="" src="<%=basePath%>data/data_files/ocl.invoke.min.js"></script>

<meta name="keywords" content="家具">
<meta name="description" content="买好家具就上乐家居网，提供美式家具，中式餐桌,中式床,中式沙发,欧式家具，韩式家具，现代家具，中式家具，儿童家具，美国进口床垫，建材，家纺，家电等商品。全球采购，正品保证，限时送达，售后无忧，万千家庭共同选择！">
<link rel="icon" href="http://image.meilele.com/favicon.ico">
<link rel="stylesheet" href="<%=basePath%>data/data_files/mll.common.new.min.css">
<title>【乐家具】床,沙发,衣柜,电视柜,餐桌,书桌,儿童床,特</title>
<link rel="stylesheet" href="<%=basePath%>data/data_files/special_sem.min.css"> 
<script type="text/javascript" async="" src="<%=basePath%>data/data_files/get.do"></script>
<script type="text/javascript" async="" src="<%=basePath%>data/data_files/getMiniActivityWebPage"></script>
<script type="text/javascript" async="" src="<%=basePath%>data/data_files/recad.min.js"></script>
<style type="text/css">
.BMap_shadow{display: none}
.BMap_pop{display: none}
    .navigator-index{display: none}
    .drcode-phone{display: none}
</style><style type="text/css"></style>
<script type="text/javascript" async="" src="<%=basePath%>data/data_files/chatFloat.min.js"></script>

<body class="root_body" style="">
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

<div class="page-header">
    <div class="w ph-contenter clearfix">
        <a id="JS_Header_Logo_link_home" class="fl logo" href="/">
            <img src="<%=basePath %>images/face.png" alt="" width="193" height="61">
        </a>
                <a onclick="_clickSearchAd()" title="体验馆6周年庆" class="fl ph-ad" href="http://www.meilele.com/topic/201703_znqdc.html?site_from=sskzc#thg=gaca&adg=gaco&adn=2013%E6%90%9C%E7%B4%A2%E6%A1%86%E5%B7%A6%E4%BE%A7%E5%B0%8F%E5%B9%BF%E5%91%8A&ado=1&adc=0" rel="nofollow" target="_blank">
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


<div class="header-nav">
    <div class="header-nav-div clearfix">
        <ul class="clearfix Left">
                    <li class="p-li ">
                <div class="menu-div">
                    <div><h5><i style="background: url(http://image.meilele.com/images/201609/1473707841630808973.png);" class="i"></i>  客厅家具</h5></div>
                    <ul class="clearfix">
                       <li><a href="<%=basePath %>homeservlet?order=list2&hometype=4" target="_blank"><font color="#cf000e" style="font-weight:bold">沙发</font> </a></li>
                       <li><a href="<%=basePath %>homeservlet?order=list2&hometype=5" target="_blank">电视柜 </a></li>
                       <li><a href="<%=basePath %>homeservlet?order=list2&hometype=24" target="_blank">客厅套装 </a></li>
                       <li><a href="<%=basePath %>homeservlet?order=list2&hometype=21" target="_blank">酒柜 </a></li>
                       <li><a href="<%=basePath %>homeservlet?order=list2&hometype=4" target="_blank"><font color="#cf000e" style="font-weight:bold">小户型沙发</font> </a></li>
                       <li><a href="<%=basePath %>homeservlet?order=list2&hometype=22" target="_blank">鞋柜 </a></li>
                       <li><a href="<%=basePath %>homeservlet?order=list2&hometype=23" target="_blank">茶几/边桌 </a></li>
                       <li><a href="<%=basePath %>homeservlet?order=list2&hometype=4" target="_blank">真皮沙发 </a></li>
                                                                                            
                    </ul>
                </div>
            </li>
                    <li class="p-li ">
                <div class="menu-div">
                    <div><h5><i style="background: url(http://image.meilele.com/images/201609/1473707826563169565.png);" class="i"></i>  卧室家具</h5></div>
                    <ul class="clearfix">
                       <li><a href="<%=basePath %>homeservlet?order=list2&hometype=3" target="_blank">衣柜 </a></li>
                       <li><a href="<%=basePath %>homeservlet?order=list2&hometype=1" target="_blank">床垫 </a></li>
                       <li><a href="<%=basePath %>homeservlet?order=list2&hometype=17" target="_blank">床上用品 </a></li>
                       <li><a href="<%=basePath %>homeservlet?order=list2&hometype=19" target="_blank"><font color="#cf000e" style="font-weight:bold">家居饰品</font> </a></li>
                       <li><a href="<%=basePath %>homeservlet?order=list2&hometype=8" target="_blank"><font style="font-weight:bold">书桌</font> </a></li>
                       <li><a href="<%=basePath %>homeservlet?order=list2&hometype=9" target="_blank">书柜 </a></li>
                       <li><a href="<%=basePath %>homeservlet?order=list2&hometype=25" target="_blank">床头柜 </a></li>
                       <li><a href="<%=basePath %>homeservlet?order=list2&hometype=5" target="_blank">电视柜 </a></li>
                       <li><a href="<%=basePath %>homeservlet?order=list2&hometype=20" target="_blank">居家日用 </a></li>
                    </ul>
                </div>
            </li>
                    <li class="p-li ">
                <div class="menu-div">
                    <div><h5><i style="background: url(http://image.meilele.com/images/201609/1473707818377604949.png);" class="i"></i>  餐厅灯饰</h5></div>
                    <ul class="clearfix">
                       <li><a href="<%=basePath %>homeservlet?order=list2&hometype=6" target="_blank">餐桌 </a></li>
                       <li><a href="<%=basePath %>homeservlet?order=list2&hometype=7" target="_blank">餐椅 </a></li>
                       <li><a href="<%=basePath %>homeservlet?order=list2&hometype=26" target="_blank">餐厅套装 </a></li>
                       <li><a href="<%=basePath %>homeservlet?order=list2&hometype=27" target="_blank">餐边柜 </a></li>
                       <li><a href="<%=basePath %>homeservlet?order=list2&hometype=12" target="_blank">吊灯 </a></li>
                       <li><a href="<%=basePath %>homeservlet?order=list2&hometype=14" target="_blank"><font color="#cf000e" style="font-weight:bold">卫浴</font> </a></li>
                       <li><a href="<%=basePath %>homeservlet?order=list2&hometype=15" target="_blank">浴室柜 </a></li>
                       <li><a href="<%=basePath %>homeservlet?order=list2&hometype=16" target="_blank">座便器 </a></li>
                       <li><a href="<%=basePath %>homeservlet?order=list2&hometype=13" target="_blank">吸顶灯 </a></li>
                                                                                            
                    </ul>
                </div>
            </li>
                    <li class="p-li borderrightnone">
                <div class="menu-div">
                    <div><h5><i style="background: url(http://image.meilele.com/images/201609/1473707833594008153.png);" class="i"></i>  儿童家具</h5></div>
                    <ul class="clearfix">
                        <li><a href="<%=basePath %>homeservlet?order=list2&hometype=10" target="_blank">儿童床 </a></li>
                        <li><a href="<%=basePath %>homeservlet?order=list2&hometype=28" target="_blank">上下床 </a></li>
                        <li><a href="<%=basePath %>homeservlet?order=list2&hometype=32" target="_blank">高低床 </a></li>
                        <li><a href="<%=basePath %>homeservlet?order=list2&hometype=11" target="_blank">儿童书桌 </a></li>
                        <li><a href="<%=basePath %>homeservlet?order=list2&hometype=29" target="_blank">公主床 </a></li>
                        <li><a href="<%=basePath %>homeservlet?order=list2&hometype=30" target="_blank">儿童衣柜 </a></li>
                        <li><a href="<%=basePath %>homeservlet?order=list2&hometype=31" target="_blank"><font color="#cf000e" style="font-weight:bold">子母床</font> </a></li>
                        <li><a href="<%=basePath %>homeservlet?order=list2&hometype=28" target="_blank">高低床 </a></li>
                                                                                            
                    </ul>
                </div>
            </li>
            
        </ul>
       
    </div>
</div>

<div class="mainCont">
    <div class="template-div clearfix">
        <div class="slide Left">
            <div class="stage relative">
                <table id="JS_side_style_stage_1" style="margin-left: 0px;">
                    <tbody>
                    	<tr>
                             <td>
		                        <a href="http://www.meilele.com/category-chuang/list-s302/" target="_blank">
		                        <img src="<%=basePath%>data/data_files/1487027936410823731.jpg" title="中式床" alt="中式床" width="340" height="341"></a>
		                     </td>
                             <td>
		                        <a href="http://www.meilele.com/topic/201705_dw.html?from=semjdt" target="_blank">
		                        <img src="<%=basePath%>data/data_files/1495386616627749598.jpg" title="活动" alt="活动" width="340" height="341"></a>
		                     </td>
                             <td>
		                        <a href="http://www.meilele.com/category-ketingtaofang/?from=sem" target="_blank">
		                        <img src="<%=basePath%>data/data_files/1487027922594224001.jpg" title="客厅套装" alt="客厅套装" width="340" height="341"></a>
		                     </td>
                    	</tr>
               	 	</tbody>
                </table>
                <div id="JS_side_style_nav_1" class="nav">
                     <a class="" href="javascript:;"></a>
                     <a href="javascript:;" class="current"></a>
                     <a href="javascript:;" class=""></a>
                </div>
            </div>
            <table width="340" class="nav-table">
                <tbody>
                	<tr>
                       <td><a href="http://www.meilele.com/keywords/jiaju/list-o1/" target="_blank">家具热销榜</a></td>
                       <td><a href="http://www.meilele.com/miaosha/?from=semkw" target="_blank">特价精选</a></td>
                       <td><a href="http://www.meilele.com/keywords/shimujiaju/?from=semkw" target="_blank">实木家具</a></td>
                	<tr>
                       <td><a href="http://www.meilele.com/keywords/jiaju/list-a2/" target="_blank">折扣专区</a></td>
                       <td><a href="http://www.meilele.com/keywords/xiandaishafa/?from=semkw" target="_blank">现代客厅</a></td>
                       <td><a href="http://www.meilele.com/keywords/zhongshijiaju/?from=semkw" target="_blank">传统中式</a></td>
                    </tr>
               		<tr>
                       <td><a href="http://www.meilele.com/keywords/xhxjj/" target="_blank">小户型家具</a></td>
                       <td><a href="http://www.meilele.com/keywords/hongmujiaju/" target="_blank">红木家具</a></td>
                       <td><a href="http://www.meilele.com/keywords/duogongnengshafa/" target="_blank">功能沙发</a></td>
                    </tr>
            	</tbody>
            </table>
        </div>
           
            <ul class="Right list-ul clearfix">
               <li>
               	 <a href="http://www.meilele.com/category-chuang/goods-20363.html" target="_blank">
                    <img src="<%=basePath%>data/data_files/YKkxtD0+l8CT6mdTP0jUTosXyzGqRaYb484nDncYwHOkevEIXPJarYa7Z8e6L2rXjcdLQ_IkEuGu1wnz2+PpkQ==.jpg" title="畅销经典款 高档水牛头层真皮床 对称式描金雕花 1.8米精致水晶拉扣床" alt="畅销经典款 高档水牛头层真皮床 对称式描金雕花 1.8米精致水晶拉扣床" width="264" height="174">
               	 <p class="txt-title">畅销经典款 高档水牛头层真皮床 对称式描金雕花 1.8米精致水晶拉扣床</p></a>
                 <div class="tag-div"><span data-id="20363" id="p1-20363" class="txt-price Left JS_price">¥3650.00</span><span class="Left txt-tag">限时降500</span><span class="Right txt-count count">已售<span id="s1-20363">38647</span></span></div>
           	   </li>
               <li>
                 <a href="http://www.meilele.com/category-shafa/goods-24093.html" target="_blank">
                    <img src="<%=basePath%>data/data_files/YKkxtD0+l8CT6mdTP0jUTosXyzGqRaYb484nDncYwHNqV+a1uOPlHeNwG8EZfQbgHNNwNLUjzIFjUh_KFw9CIw==.jpg" title="舒适黄牛真皮沙发 高弹性公仔棉真皮腰枕 带储物功能L型皮艺左转角沙发" alt="舒适黄牛真皮沙发 高弹性公仔棉真皮腰枕 带储物功能L型皮艺左转角沙发" width="264" height="174">
                 <p class="txt-title">舒适黄牛真皮沙发 高弹性公仔棉真皮腰枕 带储物功能L型皮艺左转角沙发</p></a>
                 <div class="tag-div"><span data-id="24093" id="p1-24093" class="txt-price Left JS_price">¥7100.00</span><span class="Left txt-tag">限时降1000</span><span class="Right txt-count count">已售<span id="s1-24093">80817</span></span></div>
               </li>
                        <li>
                <a href="http://www.meilele.com/category-canzhuo/goods-41596.html" target="_blank">
                    <img src="<%=basePath%>data/data_files/YKkxtD0+l8CT6mdTP0jUTosXyzGqRaYb484nDncYwHOpTkxQXLl66BMaNWx7W0HMQ7G6m4L3mHMjMYYqCsnm6w==.jpg" title="橡木臻品 自然木纹 宽厚桌脚 美国进口白橡木1.6米餐桌" alt="橡木臻品 自然木纹 宽厚桌脚 美国进口白橡木1.6米餐桌" width="264" height="174">
                <p class="txt-title">橡木臻品 自然木纹 宽厚桌脚 美国进口白橡木1.6米餐桌</p></a>
                <div class="tag-div"><span data-id="41596" id="p1-41596" class="txt-price Left JS_price">¥2040.00</span><span class="Right txt-count count">已售<span id="s1-41596">3782</span></span></div>
            </li>
               <li>
                <a href="http://www.meilele.com/category-chuang/goods-20429.html" target="_blank">
                    <img src="<%=basePath%>data/data_files/YKkxtD0+l8CT6mdTP0jUTosXyzGqRaYb484nDncYwHNQjsa2SBC12qivdKAmB6ZdWCToG_+YE07vZm+7574Ymg==.jpg" title="人气爆款 可拆卸靠包 精选头层珠光真皮1.8米床" alt="人气爆款 可拆卸靠包 精选头层珠光真皮1.8米床" width="264" height="174">
                <p class="txt-title">人气爆款 可拆卸靠包 精选头层珠光真皮1.8米床</p></a>
                <div class="tag-div"><span data-id="20429" id="p1-20429" class="txt-price Left JS_price">¥2999.00</span><span class="Left txt-tag">限时降500</span><span class="Right txt-count count">已售<span id="s1-20429">19810</span></span></div>
            </li>
                        <li>
                <a href="http://www.meilele.com/category-shafa/goods-278387.html" target="_blank">
                    <img src="<%=basePath%>data/data_files/YKkxtD0+l8CT6mdTP0jUTosXyzGqRaYb484nDncYwHPh2rRQSKDi66nA+NgD2X74G8uI5SRt0rlWpZJBKr3XRQ==.jpg" title="布艺沙发 舒适棉麻 休闲沙发床 小户型多功能沙发组合（三人位+脚踏）含抱枕" alt="布艺沙发 舒适棉麻 休闲沙发床 小户型多功能沙发组合（三人位+脚踏）含抱枕" width="264" height="174">
                <p class="txt-title">布艺沙发 舒适棉麻 休闲沙发床 小户型多功能沙发组合（三人位+脚踏）含抱枕</p></a>
                <div class="tag-div"><span data-id="278387" id="p1-278387" class="txt-price Left JS_price">¥2599.00</span><span class="Left txt-tag">限时降500</span><span class="Right txt-count count">已售<span id="s1-278387">1623</span></span></div>
            </li>
                        <li>
                <a href="http://www.meilele.com/category-chuang/goods-34742.html" target="_blank">
                    <img src="<%=basePath%>data/data_files/YKkxtD0+l8CT6mdTP0jUTosXyzGqRaYb484nDncYwHMJOzpDkL4JAMWl2NKeEAfcXdElW4jEcNZTG9QyOhKRlQ==.jpg" title="人气爆款 栅栏式简约设计 臻选美国进口白杨木1.5米床" alt="人气爆款 栅栏式简约设计 臻选美国进口白杨木1.5米床" width="264" height="174">
                <p class="txt-title">人气爆款 栅栏式简约设计 臻选美国进口白杨木1.5米床</p></a>
                <div class="tag-div"><span data-id="34742" id="p1-34742" class="txt-price Left JS_price">¥2250.00</span><span class="Right txt-count count">已售<span id="s1-34742">41438</span></span></div>
            </li>
               
            </ul>
    </div>
    
    <div class="special-offer">
         <div class="title-h3"><h3>特价抢购</h3></div>
         <ul class="clearfix" id="JS_special">
                     <li>
                <a href="http://www.meilele.com/category-shafa/goods-283798.html" target="_blank">
                	<img width="283" height="187px" src="<%=basePath%>data/data_files/YKkxtD0+l8CT6mdTP0jUTosXyzGqRaYb484nDncYwHNjfe7iiUCA4c9365v6M804HgYrD8lqIRPGEhUdZZAMCA==.jpg" title="沙发 从容有型 可调节靠背厚实座包经典灰色布艺转角沙发（1+2+左贵妃）" alt="沙发 从容有型 可调节靠背厚实座包经典灰色布艺转角沙发（1+2+左贵妃）"></a>
                <div class="borderdiv">
                    <p class="txt-title"><a href="http://www.meilele.com/category-shafa/goods-283798.html" target="_blank">
                    	沙发 从容有型 可调节靠背厚实座包经典灰色布艺转角沙发（1+2+左贵妃）</a>
                    </p>
                    <div class="clearfix price-div">
                        <div class="Left price">
                            <span>¥</span><font class="new_price" data-id="283798" id="p2-283798">3518</font>
                        </div>

                        <div class="discont Left" style="display: none;">
                            <p class="discont-p">10折</p>
                            <del>¥<font class="old_price">3518</font></del>
                        </div>
                     
                        <a class="Right" href="http://www.meilele.com/category-shafa/goods-283798.html" target="_blank"></a>
                    </div>
                </div>
            </li>
                        <li>
                <a href="http://www.meilele.com/category-chuang/goods-111887.html" target="_blank"><img width="283" height="187px" src="<%=basePath%>data/data_files/YKkxtD0+l8CT6mdTP0jUTosXyzGqRaYb484nDncYwHOa878JmXKMUqXj4o9uWU6Ywj1QGmmXJdAz9F9OKJpQAw==.jpg" title="1.5米超大储物高箱床 低碳环保床板床 清晰木纹双人床" alt="1.5米超大储物高箱床 低碳环保床板床 清晰木纹双人床"></a>
                <div class="borderdiv">
                    <p class="txt-title"><a href="http://www.meilele.com/category-chuang/goods-111887.html" target="_blank">1.5米超大储物高箱床 低碳环保床板床 清晰木纹双人床</a></p>
                    <div class="clearfix price-div">
                        <div class="Left price">
                            <span>¥</span><font class="new_price" data-id="111887" id="p2-111887">1633</font>
                        </div>

                        <div class="discont Left" style="display: none;">
                            <p class="discont-p">10折</p>
                            <del>¥<font class="old_price">1633</font></del>
                        </div>
                     
                        <a class="Right" href="http://www.meilele.com/category-chuang/goods-111887.html" target="_blank"></a>
                    </div>
                </div>
            </li>
                        <li>
                <a href="http://www.meilele.com/category-canzhuo/goods-113097.html" target="_blank"><img width="283" height="187px" src="<%=basePath%>data/data_files/YKkxtD0+l8CT6mdTP0jUTosXyzGqRaYb484nDncYwHNGpiCLkP+QfFSy7uTmGIjtDeULn56G02Z6s6dc5w2ijQ==.jpg" title="超低价位·震撼来袭 经典双色设计 1.39米原木色小户型必备长餐桌" alt="超低价位·震撼来袭 经典双色设计 1.39米原木色小户型必备长餐桌"></a>
                <div class="borderdiv">
                    <p class="txt-title"><a href="http://www.meilele.com/category-canzhuo/goods-113097.html" target="_blank">超低价位·震撼来袭 经典双色设计 1.39米原木色小户型必备长餐桌</a></p>
                    <div class="clearfix price-div">
                        <div class="Left price">
                            <span>¥</span><font class="new_price" data-id="113097" id="p2-113097">650</font>
                        </div>

                        <div class="discont Left">
                            <p class="discont-p">9.2折</p>
                            <del>¥<font class="old_price">705</font></del>
                        </div>
                     
                        <a class="Right" href="http://www.meilele.com/category-canzhuo/goods-113097.html" target="_blank"></a>
                    </div>
                </div>
            </li>
                        <li>
                <a href="http://www.meilele.com/category-shafa/goods-327780.html" target="_blank"><img width="283" height="187px" src="<%=basePath%>data/data_files/YKkxtD0+l8CT6mdTP0jUTosXyzGqRaYb484nDncYwHPSRXnoZ31lk26gtfqu2r4pSBNvh5huOzdbmxgaOY7GNlM13woaboBHejFEYjWQrVyg+bo5Y9kfiQ_2AhOhUF7K.jpg" title=" 头等舱坐感   黑白北欧风格简约客厅沙发小户型转角布艺沙发组合 927" alt=" 头等舱坐感   黑白北欧风格简约客厅沙发小户型转角布艺沙发组合 927"></a>
                <div class="borderdiv">
                    <p class="txt-title"><a href="http://www.meilele.com/category-shafa/goods-327780.html" target="_blank"> 头等舱坐感   黑白北欧风格简约客厅沙发小户型转角布艺沙发组合 927</a></p>
                    <div class="clearfix price-div">
                        <div class="Left price">
                            <span>¥</span><font class="new_price" data-id="327780" id="p2-327780">3299</font>
                        </div>

                        <div class="discont Left">
                            <p class="discont-p">6.7折</p>
                            <del>¥<font class="old_price">4899</font></del>
                        </div>
                     
                        <a class="Right" href="http://www.meilele.com/category-shafa/goods-327780.html" target="_blank"></a>
                    </div>
                </div>
            </li>
            
         </ul>
    </div>
    
    <div class="template-div clearfix">
        <div class="title-h3"><h3>热卖推荐</h3></div>
        <div class="slide Left">
            <div class="stage relative">
               <table id="JS_side_style_stage_2" style="margin-left: -340px;">
                    <tbody><tr>
                                            <td>
                        <a href="http://www.meilele.com/category-chuang/list-s302/" target="_blank"><img src="<%=basePath%>data/data_files/1474752324389851442.jpg" data-src="http://img004.mllres.com/images/201609/1474752324389851442.jpg" title="中式卧室" alt="中式卧室" width="340" height="481"></a>
                        </td>
                                            <td>
                        <a href="http://www.meilele.com/keywords/shuangcengertongchuang/" target="_blank"><img src="<%=basePath%>data/data_files/1476126055494291685.jpg" title="儿童床" alt="儿童床" width="340" height="481"></a>
                        </td>
                           
                        
                    </tr>
                </tbody></table>
                <div id="JS_side_style_nav_2" class="nav">
                                                        <a class="current" href="javascript:;"></a>
                                                                            <a href="javascript:;" class=""></a>
                                      
                </div>
            </div>
        </div>
        <ul class="Right list-ul clearfix">
                                    <li>
                <a href="http://www.meilele.com/category-chuang/goods-14737.html" target="_blank">
                    <img src="<%=basePath%>data/data_files/YKkxtD0+l8CT6mdTP0jUTosXyzGqRaYb484nDncYwHPxpCqYeTFsB0Wz933NI8jifW8c8S9c7f9nvfd9nld4RQ==.jpg" title="人气爆款 1.8米头层真皮软床 婚床 软体床" alt="人气爆款 1.8米头层真皮软床 婚床 软体床" width="264" height="174">
                <p class="txt-title">人气爆款 1.8米头层真皮软床 婚床 软体床</p></a>
                <div class="tag-div"><span data-id="14737" id="p3-14737" class="txt-price Left JS_price">¥2499.00</span><span class="Right txt-count count">已售<span id="s3-14737">13718</span></span></div>
            </li>
                                                <li>
                <a href="http://www.meilele.com/category-ertongchuang/goods-26854.html" target="_blank">
                    <img src="<%=basePath%>data/data_files/YKkxtD0+l8CT6mdTP0jUTosXyzGqRaYb484nDncYwHPZGJgyxx9U8WzMSdxYx3+bvO4MhDRDd1tZpAm0ZcPnlw==.jpg" title="进口芬兰松1.2米双层儿童床 全实木板条床" alt="进口芬兰松1.2米双层儿童床 全实木板条床" width="264" height="174">
                <p class="txt-title">进口芬兰松1.2米双层儿童床 全实木板条床</p></a>
                <div class="tag-div"><span data-id="26854" id="p3-26854" class="txt-price Left JS_price">¥4688.00</span><span class="Right txt-count count">已售<span id="s3-26854">6255</span></span></div>
            </li>
                                                <li>
                <a href="http://www.meilele.com/category-shafa/goods-143104.html" target="_blank">
                    <img src="<%=basePath%>data/data_files/YKkxtD0+l8CT6mdTP0jUTosXyzGqRaYb484nDncYwHMBbKHbxCRZzLwm+l0evI9r4qKfgSIWKfJXNOwY3VO_xQ==.jpg" title="典藏珍品 优质橡胶木框架 带储物扶手设计 高档纺丝布艺转角沙发（左右通用）" alt="典藏珍品 优质橡胶木框架 带储物扶手设计 高档纺丝布艺转角沙发（左右通用）" width="264" height="174">
                <p class="txt-title">典藏珍品 优质橡胶木框架 带储物扶手设计 高档纺丝布艺转角沙发（左右通用）</p></a>
                <div class="tag-div"><span data-id="143104" id="p3-143104" class="txt-price Left JS_price">¥6200.00</span><span class="Left txt-tag">限时降800</span><span class="Right txt-count count">已售<span id="s3-143104">572</span></span></div>
            </li>
                                                <li>
                <a href="http://www.meilele.com/category-chuang/goods-104066.html" target="_blank">
                    <img src="<%=basePath%>data/data_files/YKkxtD0+l8CT6mdTP0jUTosXyzGqRaYb484nDncYwHMthP9JiHWrZ1cijUF3GHAoz5keDnAd1Wjso2XpT6K+3g==.jpg" title="精英生活 高档纯棉植绒软床 可全拆洗贴心设计1.8米床" alt="精英生活 高档纯棉植绒软床 可全拆洗贴心设计1.8米床" width="264" height="174">
                <p class="txt-title">精英生活 高档纯棉植绒软床 可全拆洗贴心设计1.8米床</p></a>
                <div class="tag-div"><span data-id="104066" id="p3-104066" class="txt-price Left JS_price">¥1960.00</span><span class="Right txt-count count">已售<span id="s3-104066">454</span></span></div>
            </li>
                                                <li>
                <a href="http://www.meilele.com/category-shafa/goods-177228.html" target="_blank">
                    <img src="<%=basePath%>data/data_files/YKkxtD0+l8CT6mdTP0jUTosXyzGqRaYb484nDncYwHN8+EB1H6cXAPwLovIsRKN1_tk40ra_ZDraoF2RvqiVWQ==.jpg" title="豪门精品 高档优质布艺 精美实木手工雕刻工艺转角沙发（左右通用）" alt="豪门精品 高档优质布艺 精美实木手工雕刻工艺转角沙发（左右通用）" width="264" height="174">
                <p class="txt-title">豪门精品 高档优质布艺 精美实木手工雕刻工艺转角沙发（左右通用）</p></a>
                <div class="tag-div"><span data-id="177228" id="p3-177228" class="txt-price Left JS_price">¥7408.00</span><span class="Left txt-tag">限时降800</span><span class="Right txt-count count">已售<span id="s3-177228">1544</span></span></div>
            </li>
                                                <li>
                <a href="http://www.meilele.com/category-canzhuo/goods-250433.html" target="_blank">
                    <img src="<%=basePath%>data/data_files/YKkxtD0+l8CT6mdTP0jUTosXyzGqRaYb484nDncYwHOkcmpfEQJJKRVYQAHcQI+Z67ymCuPFYdYozRHkniO+IA==.jpg" title="自然文纹 达人挚爱 随心所变可伸缩方圆桌" alt="自然文纹 达人挚爱 随心所变可伸缩方圆桌" width="264" height="174">
                <p class="txt-title">自然文纹 达人挚爱 随心所变可伸缩方圆桌</p></a>
                <div class="tag-div"><span data-id="250433" id="p3-250433" class="txt-price Left JS_price">¥2660.00</span><span class="Right txt-count count">已售<span id="s3-250433">210</span></span></div>
            </li>
                           
        </ul>
    </div>
    
 
    
    <div class="popular-boutique">
        <div class="title-h3"><h3>人气精品</h3></div>
        <ul class="clearfix" id="JS_popular">
                    <li>
                <a href="http://www.meilele.com/category-chuang/goods-21994.html" target="_blank"><img width="222" height="148" src="<%=basePath%>data/data_files/YKkxtD0+l8CT6mdTP0jUTosXyzGqRaYb484nDncYwHPyLu4DbZcxFiozC3WbFjMJW7ZZ6qgEhsM8vB9YMcAuzA==.jpg" title="名师力作 玫瑰描银雕花1.8米床 " alt="名师力作 玫瑰描银雕花1.8米床 ">
                <p class="txt-title">名师力作 玫瑰描银雕花1.8米床 </p></a>
                <div class="bot-div"><span class="th-price">特惠价</span><span data-id="21994" id="p4-21994" class="th-price price JS_price">¥4039.00</span><span class="Right count">已售<span id="s4-21994">19160</span></span><a href="http://www.meilele.com/category-chuang/goods-21994.html" target="_blank" class="look">去看看</a></div>
            </li>
                    <li>
                <a href="http://www.meilele.com/category-chuang/goods-209174.html" target="_blank"><img width="222" height="148" src="<%=basePath%>data/data_files/YKkxtD0+l8CT6mdTP0jUTosXyzGqRaYb484nDncYwHNxeFMyjiPbB2H4xWm7CrEABVHfXI63FjfQ5t+jlK6g7g==.jpg" title="店长力荐 皮艺拉扣软包靠背设计 美观大气菱形雕刻纹路 环保吸塑工艺 1.8米床板床 " alt="店长力荐 皮艺拉扣软包靠背设计 美观大气菱形雕刻纹路 环保吸塑工艺 1.8米床板床 ">
                <p class="txt-title">店长力荐 皮艺拉扣软包靠背设计 美观大气菱形雕刻纹路 环保吸塑工艺 1.8米床板床 </p></a>
                <div class="bot-div"><span class="th-price">特惠价</span><span data-id="209174" id="p4-209174" class="th-price price JS_price">¥2226.00</span><span class="Right count">已售<span id="s4-209174">493</span></span><a href="http://www.meilele.com/category-chuang/goods-209174.html" target="_blank" class="look">去看看</a></div>
            </li>
                    <li>
                <a href="http://www.meilele.com/category-canzhuo/goods-291793.html" target="_blank"><img width="222" height="148" src="<%=basePath%>data/data_files/YKkxtD0+l8CT6mdTP0jUTosXyzGqRaYb484nDncYwHPILS8RvESHmGhn3cUT5H2Q9S2qZoYJBpJSCQWvbTydJw==.jpg" title="掌上明珠 独特双色拼接设计 黑白亮光漆钢化玻璃台面1.3米餐厅套装（1餐桌+4餐椅）" alt="掌上明珠 独特双色拼接设计 黑白亮光漆钢化玻璃台面1.3米餐厅套装（1餐桌+4餐椅）">
                <p class="txt-title">掌上明珠 独特双色拼接设计 黑白亮光漆钢化玻璃台面1.3米餐厅套装（1餐桌+4餐椅）</p></a>
                <div class="bot-div"><span class="th-price">特惠价</span><span data-id="291793" id="p4-291793" class="th-price price JS_price">¥2904.00</span><span class="Right count">已售<span id="s4-291793">684</span></span><a href="http://www.meilele.com/category-canzhuo/goods-291793.html" target="_blank" class="look">去看看</a></div>
            </li>
                    <li>
                <a href="http://www.meilele.com/category-dianshigui/goods-20517.html" target="_blank"><img width="222" height="148" src="<%=basePath%>data/data_files/YKkxtD0+l8CT6mdTP0jUTosXyzGqRaYb484nDncYwHNHNciBWbo2fKnuRrY6omp0RqrbVwureBLBRqxrT7NYJA==.jpg" title="端庄典雅 纹理清晰客厅地柜 简约雕花电视柜" alt="端庄典雅 纹理清晰客厅地柜 简约雕花电视柜">
                <p class="txt-title">端庄典雅 纹理清晰客厅地柜 简约雕花电视柜</p></a>
                <div class="bot-div"><span class="th-price">特惠价</span><span data-id="20517" id="p4-20517" class="th-price price JS_price">¥4069.00</span><span class="Right count">已售<span id="s4-20517">10295</span></span><a href="http://www.meilele.com/category-dianshigui/goods-20517.html" target="_blank" class="look">去看看</a></div>
            </li>
                    <li>
                <a href="http://www.meilele.com/category-shafa/goods-330145.html" target="_blank"><img width="222" height="148" src="<%=basePath%>data/data_files/YKkxtD0+l8CT6mdTP0jUTosXyzGqRaYb484nDncYwHMIwhJKA353soSvZjI5sGfIt5wI63MdB8oP2KyEU5jr0Q==.jpg"  title="畅享自然温馨 清新撞色拼接布艺沙发套装（1+2+3）" alt="畅享自然温馨 清新撞色拼接布艺沙发套装（1+2+3）">
                <p class="txt-title">畅享自然温馨 清新撞色拼接布艺沙发套装（1+2+3）</p></a>
                <div class="bot-div"><span class="th-price">特惠价</span><span data-id="330145" id="p4-330145" class="th-price price JS_price">¥8978.00</span><span class="Right count">已售<span id="s4-330145">27</span></span><a href="http://www.meilele.com/category-shafa/goods-330145.html" target="_blank" class="look">去看看</a></div>
            </li>
                    <li>
                <a href="http://www.meilele.com/category-shafa/goods-310051.html" target="_blank"><img width="222" height="148" src="<%=basePath%>data/data_files/YKkxtD0+l8CT6mdTP0jUTosXyzGqRaYb484nDncYwHM2pV_OaLvE3QIkPpNJF7woXZuetcG+QLjB6U8BR09PAS2bWwymfleqy9DCRihehal1qth8xrIfsNwYyBTvvZLW.jpg" title="沙发 休闲舒适 布艺L型简约客厅 客厅小户型组合可拆洗布艺 左右互换沙发（1+2+1+脚踏）" alt="沙发 休闲舒适 布艺L型简约客厅 客厅小户型组合可拆洗布艺 左右互换沙发（1+2+1+脚踏）">
                <p class="txt-title">沙发 休闲舒适 布艺L型简约客厅 客厅小户型组合可拆洗布艺 左右互换沙发（1+2+1+脚踏）</p></a>
                <div class="bot-div"><span class="th-price">特惠价</span><span data-id="310051" id="p4-310051" class="th-price price JS_price">¥3399.00</span><span class="Right count">已售<span id="s4-310051">147</span></span><a href="http://www.meilele.com/category-shafa/goods-310051.html" target="_blank" class="look">去看看</a></div>
            </li>
                    <li>
                <a href="http://www.meilele.com/category-yigui/goods-111868.html" target="_blank"><img width="222" height="148" src="<%=basePath%>data/data_files/YKkxtD0+l8CT6mdTP0jUTosXyzGqRaYb484nDncYwHOWbMmT0fuokSNvlGlDN3411p+Q8BOzEHroscqhCxsI4A==.jpg" title="质朴大气四门衣柜" alt="质朴大气四门衣柜">
                <p class="txt-title">质朴大气四门衣柜</p></a>
                <div class="bot-div"><span class="th-price">特惠价</span><span data-id="111868" id="p4-111868" class="th-price price JS_price">¥2280.00</span><span class="Right count">已售<span id="s4-111868">450</span></span><a href="http://www.meilele.com/category-yigui/goods-111868.html" target="_blank" class="look">去看看</a></div>
            </li>
                    <li>
                <a href="http://www.meilele.com/category-shafa/goods-324431.html" target="_blank"><img width="222" height="148" src="<%=basePath%>data/data_files/YKkxtD0+l8CT6mdTP0jUTosXyzGqRaYb484nDncYwHMZ8Im6Hof9YQpQLiv5MMQeQJWnyK0FAHPKrF0y06G7nBe7PDwClS8YW8sgy9zcbFO5LiTW++6JMXsMm_GguRGo.jpg"  title="海森堡Heisenberg沙发现代风格 舒适真皮沙发客厅组合现代休闲皮艺沙发 带储物功能L型皮艺转角沙发" alt="海森堡Heisenberg沙发现代风格 舒适真皮沙发客厅组合现代休闲皮艺沙发 带储物功能L型皮艺转角沙发">
                <p class="txt-title">海森堡Heisenberg沙发现代风格 舒适真皮沙发客厅组合现代休闲皮艺沙发 带储物功能L型皮艺转角沙发</p></a>
                <div class="bot-div"><span class="th-price">特惠价</span><span data-id="324431" id="p4-324431" class="th-price price JS_price">¥7800.00</span><span class="Right count">已售<span id="s4-324431">77</span></span><a href="http://www.meilele.com/category-shafa/goods-324431.html" target="_blank" class="look">去看看</a></div>
            </li>
                    <li>
                <a href="http://www.meilele.com/category-chuang/goods-329765.html" target="_blank"><img width="222" height="148" src="<%=basePath%>data/data_files/YKkxtD0+l8CT6mdTP0jUTosXyzGqRaYb484nDncYwHNoJOsIGlxObALyJ1+XdtTrYda01ZvHCrn+KiaIYCpkoQ==.jpg"  title="简约大气沉稳色调高箱床  高屏床头设计1.8米双人高箱床" alt="简约大气沉稳色调高箱床  高屏床头设计1.8米双人高箱床">
                <p class="txt-title">简约大气沉稳色调高箱床  高屏床头设计1.8米双人高箱床</p></a>
                <div class="bot-div"><span class="th-price">特惠价</span><span data-id="329765" id="p4-329765" class="th-price price JS_price">¥3880.00</span><span class="Right count">已售<span id="s4-329765">6</span></span><a href="http://www.meilele.com/category-chuang/goods-329765.html" target="_blank" class="look">去看看</a></div>
            </li>
                    <li>
                <a href="http://www.meilele.com/category-shafa/goods-329559.html" target="_blank"><img width="222" height="148" src="<%=basePath%>data/data_files/YKkxtD0+l8CT6mdTP0jUTosXyzGqRaYb484nDncYwHPZ2Q3LGnLWcORPxL3aEwCrbl0_fV8XffALENj2qxY75MAAp+Y2DvQAoxrBA9EY9d1ZwP+S_zVcVrV+ieJt3VVf.jpg" title="宜家家具 可拆洗 储物沙发床 百变造型 多功能布艺沙发床 懒人沙发 时尚简约 转角沙发 布艺沙发 休闲沙发床组合 客厅实木框架沙发" alt="宜家家具 可拆洗 储物沙发床 百变造型 多功能布艺沙发床 懒人沙发 时尚简约 转角沙发 布艺沙发 休闲沙发床组合 客厅实木框架沙发">
                <p class="txt-title">宜家家具 可拆洗 储物沙发床 百变造型 多功能布艺沙发床 懒人沙发 时尚简约 转角沙发 布艺沙发 休闲沙发床组合 客厅实木框架沙发</p></a>
                <div class="bot-div"><span class="th-price">特惠价</span><span data-id="329559" id="p4-329559" class="th-price price JS_price">¥2900.00</span><span class="Right count">已售<span id="s4-329559">14</span></span><a href="http://www.meilele.com/category-shafa/goods-329559.html" target="_blank" class="look">去看看</a></div>
            </li>
                </ul>
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
    
</body></html>