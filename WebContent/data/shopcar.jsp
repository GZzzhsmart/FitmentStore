<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="SQLBean.UserBean"%>
<%@page import="SQLBean.ShoppingcarVo"%>
<%@page import="SQLBean.HomeVo"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0049)http://www.meilele.com/flow/?step=cart&rel=header -->
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><script async="true" type="text/javascript" src="./我的购物车_files/event" data-owner="criteo-tag"></script><script type="text/javascript" async="" src="./我的购物车_files/mv.js"></script><script type="text/javascript" async="" src="./我的购物车_files/mba.js"></script><script charset="utf-8" src="./我的购物车_files/v.js"></script><script src="./我的购物车_files/x.js"></script><script src="./我的购物车_files/hm.js"></script>

<meta http-equiv="Expires" content="0">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Pragma" content="no-cache">
<title>我的购物车</title>
<link rel="shortcut icon" href="http://image.meilele.com/favicon.ico">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/mll.common.new.min.css"><link href="${pageContext.request.contextPath }/css/flow2014.min.css" rel="stylesheet" type="text/css">
<style>.goods_item {border-top:1px dashed #eee}#JS_cart_body_1 tr:last-child {border-bottom:1px dashed #eee}</style>
<script type="text/javascript" async="" defer="" src="${pageContext.request.contextPath }/js/dc.js"></script><script type="text/javascript" async="" src="http://www.meilele.com/solr_api/jmll/advert/get.do?callback=_MLL_AD_INIT_FN&amp;url=http%3A%2F%2Fwww.meilele.com%2Fflow%2F%3Fstep%3Dcart%26rel%3Dheader&amp;adCode=ad_group_2,ad_group_10,ad_group_1,ad_group_7,ad_group_3,ad_group_4,center_ad,rb_remind_ad,ad_group_11,ad_group_12,ad_group_13,ad_group_14&amp;cityId=0&amp;tagName=%E6%A0%87%E9%A2%98xx14%2Cdefaultxx6%2C%E6%A0%87%E7%AD%BE_%E5%BA%8Axx6%2C%E6%A0%87%E7%AD%BE_%E6%B2%99%E5%8F%91xx5%2C%E6%A0%87%E7%AD%BE_%E9%A4%90%E6%A1%8Cxx3%2C%E6%A0%87%E7%AD%BE_%E9%AB%98%E6%A1%A3%E5%BA%8Axx2%2C%E6%A0%87%E7%AD%BE_%E5%84%BF%E7%AB%A5%E6%88%BFxx1%2C%E6%A0%87%E7%AD%BE_%E9%AB%98%E6%A1%A3%E5%AE%B6%E5%85%B7xx1&amp;_1496143500071"></script><script type="text/javascript" async="" src="${pageContext.request.contextPath }/js/getMiniActivityWebPage"></script><script type="text/javascript" async="" src="${pageContext.request.contextPath }/js/ocl.invoke.min.js"></script><script type="text/javascript" async="" src="${pageContext.request.contextPath }/js/recad.min.js"></script><script src="./我的购物车_files/common.min.js"></script>
<script>window.M = window.M || {};M.__IMG = 'http://image.meilele.com';if(window.$ && window.$.addToCart)M.addToCart = $.addToCart</script>
<script>if(/ipad_from=1/.test(location.search+location.hash+document.cookie)||window._ipad_from){window._ipad_from=true;window.__notAd=1;window._not_back_to_top=true;}window.getCookie=function(a){var e;if(document.cookie&&document.cookie!==""){var d=document.cookie.split(";");var f=d.length;for(var c=0;c<f;c++){var b=d[c].replace(/(^\s*)|(\s*$)/g,"");if(b.substring(0,a.length+1)==(a+"=")){e=decodeURIComponent(b.substring(a.length+1));break;}}}return e;};window.setCookie=function(a,e,d,c,g){d=d||365;g=g||"/";var b=location.host.split(".");if(b.length==3){b.shift();}c=c?";domain="+c:(";domain=."+(b.join(".")));var f=new Date();f.setTime(f.getTime()+parseInt(d,10)*24*60*60*1000);document.cookie=a+"="+encodeURIComponent(e)+(d=="session"?"":";expires="+f.toGMTString())+c+";path="+g;};window._mllga=function(a){var g=(Math.random()+"").replace("0.","").substr(0,9)-0;var e=parseInt(new Date()/1000);var d=(Math.random()+"").replace("0.","").substr(0,9)-0;var f={utmwv:"5.6.0dc",utms:1,utmn:g,utmhn:location.host,utme:"8(COOKIE)9("+document.cookie.replace(/[()]/g,"")+")11(2)",utmcs:"UTF-8",utmdt:"notset",utmhid:e,utmp:location.host+location.pathname+location.search,utmht:+new Date(),utmac:"UA-48396005-1",utmcc:"__utma=165027242."+d+"."+e+"."+e+"."+e+".1;+__utmz=165027242."+e+".1.1.utmcsr=(direct)|utmccn=(direct)|utmcmd=(none)"};for(var c in a){if(a[c]!==undefined){f[c]=a[c];}}var h=[];for(var c in f){h.push(c+"="+encodeURIComponent(f[c]));}var b=new Image();b.src="http://stats.g.doubleclick.net/__utm.gif?"+h.join("&");};(function(){window.onerror=function(e,d,b){window.onerror._root=window.onerror._root||{};var c=encodeURIComponent(e+"").replace(/\W/g,"");if(window.onerror._root[c]){return;}_mllga({utme:"8(COOKIE)9("+document.cookie.replace(/[()]/g,"")+")11(2)",utmdt:navigator.userAgent+"||"+e+"||"+d+"||"+b,utmac:"UA-48396005-1"});window.onerror._root[c]=true;};var a=function(){setTimeout(function(){window._gaq=window._gaq||[];window._ana=window._ana||[];if(_ana.push==Array.prototype.push){throw new Error("亲，_ana未初始！");}if(_gaq.push==Array.prototype.push){throw new Error("亲，_gaq未初始！");}},10000);};if(window.addEventListener){window.addEventListener("load",a,false);}else{if(window.attachEvent){window.attachEvent("onload",a);}}})();(function(){if(window.__notAd){return;}var c=document.createElement("script");c.type="text/javascript";c.async=true;var b=document.getElementsByTagName("script")[0];var a=new Date();c.src="http://image.meilele.com/js/recad.min.js?"+a.getFullYear()+a.getMonth()+a.getDate();b.parentNode.insertBefore(c,b);})();window._gaq=window._gaq||[];window.MLLgaq=window.MLLgaq||[];window._onReadyList=window._onReadyList||[];window._ana=window._ana||[];_ana.baseTime=_ana.baseTime;_gaq.push(["_setAccount","UA-10173353-1"]);_gaq.push(["_setDomainName","meilele.com"]);(function(i){if(getCookie("MLL_CID")){_gaq.push(["_setCustomVar",1,"CID",getCookie("MLL_CID"),2]);}var l=(location.search+"").replace("?","").split("&");var g={};for(var b=0,a=l.length;b<a;b++){var j=l[b].split("=");g[j[0]]=j[1];}var h=((location.hash+"").replace("#","")).split("#")[0].split("&");for(var b=0,a=h.length;b<a;b++){var j=h[b].split("=");h[j[0]]=j[1];}var f="";if(location.pathname.indexOf("/category-9999/")>=0&&g.keywords){f=g.keywords;}else{if(h.kw||g.kw){f=h.kw||g.kw;}}try{f=decodeURIComponent(f);}catch(c){}if(f&&window._ana){_ana.push(["trackEvent","siteSearch",f]);}})(window);(function(){if(window._IS_GET_TAG){return;}window._IS_GET_TAG=true;var b="utag";var a=18;if(/^\/article/i.test(location.pathname)){b="atag";}window._onReadyList=window._onReadyList||[];_onReadyList.push(function(){$.ajax({url:"/java_api/jmll/tag/getTag.do?u="+encodeURIComponent(location.pathname),cache:true,dataType:"json",success:function(o){var e=$.cookie(b)||"";var n=o||{};var h={},i=[],c=[],j=[];var m=function(k){k=k-0;k="00"+k.toString(36);return k.substr(k.length-2,2);};e=e.split("*");for(var g=0,d=e.length;g<d;g++){if(e[g]&&e[g].length==5){var l=e[g].substr(0,3);var f=parseInt(e[g].substr(3,2),36);h[l]={key:l,number:f};i.push(h[l]);}}for(var g in n){if(h[g]){h[g].number+=n[g];}else{h[g]={key:g,number:n[g]};}h[g].thisPage=true;c.push(h[g]);}c.sort(function(p,k){return k.number-p.number;});for(g=0,d=c.length;g<d;g++){j.push(c[g].key+m(c[g].number));}for(g=0,d=i.length;g<d;g++){if(!i[g].thisPage){j.push(i[g].key+m(i[g].number));}}if(j.length>a){j.length=a;}$.cookie(b,j.join("*"),{expires:90,domain:".meilele.com",path:"/"});window._SITETAGS={tags:h,thisPageTag:n};if(window._SITETAGSCALLBACK){_SITETAGSCALLBACK(_SITETAGS);}}});});})();(function(){if(!window.getCookie("MLL_CID")||!window.getCookie("MA_si")){new Image().src="/_b.gif?_="+new Date().getTime().toString(36);}var b=parseInt(window.getCookie("_SC_"))||0,a=parseInt(window.getCookie("_SD_"))||0;if(!window.getCookie("_SC_")){new Image().src="/_c.gif?_="+new Date().getTime().toString(36);}else{!a&&window.setCookie("_SC_",b+1,3650,".meilele.com");}window.setCookie("_SD_",a+1,"session",".meilele.com");})();
<script>
$.__IMG = 'http://image.meilele.com' || 'http://image.meilele.com';
(function($){
	var lists = [
		[ 'checkPrize' , 'checkprize.min.js?0116g'],
		[ 'sendSms' , 'sendsms2.min.js?160307'],
		[ 'sendSmsGoods' , 'sendSmsGoods.min.js?20170205'],
		[ 'codeSms' , 'codesms.min.js?20170316'], // 二维码短信
		[ 'orderQuery' , 'orderquery.min.js?0116g'],
		[ 'addToCart' , 'addtocart.min.js?201508188'],
		[ 'costDownTip' , 'costdowntip.min.js?160823'],
		[ 'searchKey' , 'searchkey.min.js?20161103'],
		[ 'getComment' , 'getcomment.min.js?0801'],
		[ 'goodsComment' , 'goodscomment.min.js?0905'],
		[ 'quickBuy' , 'quickbuy.min.js?0812'],
		[ 'onlineVideo' , 'onlinevideo.min.js?0410'],
		// [ 'wholehouse' , 'mini_qwg.min.js?1205'],
		[ 'visitYBJ' , 'ybjvisit.min.js?0910'],
		[ 'mobileCaptcha','mobilecaptcha.min.js?060119'],
		[ 'shipRegion','ship_region.min.js?0715'],
		[ 'bonus','bonus.min.js?0520'],
		[ 'sendPrize','sendPrize.min.js?20160805'],
		// 发送购物车到手机
		[ 'cartSms','cartsms.min.js?0108'],
		// 红包预售
		['couponPresell', 'coupon_presell.min.js?20170205'],
        //城市选择
        ['cityLayer', 'cityLayer.min.js?20170321'],
        //老用户采集弹框
        ['oldClient', 'oldClient.min.js?20161125'],
        ['customBoxExtend','customBoxExtend.min.js?20170306'],
        //红包页面 红包
        ['redEnvelope','redEnvelope.min.js?20170205']
	];
	var kk = lists.length;
	for(var k = 0 ; k < kk ; k++) {
		var key  = lists[k][0];
		var file = lists[k][1];
		$[ key ] = (function( key , file ){
			return function(){
				var params = arguments;
                $.req( file , function(){
                    $[key].apply( $ , params );
                })
			}
		})( key , file );
	}
	//特殊
	$.showLoginBox = function(callback,refresh,phone_num){
		if ($.cookie("meilele_login") == "1" && $.cookie("ECS[username]") ) {
			if (typeof callback == "function"){
				callback({
					"username": $.cookie("ECS[username]"),
					"email": $.cookie("ECS[email]")
				});
			}
			return;
		}
		$.req( 'showloginbox.min.js?0428' , function(){
			$.showLoginBox( callback,refresh,phone_num );
		});
	}
    
	if( window._ipad_from ){
		$.addToCart = function(mainGoodsId,goodsData){
			if( goodsData ){
				var tmpH = [];
				for(var k in goodsData){
					var data = goodsData[k];
					if( $.isNumeric(data) ){
						tmpH.push( k+':'+data );
					} else {
						var tmp = [];
						tmp.push(k);
						tmp.push(data.number || 1);
						tmpH.push( tmp.join(':') );
					}
				};
				tmpH = tmpH.join(',');
				window.open("/addToCart/"+tmpH);
			}
		}
		$.cookie('ipad_from',1,{domain:location.host});
	}
})(jQuery);
</script>

<%
	UserBean user = (UserBean)session.getAttribute("user");
	ShoppingcarVo car = (ShoppingcarVo)session.getAttribute("car");
	HomeVo home = (HomeVo)session.getAttribute("home");
%>


<script>
    (function(){
        var that = this;
        if($.cookie('currentCity')) {
            return;
        }
        $.ajax({
            url:'http://api.map.baidu.com/location/ip?ak=R1CsBhbOHZyefZKArjicj741l7K36eyV',
            dataType: 'jsonp',
            success: function(json) {
                if(json && json.address) {
                    var addr = json.address.split('|')[2];
                    $.cookie('currentCity',addr,{
                        path: "/",
                        expires: 365,
                        domain: '.meilele.com'
                    });
                } else {
                    $.cookie('currentCity','北京');
                }
            },error: function() {
                $.cookie('currentCity','北京');
            }
        })
    })()
</script>
<script>
//老用户号码采集优化
(function(popout){
    window.oldClientPopout = popout;
    var s = document.createElement("script");s.type = "text/javascript";s.async = true;s.src = "http://image.meilele.com/js/ocl.invoke.min.js?20161122";
    var s0 = document.getElementsByTagName("script")[0];s0.parentNode.insertBefore(s, s0);
})('1');
</script>

<script>window.M = window.M || {};if($.addToCart)M.addToCart = $.addToCart</script><script type="text/javascript">
if( window._ipad_from ){
    window.__notAd = 1;
    window._ipad_from = 1;
    $.wholehouse = function(){};
    window.mchat = window.mchat || {};
    mchat.config = {notShow:1};
    window._MLL_AD_INIT_FN = function(){}; 
    window._not_back_to_top = true;
}
function flowFormatPrice(price,notYen){
    price = price || 0;
    return (price<0?'- ':'')+(notYen?'':'<span class="yen">&yen;</span>')+(((price<0?(0-price):price)+'').replace('&yen;','').replace('￥','')-0).toFixed(2);
}

function isEmptyObject(obj){
    for(var k in obj){
        return false;
    }
    return true;
}
function insertOption(selectObj , options ){
    var selected = false;
    selectObj.options.length = 0;
    for(var k = 0 , kk = options.length ; k < kk ; k++){
        selectObj.options[k] = new Option(  options[k].innerHTML || '' , options[k].value || '' );
        if( options[k].selected ) selected = k;
        if( options[k].title ) selectObj.options[k].setAttribute( 'title' , options[k].title );
    }
    if(selected >= 0 && selectObj.options[selected])selectObj.options[selected].selected = true;
}
function $$(id){
    var o = document.getElementById((id+'').replace('#',''));
    return o ? o : {};
}
</script>
<style type="text/css">.l .label{height: 19px;line-height: 19px;padding: 1px 3px;_padding-top:2px;background: #c9033b;color: #fff;margin-right: 6px;}.l .rose{margin-left: 6px;color: #c9033b;</style><style type="text/css">.gift_m .in{border:3px solid #bbb !important}.gift_m .htmls{padding: 0 !important}.gift_m .g_t_bar{background-color:#f1f1f1;padding:10px 8px;font-size:16px;border-bottom: 1px solid #e6e6e6}.gift_m .g_title{float:left;font-family:"微软雅黑"}.gift_m .g_close{float:right;font-weight:bold;color:#bbb;font-family:"黑体";cursor:pointer}.gift_m .g_content{height:270px;overflow:auto}.gift_m .g_list{padding: 10px 25px 8px 0;border-bottom: 1px solid #e6e6e6}.gift_m .g_cb,.gift_m .g_img,.gift_m .g_c{float:left;margin-left:10px}.gift_m .g_cb{margin-top:15px}.gift_m .g_n{float:right}.gift_m .g_c,.gift_m .g_n{line-height:45px}.gift_m .g_btn{text-align:left;padding: 14px 8px;}.gift_m .g_btn a {margin:0 10px;padding: 4px 12px;border:1px solid #bbb}.gift_m .g_btn a:hover {color: #333 !important;text-decoration:none}.gift_m .g_btn a.g_hover:hover {color: #bbb !important}.gift_m .g_btn .g_warn {color: #c9033b}.gift_tr td {padding: 4px}</style><script type="text/javascript" async="" src="./我的购物车_files/back_to_top.min.js"></script><script type="text/javascript" async="" src="http://cpro.baidu.com/cpro/ui/rt.js"></script><script type="text/javascript" async="" src="./我的购物车_files/stats"></script><script type="text/javascript" async="" src="./我的购物车_files/gdt.php"></script><script type="text/javascript" async="" src="./我的购物车_files/gdt(1).php"></script><script type="text/javascript" async="" src="./我的购物车_files/gdt(2).php"></script><script type="text/javascript" async="" src="./我的购物车_files/gdt(3).php"></script><script type="text/javascript" async="" src="./我的购物车_files/mvl.js"></script><script type="text/javascript" async="" src="./我的购物车_files/ld.js"></script><script type="text/javascript" async="" src="./我的购物车_files/gt.js"></script><style type="text/css">div.jiathis_style{width:180px;padding:10px;margin-left:-200px;margin-top:-30px;border-radius:3px!important;font-weight:normal;}div.jiathis_style a{display:inline-block;width:90px;height:20px;line-height: 20px;}.back_to_top{display:none;width:44px;right:0;position:fixed;z-index:100;bottom:0px;_position:absolute;_top:expression(eval(document.documentElement.scrollTop+document.documentElement.clientHeight-188));}.back_to_top .in_box{display:inline-block;width:44px;height:42px;overflow:hidden;background:url(http://image.meilele.com/images/zhuanti/upload/ttop_1389063073.gif) 0px -126px no-repeat;}.back_to_top_hover_zoom{cursor:pointer;height:43px;}.back_to_top .in_box.back_to_top_share{background-position:0 0}.back_to_top .in_box.back_to_top_lottery{background-position:0 -42px}.back_to_top .in_box.back_to_top_quiz{background-position:0 -84px}.back_to_top_hover .in_box{background-position:-44px -126px}.back_to_top_hover .in_box.back_to_top_share{background-position:-44px 0}.back_to_top_hover .in_box.back_to_top_lottery{background-position:-44px -42px}.back_to_top_hover .in_box.back_to_top_quiz{background-position:-44px -84px}.back_to_top_tip{position:absolute;margin-top:6px;padding-left:10px;background:#fff6ce;color:#d3033b;line-height:30px;width:62px;margin-left:-72px;border-top-left-radius:15px;border-bottom-left-radius:15px;display:none;font-family: "微软雅黑";font-size: 14px;font-weight: bold;}.back_to_top_hover .back_to_top_tip{display:block}.back_to_top_tip_cartact {position: absolute;width: 0;height:173px;opacity:0;filter:alpha(opacity=0);overflow: hidden;right: 36px;bottom:-1px;z-index:300;}.back_to_top_tip_cartact .arrow-r-out{position: absolute;display: block;right: -7px;top: 15px;width: 0;height: 0;border: solid 7px transparent;border-left: solid 8px #c9c9c9;border-right:solid 8px transparent;}.back_to_top_tip_cartact .arrow-r-in{position: absolute;display: block;right: -6px;top: 15px;width: 0;height: 0;border: solid 7px transparent;border-left: solid 8px #fff;border-right:solid 8px transparent;}.back_to_top_tip_cartact .close {display: block;position: absolute;width: 30px;height: 30px;top: 4px;right: 14px;background: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAA0AAAANCAYAAABy6+R8AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAHpJREFUeNqc0G0KgCAMBmAbnSwvUQeoO0n9r+6QZ6sNHKzh1ocwhrpH4W1SSuHrgtJXrPhivsPaGC20eYAEdqyZUcbqHciAZjKICwveAB206kUJqZ8a1JCGQQOZ3q/I5Yrll8EKBxxwWOGAA8xU4QFUIaPRARpOlwADAIRgJ+oRpmzyAAAAAElFTkSuQmCC) center center no-repeat;}.back_to_top_tip_cartact .in{width:552px;padding: 22px 0 3px 25px;border:solid 1px #c9c9c9;background:#fff;background:rgba(255,255,255,.95);-webkit-box-sizing:border-box;-moz-box-sizing:border-box;-ms-box-sizing:border-box;box-sizing:border-box;}.back_to_top_tip_cartact .in.min-in{width: 310px;padding-bottom:22px;}.back_to_top_tip_cartact .succ-txt{width:500px;padding-bottom: 16px;margin-bottom: 20px;border-bottom: dotted 1px #ccc;}.back_to_top_tip_cartact .succ-txt.succ-txt-nob{padding-bottom:0;margin-left:10px;margin-bottom:2px;border:none;}.back_to_top_tip_cartact .succ-txt .icon-succ{float:left;width:38px;height: 38px;margin-right: 12px;background: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACYAAAAmCAYAAACoPemuAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAA1NJREFUeNrUmMtrE1EUxidTsVTNiOhCK7ipqUqhrmwVdJEKgq4qilrwAZVWBTUk1f/AlVpxqogWrCj4KL4q+KAVG1z52IiFarWiUPCxaBETqKRQ9TvhuzDUzGQmmUn1wI87aXPP+XLnnnMfoUjvdu1ftBkF9qsADaQWVIO55Ad5DwZAEjwBP70ECHkcsRqQAFsowq2J0NugHbzxU9giOpUv6/zbS/CQ7TswRgEieD5YBurAJrZiv0A3aANfixXWBM4Dg6+jC5hg2MOILQUxsJfTIAUOgGt2HXQn0eAUO4uoe2A5OOhRlNgHcIj9e+jvKv2HvAiTL18CcZAB+0AjGCky2aT/ZvrL0P9lUOZW2Emwh0O+EXT6XA066Vf87wKn3Qjbwcyb4K9LBlSqkvQ/wenR5CSsElzgs8yJ/oDraD/jaEywxXbCTnBi9gTw+pxeq0qI47nKRQ0rdYbZM6KVzpaAIVDOlWTQOmIJjmBXiUWpbL3I+HHrq5wFtvLZDCi4rAi3wDGb/3ew3SZ6lLAo3/GLAoqnW1G9XGPX23xnmPHDsjlQwhrY9gUoqh585HprZyp+VAmrZfs8YFHRPPP3GduVSliE7dtpFKUxM7N6lLB5bMemUZTYqNKjhBlsUw6dZnOfFZQosTTbsD5FkOHQ6TH4BNbmEdVXoCiNGZkVqIR9Z+s0Iq/Y8ZGNOCWqrkBRYguUHt1SQ8RWOHQ6DK6AOTnE+SFK41KY1aOEDbBd7dBpEjTnEOeXKLE1bF/rlr2R2IY8HXOJe+qTKGv8pNpdyFr5jXOo2sWyVMbFfjc/+yEqwrOoZOZCNWLj4CafYy6cqJE7x9WiWFFqDmvUMf5f7McGwQ2e+0yttGYybjd1/LW1PspiK0e1lhKJamG8FOPn3PN/Afv5fBasC1iUlJszfJa4n52Ob9d5zpsJ7nNiB2Hi9wHnlcm4eQ+8CdYqg7Wq1WdRrfRrME7c7Un8N8tBB3+RnDXvMnuKzb479FdO/82M5/pSZZI1bSeLXiNTWpxVeRRUxX5DPH2n6TfGOAXfj1XyPsPpfmyUmWVwlyD3Y6t4R1HPixp1P3aEiebrjWIbj3phD/3SPLq1qzrl91Wnsgoew6bewRocNesdrNxPeL6D/SPAAA5/5ZufJys7AAAAAElFTkSuQmCC) 0 0 no-repeat;}.back_to_top_tip_cartact .succ-txt dl{float: left;}.back_to_top_tip_cartact .succ-txt dl dt{height: 20px;margin-bottom:1px;font-size: 15px;line-height: 20px;font-weight:bold;color: #333;}.back_to_top_tip_cartact .succ-txt.succ-txt-nob dl dt{margin-top:10px;}.back_to_top_tip_cartact .succ-txt dl dd{width:448px;line-height: 20px;color:#666;overflow:hidden;white-space:nowrap;}.back_to_top_tip_cartact .succ-txt .label{display: inline-block;height: 20px;background: #f96b6f;color: #fff;padding:0 4px;}.back_to_top_tip_cartact .succ-txt a{color: #666;}.back_to_top_tip_cartact .succ-txt a.red{color: #cf000e;}.back_to_top_tip_cartact table{width: 430px;margin-left:25px;color:#666;}.back_to_top_tip_cartact table td{white-space: nowrap;line-height:14px;}.back_to_top_tip_cartact table td.proc-middle{width:330px;height: 66px;text-align: center;vertical-align: top;}.back_to_top_tip_cartact table td .strong{font-weight: bold;}.back_to_top_tip_cartact .proc-bar{width: 310px;position: relative;}.back_to_top_tip_cartact .proc-bar .label {display: inline-block;height: 22px;padding: 0 10px;background: #fff7f0;color: #ff6600;border: solid 1px #ffd7b4;border-radius: 10px;line-height: 22px;}.back_to_top_tip_cartact .proc-bar i.arrow-d-out {position: absolute;display: block;top: 22px;left: 0;width: 0;height: 0;margin-left: 153px;border: solid 6px transparent;border-top: solid 6px #ffd7b4;}.back_to_top_tip_cartact .proc-bar i.arrow-d-in {position: absolute;display: block;top: 21px;left: 0;width: 0;height: 0;margin-left: 153px;border: solid 6px transparent;border-top: solid 6px #fff7f0;}.back_to_top_tip_cartact .proc-bar .proc-bar-bg {position: absolute;top: 33px;left: 0;width: 100%;height: 10px;background: #dadada;border-radius: 5px;}.back_to_top_tip_cartact .proc-bar .proc-bar-light {position: absolute;top: 33px;left: 0;width: 100%;height: 10px;background: #ffa04d;border-radius: 5px;z-index: 1;}.back_to_top_hover_zoom.cart-tip{height:0;}.back_to_top .in_box.back_to_top_cart{position:relative;background:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAFgAAAAqCAIAAAC4HQupAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyFpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuNS1jMDE0IDc5LjE1MTQ4MSwgMjAxMy8wMy8xMy0xMjowOToxNSAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENDIChXaW5kb3dzKSIgeG1wTU06SW5zdGFuY2VJRD0ieG1wLmlpZDozRDE4MzEzN0E2MjUxMUU2Qjk5OEMzM0M1NDQyMTdBOSIgeG1wTU06RG9jdW1lbnRJRD0ieG1wLmRpZDozRDE4MzEzOEE2MjUxMUU2Qjk5OEMzM0M1NDQyMTdBOSI+IDx4bXBNTTpEZXJpdmVkRnJvbSBzdFJlZjppbnN0YW5jZUlEPSJ4bXAuaWlkOjNEMTgzMTM1QTYyNTExRTZCOTk4QzMzQzU0NDIxN0E5IiBzdFJlZjpkb2N1bWVudElEPSJ4bXAuZGlkOjNEMTgzMTM2QTYyNTExRTZCOTk4QzMzQzU0NDIxN0E5Ii8+IDwvcmRmOkRlc2NyaXB0aW9uPiA8L3JkZjpSREY+IDwveDp4bXBtZXRhPiA8P3hwYWNrZXQgZW5kPSJyIj8+63rpIAAAA+9JREFUeNrsml9IU2EUwL3TLcfMzenUOWciiOYUp+IsCLKeivQpl/NFkPJPT1nSgz724IvRk9hg/ZF6iIyIaFAPahKJEJQjXMkQZ811Zbk/zrl2d9V17i4Y2Mt37/2cEfdwuZyH87nz/XbOd875JuH3+9MOW77nth26D5I0UUQQIggRhAhCBCGCEEGIIARJxj/u33HXoyPlxaxOk35P753wq7mUgujv7ydJktVzcnK6u7sbGhpSD4ImA3sgpNrcY4+HvpR27IQiqUsNlUq1pweDwdHR0a2trdSDWDrd7yDOsk/0oytdqdBcu3gQH0SgDF2Dg4PLy8tms7mt7UCmI8ShK7e3VW+9zvWP7/6iaO96ZHreN/KUWvIKAjE5OWmz2bh6IJPJ1Gp1dXV1a2trYWGhcBCyYwVVK0/4Z5nH5yyxCDosa2treXxwPB5fS8r8/PzY2JjwwIl7fLuxuCRT9jm7ZXczir4w01BaufAgXaMSWjXy8vKkUilN0+Pj43K5HN2D1dXVgYGBcDiMJ4V2E/GVtczKEqlWTXEBobrUzHB0k0L7CIIg8vPzQQmFQpw8n5tjSh27Fk8R8a4z5aNYw2kVCyLy1oGhoYIKCm+u11ksCIPBgAvENuln6yiHvKgsgQeUjZez2EBwighvUkBpbGzE2FYwIIo4gMi+cALeO8HNyAy+iAgEAugewBkJb4VCUVVVhQ3E6s8kiDz0JVlnjEw4vHifiG9jAAGFkO2s0D1wOp3wNplMGRnYGnk4LBkQOmQQBKE4ySTmhn0Oz9Cl0Wg4RUQikXC5XKDU19djbL2oZTJ5RqgR7XN7WtLVR0HZml3AM3QVFBRwOiOmpqYiEWYiqKiowAnC5YEIV5yqMSam0VdtTn3a9oXwgNBqtRDhi4uL7e3t6B5AW6lUKjGCAAqxBbe8vhy1yvhCoefvyKF72MZwoKDX691uN6I97L+pqclisWAfTODrBRCBh2+8A3eZJisaS1B0Su8jampqAERzc3NnZyc7SkC7mfp5FBBobpjVXefgQWlGYWZ1ma7iBAEI7Hb7TFJQmtGysrLh4WHsIGJfv5GDtsJbXTB0IFwzEBJFJuaI0Ol0HR0dExMTMHSgVA2Kog4oKGCghufvPacrs/Y5gX6FQwj/ERj2HI3uH4Ggj8J+H/GnWTxv0t+/CYrn8kj49QfeNvxBOBwOq9UKSl9fn9Fo5G0jEIThxzN23KBJv7PIzNuGT0PFCuwwmBR2q7xt8F2wEXhseF/nQzpgseEnniu36bUAjOQQ9kJs+KcGzFHwPUskkp6enrq6Ot42AlPjQGJL/I8ZQanx/4kIQgQhghBBiCBEEOjyW4ABALBhuPBNg6YbAAAAAElFTkSuQmCC) 0 0;}.back_to_top_hover .in_box.back_to_top_cart{background-position:-44px 0;}.back_to_top .in_box.back_to_top_cart span{display:inline-block;position: absolute;top:2px;right:4px;height:16px;width:16px;line-height:16px;text-align:center;background: #cf000e;color:#fff;border-radius:8px;}.back_to_top_hover .in_box.back_to_top_cart span{background:#fff;color:#cf000e;}.back_to_top_tip.top_tip_cart{width:auto;margin-left:-80px;white-space:nowrap;}</style><style type="text/css">#JS_back_to_top .arrow-r-in,#JS_back_to_top .arrow-r-out{top:183px;}</style><style type="text/css">.FC_hide{height:0px!important;}#Fchat1,#Fchat2{font-size:12px;z-index:1500;position:fixed;_position:absolute;overflow:hidden}#Fchat1{width:100px;height:200px;right:5px;top:190px;_top:expression(eval(document.documentElement.scrollTop+190))px;}#Fchat1{background:url(http://image.meilele.com/images/201405/1399536980832.png) 0 0 no-repeat;_background:url(http://image.meilele.com/images/201405/1399536995592.gif) 0 0 no-repeat;}.FC_btns{background-image:url(http://image.meilele.com/images/blank.gif);position:absolute;cursor:pointer;z-index:1501;}#Fchat2{width:58px;height:127px;right:5px;top:190px;_top:expression(eval(document.documentElement.scrollTop+190))px;;background:url(http://image.meilele.com/images/201405/1401178094439.png) 0 0;_background:url(http://image.meilele.com/images/201405/140117892382.gif) 0 0;cursor:pointer}.FC_number{width:20px;height:20px;line-height:20px;text-align:center;color:#fff;font-weight:bold;font-family:Arial;border-radius:12px;background:#ff9030;color:#f5e0ce;border:2px solid #f5e0ce;display:none;font-size:14px;}.FC_number2{width:28px;}#FchatMsg{font-family:微软雅黑;display:none;z-index:1500;width:109px;height:66px;border:1px solid #fac3c9;border-radius:6px;background-color: #fff0f1;position: relative;padding:12px;position:fixed;right:75px; top:110px;_position:absolute;_top:expression(eval(document.documentElement.scrollTop+110))px;}#FchatMsg a{font-family:微软雅黑;font-weight:bold;font-size:13px;color:#e5134e}#FchatMsg a:hover{text-decoration:underline;}#FchatMsg.FC_min_msg{right:35px; top:110px;_position:absolute;_top:expression(eval(document.documentElement.scrollTop+110))px;}#FchatMsg .triangle{width:0px;height:0px;position: absolute;*zoom:1;}#FchatMsg .triangle_out{left:54px;top:90px;_top:96px;border-left:11px solid transparent;border-top:11px solid #fac3c9;_border-left-color:tomato;_filter:chroma(color=tomato)}#FchatMsg .triangle_in{left:54px;top:89px;_top:95px;border-left:10px solid transparent;border-top:10px solid #fff0f1;_border-left-color:tomato; _filter:chroma(color=tomato)}#FchatMsg .msg_title{font-size:14px;color:#333;}#FchatMsg .msg_content{font-size:14px;color:#666;font-weight:bold;margin-top:6px;width:119px;height:44px;overflow:hidden;}#FchatMsg .close_btn{float:right;font-size:14px;text-decoration:none;font-weight:normal;margin-right:-6px;font-family:SimSun;color:#666;}#FchatMsg .close_btn:hover{color:#C9033B;}#FchatMsg .faq_list{list-style: none;font-size: 12px;font-weight: normal;padding-bottom: 10px;line-height: 21px;margin-top: 0}#FchatMsg .faq_item{width:119px;overflow:hidden;white-space:nowrap;text-overflow:ellipsis}#FchatPoMsg {cursor: pointer;font-family: 微软雅黑;z-index: 1500;width: 108px;border: 1px solid #fac3c9;border-radius: 6px;background-color: #fff0f1;position: relative;padding: 12px;position: fixed;right: 116px;top: 302px;line-height: 20px;display:none;}#FchatPoMsg.FC_min_pomsg{top:246px;right:70px;}#FchatPoMsg .triangle { width: 0; height: 0; position: absolute;}#FchatPoMsg .triangle_out { right: -11px; top: 30px; _top: 96px; border-right: 11px solid transparent; border-top: 11px solid #fac3c9; _border-left-color: tomato; _filter: chroma(color=tomato);}#FchatPoMsg .triangle_in { right: -8px; top: 31px; _top: 96px; border-right: 10px solid transparent; border-top: 10px solid #fff0f1; _border-left-color: tomato; _filter: chroma(color=tomato);}#FchatPoMsg .expr-msg-close{position: absolute;top: -1px;right: -2px;font-size: 16px;display: inline-block; width: 20px; height: 20px;cursor:pointer;}#FchatPoMsg .expr-msg-close:hover{text-decoration:none;}</style></head>
<body>
<script type="text/javascript">
if( window._ipad_from){
    document.body.className = 'ipad_root';
}
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
    var M=M||{};M.getCookie=function(a){var e;if(document.cookie&&document.cookie!==""){var d=document.cookie.split(";");var f=d.length;for(var c=0;c<f;c++){var b=d[c].replace(/(^\s*)|(\s*$)/g,"");if(b.substring(0,a.length+1)==(a+"=")){e=decodeURIComponent(b.substring(a.length+1));break;}}}return e;};</script>

<!--如果不需要搜索和导航，在导入页面声明变量并且赋值 <大括号>assign var="xxx" value=1<大括号>-->


<div class="site-nav">
    <div class="w clearfix">
        <ul class="fl menu clearfix">
             <li class="Left banner last" id="JS_head_login">
            	<c:if test="<%=user.getUsername()==null %>">
            		<a target="_blank" href="<%=basePath %>data/login.jsp">请登录</a>&nbsp;&nbsp;
            	</c:if>
            	<c:if test="<%=user.getUsername()!=null %>">
            		<a target="_blank" href="<%=basePath %>data/login.jsp"><font color="blue"><%=user.getUsername()%></font></a>&nbsp;&nbsp;
            	</c:if>
            	<a href="<%=basePath %>userservlet?order=exit">退出</a>
            </li>
        </ul>
        <ul class="fr menu clearfix">
            <li class="fl fore">
                <a class="drop-title" href="javascript:void(0);" target="_blank">我的美乐乐<i class="drop-arrow" target="_blank"></i></a>
                <ul class="dropdown mll-self">
                    <li><a href="javascript:void(0);" target="_blank">我的订单</a>
                    </li>
                    <li><a href="javascript:void(0);" target="_blank">我的金币</a>
                    </li>
                    <li><a href="javascript:void(0);" target="_blank">我的红包</a>
                    </li>
                    <li><a href="javascript:void(0);" target="_blank">我的收藏</a>
                    </li>
                    <li><a href="javascript:void(0);" target="_blank">我要评价</a>
                    </li>
                    <li><a href="javascript:void(0);" target="_blank">申请保价</a>
                    </li>
                </ul>
            </li>
                        <li class="fl fore">
                <a class="drop-title" href="javascriptf:void(0);" target="_blank"><i class="i-scan"></i><span class="scan-word">关注乐家具</span><i class="drop-arrow"></i></a>
                <ul class="dropdown two-dimension">
                    <li>
                        <a href="javascript:;" class="JS_header_gaerCode" target="_blank">
                            <img src="<%=basePath %>images/1e9ba19486c3df7691b91cf9df5fb62c.jpg" width="132px" height="132px">
                        </a>
                    </li>
                </ul>
            </li>
            <li class="fl fore">
                <a class="drop-title" href="javascript:void(0);" target="_blank">帮助中心<i class="drop-arrow" target="_blank"></i></a>
                <ul class="dropdown help-center">
                    <li><a href="javascript:void(0);" target="_blank">购买流程</a>
                    </li>
                    <li><a href="javascript:void(0);" onclick="window.mchat&amp;&amp;window.mchat.openui&amp;&amp; window.mchat.openui()" rel="nofollow">在线帮助</a>
                    </li>
                    <li><a href="javascript:void(0);" target="_blank">企业采购</a>
                    </li>
                </ul>
            </li>
            <li class="fl banner">
                <a href="javascript:;" onclick="shoucang()">收藏本站</a>
            </li>
            <li class="fl banner last">
                
                <div id="JS_head_scoll_phone_527" class="JS_head_scoll_phone_527_active_br">
                    <div style="height:26px;line-height:26px;width:213px;padding:0 5px;padding-left:7px;overflow:hidden;"><span style="color: #999;">全国热线：</span><span class="hotLine">400 0098666</span>
                    </div>
                </div>
            </li>
        </ul>
    </div>
</div>


<style>
    .page-header .ph-contenter .drcode-phone {top:-25px!important}
</style>

<div class="w fl_header clearfix">
    <a class="Left" id="JS_flow_home_link" href="http://www.meilele.com/"><img class="fl_logo" src="<%=basePath %>images/face.png"></a>
    <div class="Right fl_step fl_step_cart"></div>
</div>


<script>
var _CHECKBOX_LIST = [];
</script>

<div class="flow_h2 w mt20 clearfix">
	<div class="Left text">我的购物车</div>
<form action="<%=basePath %>shopcarservlet?order=add" method="post" id="JS_pre_check_form" target="_self">
<table class="w mt20 cart_table" id="JS_list_table_cb">
	<tbody>
		<tr>
			<th style="width:36px">图片</th>
			<th style="" colspan="2">商品名称</th>
			<th style="width:8%">单价</th>
			<th style="width:15%">数量</th>
			<th style="width:8%">折扣</th>
			<th style="width:8%">金额</th>
			<th style="width:8%">优惠</th>
			<th style="width:10%">操作</th>
		</tr>
	</tbody>
		
	<tbody id="JS_cart_body_1">
		<tr id="JS_cart_tr_27442778" class="goods_item JS_cart_act_0" data-act_id="0" data-rec_id="27442778" data-goods_id="20429" data-goods_num="1" data-gift_kind="0">
		
		<td colspan="2">
			<a href="<%=basePath %>homeservlet?order=look&homeid=${home.homeid }" target="_blank"><img class="img" src="<%=basePath %>${car.pictureurl }" width="90" height="58" title="查看商品"></a>
		</td>
		<td class="l goods_gift_27442778" style="line-height:1.5;padding-left: 10px;">${car.username }</td>
		<td class="yen">${car.price }</td>
		<td class="m_goods_num" data-num="1">
			<div class="clearfix number">
				<a href="javascript:;" onclick="changGoodsCount(&#39;27442778&#39;,&#39;20429&#39;,-1,false,false);return false;" class="Left sub" title="减少数量"></a><input onchange="this.value=(this.value+&#39;&#39;).replace(/\D/g,&#39;&#39;);changGoodsCount(&#39;27442778&#39;,&#39;20429&#39;,this.value,true,false);" id="JS_goods_number_27442778" class="Left num JS_cart_num_0" value="1" data-show_price="2999.00" data-shop_price="2999" data-rec_id="27442778" data-goods_id="20429"><a class="Left add" href="javascript:;" onclick="changGoodsCount(&#39;27442778&#39;,&#39;20429&#39;,1,false,false);return false;" title="增加数量"></a><span class="Left unit">张</span>
			</div>
		</td>
		<td class="yen"><span name="goods_discount[27442778]" id="JS_goods_discount_27442778">¥<span class="JS_goods_discount">${car.discount }</span></span></td>
		<td class="yen">
			<div class="goods_subtotal">¥<span id="JS_goods_subtotal_27442778" class="JS_goods_subtotal">${car.price }</span></div>
		</td>
		<td></td>
		<td>
			<a class="color6" href="<%=basePath %>shopcarservlet?order=del&carid=${car.carid }" data-rec_id="27442778" onclick="return flow_confirm(this,&#39;确认删除？&#39;)">删除</a>
			<br><a class="color6" href="javascript:void(0);" onclick="collect_goods(20429,27442778);return false;">移入收藏夹</a>
		</td>
	</tr>
</tbody>
	<tbody class="pt_box">
		<tr>
			<td colspan="10" class="pt_name"></td>
		</tr>
	</tbody>
	<tbody class="cart_extra">
		<tr>
			<th colspan="2" class="lbn l"></th>
			<th colspan="2" class="lbn l">
				<a href="javascript:;" onclick="flow_confirm(this,&#39;您确认要删除选中的商品吗?&#39;,deleteSelect);" class="delete_cart_goods" title="删除选中商品"></a></th>
			<th align="right" colspan="6" class="lbn r"><span class="selected-tip">已选<b class="selected-number f14" id="JS_selected_goods_number">&nbsp;${car.homecount }&nbsp;</b>件商品</span><span class="color3">商品总价（不含运费）</span><span class="red yen total_price"><span class="f24">¥</span><span id="JS_after" class="f24">${car.price }</span></span>
			</th>
		</tr>
	</tbody>
	
</table>
</form>
<div class="cart_button w r mt20">
	<dd id="JS_panel_btn_box" is-can-buy="true" class="back">
		<button style="height: 39px; width: 149px; background-color: white ;font-size: 20px;border:red"><a href="<%=basePath %>homeservlet?order=list1" class="back"><font color="red">继续购物</font></a></button>
		<button style="height: 39px; width: 149px; background-color: white ;font-size: 20px;border:red"><a href="javascript:void(0);" class="check" onclick="goPreCheck();return false;"><font color="red">去结算</font></a></button>
	</dd>
</div>
<script type="text/javascript">
window.google_tag_params = {ecomm_pagetype: 'cart'};
// console.log('This from common');
function changGoodsCount(id,goodsId,n,isChange,maxNumber){
/*修改购物车商品数量
@param String goods.rec_id
@param  n Number 增量
@param {Boolean} isChange 是否直接使用数量 
@param {Nmuber} 可允许最大数量
return undefined
*/
	if( window._changeGoodsNumberAjaxLocker )return;
	if(!id || !goodsId)return;
	var goodsCountObj = $("#JS_goods_number_"+id);
	if(!goodsCountObj.length)return;
	var goodsCount = parseInt(goodsCountObj.val() );
	if(!goodsCount)goodsCount = 1;
	var toCount = goodsCount + n;
	if( isChange )toCount=n;
	if( toCount < 1 ) toCount = 1;
	if( toCount > 9999) toCount = 9999;
	if( maxNumber > 0 && toCount > maxNumber ){
		$.alert("该商品数量不足！");
		goodsCountObj.val( maxNumber );
		return false;
	}
	var goods_list = [];

	var act_id = $('#JS_cart_tr_'+id).data('act_id');
	if(act_id>0){
		var act_list = $('.JS_cart_act_'+act_id);
		if(act_list.length > 1) {
			act_list.each(function(){
				var _this = $(this);
				var rec_id = _this.data('rec_id');
				goods_list.push( rec_id + ':' + toCount);
			});
		} else {
			goods_list.push( id + ':' + toCount);
		}
	} else {
		goods_list.push( id + ':' + toCount);
	}
    /*新增请求参数giftId*/
    var dom_giftId = ".mgift_id_"+id;
    var m_giftId = $(dom_giftId);
    var giftId ='';
    var obj_gift ={};
    if(dom_giftId.length){
        for(var i=0;i<m_giftId.length;i++){
            giftId += $(m_giftId[i]).attr("giftId")+",";
        }
        giftId = giftId.substring(0,giftId.length-1);
        obj_gift = {'giftId':giftId}
    }
    /* end */
	goodsCountObj.val( "..." );
	window._changeGoodsNumberAjaxLocker = M.ajax({
		url:"/add_cart/?step=changeCart&goods="+goods_list.join('|'),
		cache:false,
        data: obj_gift,
		dataType:"json",
		success:function(json){
			window._changeGoodsNumberAjaxLocker = null;
			if(json.error){
				if(json.msg){
					$.alert(json.msg);
					goodsCountObj.val( goodsCount );
					return;
				}else{
					this.error();
				}
			}
			else{
				if(act_id && act_list.length > 1){
					act_list.each(function(){
						var _this = $(this);

						var rec_id = _this.data('rec_id');
                        
						var _input = $('#JS_goods_number_'+rec_id);

						_input.val( toCount );

						var show =  _input.data('show_price') - 0;
						var shop =  _input.data('shop_price') - 0;

						$("#JS_goods_subtotal_"+rec_id).html( (show * toCount).toFixed(2) );
						$("#JS_goods_discount_"+rec_id).html( '&yen;' + ( (shop-show) * toCount).toFixed(2) );
					});
				} else {
					goodsCountObj.val( toCount );

					var show =  goodsCountObj.data('show_price') - 0;
					var shop =  goodsCountObj.data('shop_price') - 0;

					// var rec_id = _this.data('rec_id');

					$("#JS_goods_subtotal_"+id).html( (show * toCount).toFixed(2) );
					$("#JS_goods_discount_"+id).html( '&yen;' + ( (shop-show) * toCount ).toFixed(2) );
				}
                $(".mgift_id_" + id).remove();
                $('.zp').remove();
                _gift.init();
				_gift.setGiftData(json);
				refreshPrice(id);
			};

			$('#JS_list_table_cb tr.JS_gift_goods').remove();
            if(json.mainGoodsToGiftsResults[0].error == 0) {
                var t_data = json.mainGoodsToGiftsResults[0].result[id];
                if(t_data&&t_data.hasGifts ){
                    _gift.tr(t_data.gifts, id)
                    
                    var gift_kind_checknumer = $('.mgift_id_'+id).length;
                    
                    if(gift_kind_checknumer == 0) {
                        $("#JS_gift_tip_"+id).text('您还未选择！')
                    } else {
                        $("#JS_gift_tip_"+id).text('')
                    }
                    
                    
                }
            } else if(json.mainGoodsToGiftsResults[0].error == 1){
                if(json.mainGoodsToGiftsResults[0].msg){
                    alert(json.mainGoodsToGiftsResults[0].msg)
                }
            }
		},
		error:function(){
			$.alert("修改数量失败，请稍候再试");
			window._changeGoodsNumberAjaxLocker = null;
		}
	})
}

function collect_goods(goodsId,recId){
	var h = '';
	h += '<div class="mask_scj"></div>';
	h += '<div class="mask_scj_box">';
	    h += '<div class="cont">';
	        h += '<h3>收藏<a href="javascript:;" id="JS_del_scj">×</a></h3>';
	        h += '<div class="mid">';
	            h += '<p>移入收藏夹<br><span>移入后商品将不在购物车中展示</span></p>';
	            h += '<div class="btn"><span class="ok JS_ok" data-goodsId="'+goodsId+'" data-recId="'+recId+'">确定</span><span class="no JS_no">取消</span></div>';
	        h += '</div>';
	    h += '</div>';
	h += '</div>';
	$('body').append(h);
	$('.mask_scj').height( $('body').height() );
	
	//百度推广
	if(window.goSpread){
		var rtTag = {};
		var data = {};
		var goods = [];

		goods.push({p_id : goodsId || '',p_price : arguments[1] || ''});
		data = {ecom_favor : {prod : goods}};
		rtTag.data = data;
		window.goSpread(['_trackRTEvent',rtTag]);
	}
}

$('body').on('click','.JS_ok',function(){
	var me = $(this);
	$.ajax({
		url:'/add_cart/?step=insertGoodsToCollect',
		cache:false,
		dataType:'json',
		data:'goodsId=' + me.attr('data-goodsId') + '&rec_id='+ me.attr('data-recId'),
		success:function(result){
			$('.mask_scj').remove();
			$('.mask_scj_box').remove();
			if(result.error == 2){//需要登录
				$.showLoginBox(function(){
					collect_goods(me.attr('data-goodsId'),me.attr('data-recId'));
				})
			}else if(result.error == 0){//收藏成功
				$.ajax({
					url: '/add_cart/?step=dropGoods&ajax=1&goods='+me.attr('data-recId'),
					dataType: 'json',
					success: function(json){
						if(json && json.error == 0){
							location.href = '/flow/?step=cart';
						}else{
							$.alert( json.msg || '删除失败');
						}
					}
				});
				alert(result.msg);
				window.location.reload();
			}else if(result.error == 3){//已存在
				alert('该商品已经存在于您的收藏夹中。');
				window.location.reload();
			}else{//收藏失败
				$.alert(result.msg);
			}
		},
		error:function(){
			$.alert('发生网络错误，请稍候再试。');
		}
	});
}).on('click','.JS_no',function(){
	$('.mask_scj').remove();
	$('.mask_scj_box').remove();
}).on('click','#JS_del_scj',function(){
	$('.mask_scj').remove();
	$('.mask_scj_box').remove();
})
	$.addToCart.removeUI = function(){
		$.hideMask();
		$.closeLightBox( $.addToCart.lightBoxId , $.addToCart.afterhandle );
	}
/*
*勾选列表如有团购商品弹出并罗列4928需求
*/	
window.showTgMask = false; //弹出弹框的状态
function showTgGoods(unTg,t){
	$.showMask(999);
	var h = '';
	h += '<div class="tgLightBox">';
		h += '<div class="in">';
			h += '<a href="javascript:;" class="del" id="JS_del">×</a>';
			h += '<p class="error">您的购物车中有团购商品，请点击下方商品型号去团购频道购买，可享受团购价哦！</p>';
			h += '<table class="table1">';
				h += '<tbody><tr>';
					h += '<th colspan="2" style="width:252px">商品</th><th style="width:76px">售价</th><th>团购价</th>';
				h += '</tr></tbody></table>';
				h += '<div class="table"><table id="JS_tg_goods">'
																							h += '</table></div>';
			h += '<div class="btn">';

			//勾选的商品
			if( t.length > 0){
				h += '<a href="javascript:;" class="goTg" id="JS_goTg">去团购</a><a href="javascript:;" class="next" id="JS_next">下次吧</a>';
			}else{
				h += '<a href="javascript:;" class="goTg" id="JS_goTg">去团购</a>';
			}

			h += '</div>';
		h += '</div>';
	h += '</div>';
	$('body').append(h);

	//去掉没有勾选的团购商品
	if(unTg){
		for( var k = 0, kk = unTg.length; k < kk; k++ ){
			if( $("#JS_rec_id_"+unTg[k]) ){
				$("#JS_rec_id_"+unTg[k]).remove();
			}
		}
	}
}

$('body').on('click','#JS_del',function(){ //关闭弹框
	showTgMask = false;
	$(".tgLightBox").remove();
	$("#JS_mask").remove();
}).on('click','#JS_goTg',function(){//去团购吧
	window.location.href = $("#JS_tg_goods").find('a').eq(0).attr('href');
}).on('click','#JS_next',function(){//下次吧
	showTgMask = true;
	goPreCheck(1); //重新去结算
})

function goPreCheck(confirm){
	var t = [],unTg = [],checkedTg = [];
	//勾选的商品
	var goods_selected = $('#JS_list_table_cb td .goods_select:checked');
	for ( var i = 0,ii = goods_selected.length; i < ii; i++ ){
		var val = goods_selected.eq(i).val();
		if( goods_selected.eq(i).attr('data-type') == 0 ){//提交勾选的非团购商品
			t.push(val);
		}
		if( goods_selected.eq(i).attr('data-type') == 1 ){//被选中的团购商品data-typ为1
			checkedTg.push(goods_selected.eq(i));
		}
	}
	//没有勾选的商品
	var goodsUnselected = $('#JS_list_table_cb td .goods_select');
	for( var k = 0, kk = goodsUnselected.length; k < kk; k++ ){
		if( goodsUnselected.eq(k).prop('checked' ) == false && goodsUnselected.eq(k).attr('data-type') == 1 ){
			var val = goodsUnselected.eq(k).val();
			unTg.push(val);
		}
	}

	//如有勾选的团购商品罗列出来
	if( checkedTg.length > 0 && !showTgMask){
		showTgGoods(unTg,t);return;
	}
	if( showTgMask ){ //剔除被选中的团购商品
		var goods_selected = $('#JS_list_table_cb td .goods_select:checked'),newT = [];
		for(var i=0,ii=goods_selected.length;i<ii;i++){
			var val = goods_selected.eq(i).val();
			if( goods_selected.eq(i).attr('data-type') == 0 ){//提交勾选的非团购商品
				newT.push(val);
			}
		}
		t = newT;
	}
	$.ajax({
		url:'/core_api/PushMem/apicheckCartGoods/',
		type:'post',
		data:{rec_id:t},
		dataType:'json',
		success:function(json){
			showTgMask = false;
			$(".tgLightBox").remove();
			$("#JS_mask").remove();
			//去掉团购商品
			var goods_selected = $('#JS_list_table_cb td .goods_select:checked');
			for(var i=0,ii=goods_selected.length;i<ii;i++){
				var val = goods_selected.eq(i).val();
				if( goods_selected.eq(i).attr('data-type') == 1 ){
					goods_selected.eq(i).prop('checked',false);
				}
			}
			mask_show_goods(json);
		},error:function(){
			showTgMask = false;
			alert('数据连接失败，请重试！');
		}
	})
	function mask_show_goods(json){
		(function(){ //弹框样式
			var css = [];
				css.push( '.addToCart_LB{top:10%;_top:expression(eval(document.documentElement.scrollTop+50));}' );
				css.push( '.addToCart_LB .btns{border-top:0;}' );
				css.push( '.addToCart_LB .in{width:652px!important;}' );
				css.push( '.addToCart_LB .btns a{height:18px;line-height:18px;border-radius:0;background:#dcdcdc;background:linear-gradient(#fcfcfc,#f3f3f3) ;color:#666;border:1px solid #dcdcdc;border-radius:2px;-moz-border-radius:2px;-webkit-border-radius:2px;-khtml-border-radius:2px;font-family:"微软雅黑";font-size:14px;padding:7px 15px;}' );
				css.push( '.addToCart_LB .btns a:hover{background:#dcdcdc;background:linear-gradient(#fcfcfc,#f3f3f3) ;color:#666!important;}' )
				css.push( '.addToCart_LB .btns a.lightbox_btnsi_2{background:#d2033d;background:linear-gradient(#d9023f,#c9033b) ;border-color:#c10037;color:#fff;border-radius:2px;-moz-border-radius:2px;-webkit-border-radius:2px;-khtml-border-radius:2px;}' );
				css.push( '.addToCart_LB .btns a.lightbox_btnsi_2:hover{background:#d2033d;background:linear-gradient(#d9023f,#c9033b);color:#fff!important;}' );
				css.push( '.addToCart_LB .content .content_td{font-size:16px;font-family:"微软雅黑"}' );
				css.push( '.addToCart_LB .content .content_td p{font-size:12px;color:#999;font-family:"宋体"}' );
				$.insertStyle( css.join('') );
		})();

		var h = '';var a = 4;
		h += '<div class="clearfix title"><div class="Left"><i style="display:inline-block;"></i><span id="JS_addtocart_lb_title">提示</span></div><a href="javascript:;" class="Right" onclick="$.closeLightBox( \'{=id}\' ,  $.addToCart.removeUI );">&times;</a></div>';
		if(json.data){
			var is_Quota0 = [],is_Quota1 = [],is_Quota2 = [],is_Quota3 = [],is_Quota4 = [];
			for(var i=0,ii=json.data.length;i<ii;i++){
				if(json.data[i]['is_Quota'] == 0){
					is_Quota0.push(0);
				}else if(json.data[i]['is_Quota'] == 1){
					is_Quota1.push(1);
				}else if(json.data[i]['is_Quota'] == 2){
					is_Quota2.push(2);
				}else if(json.data[i]['is_Quota'] == 3){
					is_Quota3.push(3);
				}else if(json.data[i]['is_Quota'] == 4){
					is_Quota4.push(4);
				}
			}
			if((is_Quota2.length || is_Quota4.length || (is_Quota4.length && is_Quota2.length)) && !is_Quota0.length){
			//购物车中的商品全都为限购为0或下架停售的商品
				h += '<div class="content content_rate"><table style="margin: 0 auto;">'+
					'<tr>'+
						'<td class="icons_td"><span class="icons icons_warn"></span></td>'+
						'<td class="content_td">您选购的商品已下架或者停售</td>';
				h +=  '</tr></table></div>';
				var showBtn = {
					'确定':function(){
						$.addToCart.removeUI();
						location.reload() 
					}
				}
				$.lightBox(h, showBtn, null , null , null , true , 'MALERT MCONFIRM addToCart_LB');
				return false;
			}else if((is_Quota2.length && is_Quota0.length && !is_Quota1.length && !is_Quota3.length) || (is_Quota4.length && is_Quota0.length && !is_Quota1.length && !is_Quota3.length) || (is_Quota4.length && is_Quota2.length && is_Quota0.length && !is_Quota1.length && !is_Quota3.length)){
			//购物车有下架或者库存数量为0，还有可购买商品
				h += '<div class="content content_rate"><table style="margin: 0 auto;">'+
				'<tr>'+
					'<td class="icons_td"><span class="icons icons_warn"></span></td>'+
					'<td class="content_td">您购物车中有已下架或停售商品，下架或停售商品不会被提交结算</td>'+
				'</tr>'+
				'<tr><td></td><td class="content_td">&emsp;</td></tr>';
				for(var i=0,ii=json.data.length;i<ii;i++){
					if(json.data[i]['is_Quota'] == '2' || json.data[i]['is_Quota'] == '4'){
						h += '<tr><td></td><td class="content_td">'+json.data[i]['goods_name']+'&emsp;'+json.data[i]['goods_sn']+'</td></tr>';
					}
				}
				h +='</table></div>';
				var showBtn = {
					'确定':function(){
						setTimeout(function(){
							var checked_goods_xj = [];
							var goods_list_checked = $('#JS_list_table_cb td .goods_select:checked');
							for(var i=0,ii=json.data.length;i<ii;i++){
								if(json.data[i]['is_Quota'] == 2 || json.data[i]['is_Quota'] == 4){
									checked_goods_xj.push(json.data[i]['rec_id']);
								}
							}
							for(var i=0,ii=json.data.length;i<ii;i++){
								if(goods_list_checked.eq(i).val() == json.data[i]['rec_id']){
									if(json.data[i]['is_Quota'] == 2 || json.data[i]['is_Quota'] == 4){
										goods_list_checked.eq(i).prop('checked',false);
										goods_list_checked.eq(i).removeAttr('checked');
									}
								}
							}
							$('#JS_pre_check_form').submit();
						}, 0);
					}
				}
				$.lightBox(h, showBtn, null , null , null , true , 'MALERT MCONFIRM addToCart_LB');
				return false;
			}else if(is_Quota1.length || is_Quota3.length || is_Quota4.length){//购物车有库存数量不足的商品
				h += '<div class="content content_rate"><table style="margin: 0 auto;">'+
				'<tr>'+
					'<td class="icons_td"><span class="icons icons_warn"></span></td>'+
					'<td class="content_td">您购买的商品库存不足</td>'+
				'</tr>'+
				'<tr><td></td><td class="content_td">&emsp;</td></tr>';
				for(var i=0,ii=json.data.length;i<ii;i++){
					if(json.data[i]['is_Quota'] == '1' || json.data[i]['is_Quota'] == '3'){
						h += '<tr><td></td><td class="content_td">'+json.data[i]['goods_name']+'&emsp;'+json.data[i]['goods_sn']+' 库存数量'+json.data[i]['Quota_num']+'件</td></tr>';
					}else if(json.data[i]['is_Quota'] == '4' || json.data[i]['is_Quota'] == '2'){
						h += '<tr><td></td><td class="content_td">'+json.data[i]['goods_name']+'&emsp;'+json.data[i]['goods_sn']+'</td></tr>';
					}
				}
				h +='</table></div>';
				var showBtn = {
					'确定':function(){
						$.addToCart.removeUI();
						location.reload() 
					}
				}
				$.lightBox(h, showBtn, null , null , null , true , 'MALERT MCONFIRM addToCart_LB');
				return false;
			}else if((is_Quota2.length && is_Quota0.length && is_Quota1.length && is_Quota3.length) || (is_Quota2.length && is_Quota0.length && is_Quota1.length && is_Quota4.length) || (is_Quota2.length && is_Quota0.length && is_Quota1.length && is_Quota3.length && is_Quota4.length)){
			//购物车有下架或者库存数量为0，库存不足的商品，还有可购买商品
				h += '<div class="content content_rate"><table style="margin: 0 auto;">'+
				'<tr>'+
					'<td class="icons_td"><span class="icons icons_warn"></span></td>'+
					'<td class="content_td">您购买的商品库存不足</td>'+
				'</tr>'+
				'<tr><td></td><td class="content_td">&emsp;</td></tr>';
				for(var i=0,ii=json.data.length;i<ii;i++){
					if(json.data[i]['is_Quota'] == '2' || json.data[i]['is_Quota'] == '4'){
						h += '<tr><td></td><td class="content_td">'+json.data['goods_name']+'&emsp;'+json.data['goods_sn']+'</td></tr>';
					}else if(json.data[i]['is_Quota'] == '1' || json.data[i]['is_Quota'] == '3'){
						h += '<tr><td></td><td class="content_td">'+json.data[i]['goods_name']+'&emsp;'+json.data[i]['goods_sn']+' 库存数量'+json.data[i]['Quota_num']+'件</td></tr>';
					}
				}
				h +='</table></div>';
				var showBtn = {
					'确定':function(){
						$.addToCart.removeUI();
						location.reload() 
					}
				}
				$.lightBox(h, showBtn, null , null , null , true , 'MALERT MCONFIRM addToCart_LB');
				return false;
			}else if(is_Quota0.length && !is_Quota1.length && !is_Quota2.length && !is_Quota3.length && !is_Quota4.length){
				if(window.someGoodsisDeleted && confirm != 1 ){
					$.confirm('您购物车中有已下架或停售商品，下架或停售商品不会被提交结算。',{onOk: function(){
						goPreCheck(1);
					}});
					return false;
				}
			}
			check_goods_status();
		}else{
			if(window.someGoodsisDeleted && confirm != 1 ){
				$.confirm('您购物车中有已下架或停售商品，下架或停售商品不会被提交结算。',{onOk: function(){
					goPreCheck(1);
				}});
				return false;
			}
			check_goods_status();
		}
	}

	function check_goods_status(){
		if(!$.cookie('ECS[username]') || $.cookie('meilele_login') != 1){
			$.showLoginBox(goPreCheck);
			return false;
		}

		var goods_sub_list = $('#JS_list_table_cb td .goods_select:checked');
		if( goods_sub_list.length == 0 ) {
			$.alert('您还没有选择结算的商品！');
			return false;
		} else if( goods_sub_list.length > 1 && confirm != 2 ){
			var hasAuction;
			var index;
			goods_sub_list.each(function(i){
				if( $(this).data('auction_id') > 0 ){
					index = i;
					hasAuction = true;
					return false;
				}
			});

			if(hasAuction){
				$.confirm('您选择的商品中含有拍卖商品，将对该商品单独下单。',{onOk: function(){
					goods_sub_list.prop('checked', false).eq(index).prop('checked', true);
					goPreCheck(2);
				}});
				return false;
			}
		}

		/*if(bonusBox['_'] && bonusBox['_'].usedBonusList){
			$$('#JS_bonus_str_input').value = bonusBox['_'].getUsedBonusList().join(',');
		}else{
			$$('#JS_bonus_str_input').value = '';
		}*/
		if (!checkMoveToCollect()){
			setTimeout(function(){
				$('#JS_pre_check_form').submit();
			}, 0);
		}
	}
}
function selectAll(obj){
	// for(var k = 0,kk=_CHECKBOX_LIST.length;k<kk;k++){
	// 	M.$('#JS_delete_checkbox_'+_CHECKBOX_LIST[k]).checked = obj.checked;
	// }
	var checked = obj.checked;

	var index = $(obj).data('index');

	var selector = '#JS_list_table_cb input[type=checkbox]';

	if( index > 0 ) {
		selector = '#JS_cart_body_'+index+' input[type=checkbox]';
	}

	var input = $(selector).not(':disabled');

	input.each(function(){
		var _this = $(this);
		var _parent = _this.parentsUntil('tbody').last();
		var _act_id = _parent.data('act_id');
		if(_act_id > 0){
			$('.goods_select_'+_act_id).prop('checked',checked);
		}else{

			_this.prop('checked',checked);
		}
	});

	refreshPrice();
}
function deleteSelect(){
	var list = [];
	var goods_list = $('.delete_icon, .goods_select:checked');
	// for(var k = 0,kk=_CHECKBOX_LIST.length;k<kk;k++){
	// 	var  o = M.$('#JS_delete_checkbox_'+_CHECKBOX_LIST[k]);
	// 	if(o && o.checked ){
	// 		list.push( _CHECKBOX_LIST[k] );
	// 	}
	// }

	goods_list.each(function(i){
		var _this = $(this);
		var rec_id = _this.val() || _this.data('rec_id');

		list.push( rec_id );
	});

	if( list.length ){
		deleteCartGoods(list);
		// location.href = '/add_cart/?step=dropGoods&ajax=1&goods='+list.join('|');
	}else{
		$.alert('选中列表为空！');
	}
}

function deleteCartGoods(rec_id) {
	if(!rec_id) return false;
	$.ajax({
			url: '/add_cart/?step=dropGoods&ajax=1&goods='+rec_id.join('|'),
			dataType: 'json',
			success: function(json){
				if(json && json.error == 0){
					location.href = '/flow/?step=cart';
				}else{
					$.alert( json.msg || '删除失败');
				}
			}
		});
}
function flow_confirm(obj,msg , callback){
	var rec_id = [];
	var _this = $(obj);
	var recId = _this.data('rec_id');
	var act_id = $('#JS_cart_tr_'+recId).data('act_id');
	if(act_id > 0){
		var act_list = $('.JS_cart_act_'+act_id);
		act_list.each(function(){
			var self = $(this);
			rec_id.push( self.data('rec_id') );
		});
	} else {
		rec_id.push( _this.data('rec_id') );
	}
	$.confirm(msg,{
		onOk:callback||function(){
            deleteCartGift(recId);
			deleteCartGoods(rec_id);
		}
	});
	return false;
}

function deleteCartGift(recId) {
    var t = ".mgift_id_"+recId;
    if($(t).length>0)
        $(t).remove();
}   

//json跟字符串的相互转换
var changeString = {
    JSONstringify:function(Json){
        var result=this.toJSONString(Json);
        return result;
    },
    evalJSON : function(strJson) {
        return eval("(" + strJson + ")");
    },
    toJSONString : function(object) {
        var that = this;
        var type = typeof object;
        if ('object' == type) {
            if (Array == object.constructor)
                type = 'array';
            else if (RegExp == object.constructor)
                type = 'regexp';
            else
                type = 'object';
        }
        switch (type) {
            case 'undefined' :
            case 'unknown' :
                return;
                break;
            case 'function' :
            case 'boolean' :
            case 'regexp' :
                return object.toString();
                break;
            case 'number' :
                return isFinite(object) ? object.toString() : 'null';
                break;
            case 'string' :
                return '"' + object.replace(/(\\|\")/g, "\\$1").replace(/\n|\r|\t/g, function() {
                            var a = arguments[0];
                            return (a == '\n') ? '\\n' : (a == '\r') ? '\\r' : (a == '\t') ? '\\t' : ""
                        }) + '"';
                break;
            case 'object' :
                if (object === null)
                    return 'null';
                var results = [];
                for (var property in object) {
                    var value = that.toJSONString(object[property]);
                    if (value !== undefined)
                        results.push(that.toJSONString(property) + ':' + value);
                }
                return '{' + results.join(',') + '}';
                break;
            case 'array' :
                var results = [];
                for (var i = 0; i < object.length; i++) {
                    var value =  that.toJSONString(object[i]);
                    if (value !== undefined)
                        results.push(value);
                }
                return '[' + results.join(',') + ']';
                break;
        } 
    }
}

function olympicFn(){//Olympics活动
	var olympicData = [];
	var manageMode = '';
	var goods_sub_list = $('#JS_list_table_cb td .goods_select:checked');
	goods_sub_list.each(function(){
		var _this = $(this);
		if(_this.attr('data-key') == 1 ){
			manageMode = 1;
			olympicData.push({
				'goods_id':_this.closest('.goods_item').attr('data-goods_id'),
				'goods_number':_this.closest('.goods_item').find('input').eq(1).val()
			})
			
		}
	});
	var endOlympicData = changeString.JSONstringify( olympicData );
    $.ajax({
    	url:'/order_ajax/?step=olympic_activity',
    	type:'post',
    	data:{olympicGoods:endOlympicData} ,
    	dataTtype:'json',
    	success:function(json){
    		var json = changeString.evalJSON(json);
    		if( json.error == 0 ){
    			jQuery('.JS_olympic').removeClass('none');
    			if( json.msg.h_discount_top && json.msg.h_discount_top == 1 ){
    				$('.JS_olympic_top').hide();
    				$('.JS_olympic_top1').show();
    				$('.JS_olympic_top2').hide();
    			}else if( json.msg.h_goods_total_curentlevel == 0 ){
    				$('.JS_olympic_top1').hide();
    				$('.JS_olympic_top2').hide();
    				$('.JS_olympic_top').show();
    			}else{
    				$('.JS_olympic_top1').show();
    				$('.JS_olympic_top2').show();
    				$('.JS_olympic_top').show();
    			}
				$('.JS_h_discount_could_'+manageMode).text(json.msg.h_discount_could);
				$('.JS_h_goods_total_curentlevel_'+manageMode).text(json.msg.h_goods_total_curentlevel);
				$('.JS_h_discount_real_'+manageMode).text(json.msg.h_discount_real);
				$('.JS_h_goods_total_nextlevel_'+manageMode).text(json.msg.h_goods_total_nextlevel);
				$('.JS_h_add_price_'+manageMode).text(json.msg.h_add_price);
				$('.JS_h_discount_nextlevel_'+manageMode).text(json.msg.h_discount_nextlevel);
    		}else if( json.error == 1 ){
    			jQuery('.JS_olympic').addClass('none');
    		}
    	}
    })
	
}

olympicFn();

function refreshPrice(_rec){
	olympicFn();
	getCartActInfo();
	
	var goods_sub_list = $('#JS_list_table_cb td .goods_select:checked');
	var total = 0;
	var goods_total_num = 0;//已经选中的商品件数
	goods_sub_list.each(function(){
		var _this = $(this);
		var rec_id = _this.val();
		var dom = $('#JS_goods_subtotal_'+rec_id);
		total += Number(dom.text()) || 0;
	});
	
	$("#JS_after").html( total.toFixed(2) || 0 );
	//更新已选中的商品件数
	$('#JS_selected_goods_number').text(goods_total_num);
    
    //+,-执行每个商品及其赠品数量统计
    if(_rec){
        getGcount(_rec)
    }
    //总数量统计
    var target = $('#JS_list_table_cb td .goods_select:checked').closest('tr[data-goods_num]'),goods_total_num = 0;
    for(var i=0;i<target.length;i++){
        goods_total_num += +$(target[i]).attr('data-goods_num')
    }
    _gift.setNum(goods_total_num);
    $('#JS_selected_goods_number').text(_gift.getNum());
}

function getGcount(_rec) {
    var json = _gift.getGiftData(),total_num = 0,oTr = 'tr[data-rec_id="'+ _rec +'"]'
    if(json && json.mainGoodsToGiftsResults && json.mainGoodsToGiftsResults.length){
        if(json.mainGoodsToGiftsResults[0].error == 0 && json.mainGoodsToGiftsResults[0].result[_rec] && json.mainGoodsToGiftsResults[0].result[_rec].hasGifts){
            var gifts = json.mainGoodsToGiftsResults[0].result[_rec].gifts
            for(var i = 0,len = gifts.length;i < len;i ++){
                total_num += gifts[i].giftNumber || 0;
            }
        }
        var oInput = 'input[data-rec_id="'+ _rec +'"]'
        total_num += +$(oInput).val();
	} else if(json && json.result && json.result[_rec] && json.result[_rec].hasGifts){
        var gifts = json.result[_rec].gifts
		for(var i = 0,len = gifts.length;i < len;i ++){
			total_num += gifts[i].giftNumber || 0;
		}
        total_num += +json.result[_rec].goodsNum;
    }
    
    $(oTr).attr('data-goods_num',total_num)
}    
    
    
window.onload = function(){
	var ALL_LENGTH = $('#JS_list_table_cb input.goods_select').not(':disabled').length;
	$('#JS_list_table_cb td input:checkbox').click(function(){
		var _this = $(this);
		if( _this.is('.goods_select') ){
			var _parent = _this.parentsUntil('tbody').last();
			var _act_id = _parent.data('act_id');
			if(_act_id > 0){
				var checked = _this.prop('checked');
				$('.goods_select_'+_act_id).prop('checked',checked);
			}
			var _id = _parent.parent().attr('id');
			var _selector = '#' + _id.replace('body','shop');
			var _all_len = _parent.find('.goods_select').not(':disabled').length;
			var _len = _parent.find('.goods_select:checked').not(':disabled').length;


			if( _all_len == _len ){
				$(_selector).prop('checked',true);
			}else{
				$(_selector).prop('checked',false);
			}

		}

		var len = $('#JS_list_table_cb td input.goods_select:checked').not(':disabled').length;
		if( ALL_LENGTH == len ){
			$('.JS_checkall_cb').prop('checked',true);
		}else{
			$('.JS_checkall_cb').prop('checked',false);
		}

		// $('#JS_selected_num').text( len );
		refreshPrice();
	});

	$('.goods_item').click(function( event ){
		var _target = $(event.target);
		if( !_target.is('.goods_select') ) {
			var _checkbox = $(this).find('.goods_select').not(':disabled');
			if( ( _target.hasClass('add') || _target.hasClass('sub') ) && !_checkbox.prop('checked') ){
				_checkbox.click();
			}
		}
	});
}


function checkMoveToCollect(){
	var num = '1';
	var limit = 100;
	if(num <= limit){
		return false;
	}

	var overload = false;
	$.ajax({
		url : '/add_cart/?step=insertCollect',
		type : 'GET',
		dataType : 'JSON',
		cache : false,
		async : false,
		success : function(data){
			if(data && data.error == '0' && data.moveToCollect && data.moveToCollect.length){
				collectTip(data);
				overload = true;
			}else{
				overload = false;
			}
		}
	});
	return overload;
}

function favourAddToCart(goodsId){
	$.ajax({
		url:'/ajax_flow/?step=add_to_cart_new&nolist=1&goods_id='+goodsId+'&goods=' + goodsId + ':1' ,
		cache:false,
		dataType:'json',
		success:function(json){
			if(json && json.error == '0'){
				if(json.moveToCollect && json.moveToCollect.length){
					collectTip(json,'商品已成功放入购物车，购物车中的商品发生变动！');
				}else{
					collectTip(json,'商品已成功放入购物车！');
				}
			}
		},
		error:function(){
			$.alert('发生错误。请稍候再试。');
			setTimeout(function(){
				location.reload();
			}, 3000);
		}
	});
}

function collectTip(data,tip){
	$.showMask();
	tip = tip || '购物车中的商品发生变动！';
	var html = '<div class="clearfix title"><div class="Left"><i style="display:inline-block;"></i><span >提示</span></div><a href="javascript:;" class="Right" onclick="$.closeLightBox( \'{=id}\'  );location.reload();">&times;</a></div>';
	html +='<div class="content"><table style="margin: 0 auto;"><tr>'+'<td class="icons_td"><span class="icons icons_ok"></span></td>'+'<td class="content_td " ><b style="font-size:18px">' + tip + '</b></td>'+'</tr></table></div>';
	var h = [];
	var collect = data.moveToCollect;
	if(collect && collect.length){
		h.push('<div class="favour">');
		    h.push('<p class="itip"><b>重要提示：</b>购物车里有' + (collect.length || 0) + '件商品被移入收藏夹</p>');
		    h.push('<ul class="favour-list">');
		    	for(var i = 0,len = collect.length;i < len && i < 3;i ++){
		    		h.push('<li class="favour-item">' + '<a title="' + collect[i].goodsName + '" target="_blank" class="favour-link" href="' + collect[i].goodsLink + '">' + collect[i].goodsName +'</a>' + '</li>');
		    	}
			h.push('</ul>');
			h.push('<a target="_blank" href="/user/?act=collection_list" class="red favour-btn">查看收藏夹&gt;&gt;</a>');
		h.push('</div>');
	}
	$.lightBox(html + h.join(''), {
		'确定':function(){
			// $.hideMask();
			location.reload();
		}
	} , null , null , null , false , 'MALERT MCONFIRM importTip');
}
function getCartActInfo() {
	var goodsData = [];
	var goods_sub_list = $('#JS_list_table_cb td .goods_select:checked');
	goods_sub_list.each(function(){
		var _this = $(this);
		if(_this.attr('data-shop') == 1 ){
			goodsData.push(_this.closest('.goods_item').attr('data-goods_id') + ':' + _this.closest('.goods_item').find('input').eq(1).val());
		}
	});
	if (!goodsData.length){
		$('.JS_mj_span').html('');
		return;
	}
	$.ajax({
		url: '/NewFrameEntrance?r=CartActHint/GetGoodsActHint&goods_list=' + goodsData.join(','),
		type: 'GET',
		dataType: 'json',
		success: function(json){
			if (json && json.error == 0 && json.data && json.data.is_cart_overlay_show == '1' && ((json.data.h_discount_could - 0 > 0) || (json.data.h_add_price - 0 > 0))) {
				var 
					data = json.data,
					html = '<span class="label">满额送</span>\
					<span>活动商品已购满'+data.h_goods_total+'元' + (data.h_discount_could - 0 > 0 ? ',送' +data.h_discount_could+'元！' : '') + '</span>';
					if (data.h_add_price != 0) {
						var link =data.link_url + (data.link_url.indexOf('?')!=-1 ? '&' : '?') + 'site_from=manjia_cart';
						html += '&gt;&gt;&nbsp;&nbsp;<span class="red">再购' +data.h_add_price+ '元，' +(data.h_discount_could - 0 > 0 ? '共可' : '')+ '送' +data.h_discount_nextlevel+ '元&nbsp;&nbsp;</span><a href="'+link+'" onclick="window._ana && window._ana.push([\'trackEvent\',\'2016满加提示工具\',\'购物车页面提示_点击进入活动页面\',\'manjia_gwc_ jrhdym\']);window._gaq && window._gaq.push([\'_trackEvent\',\'2016满加提示工具\',\'购物车页面提示_点击进入活动页面\',\'manjia_gwc_ jrhdym\']);" target="_blank"  class="orange" style="font-weight:bold;">去凑单&gt;&gt;</a>'
					};
				$('.JS_mj_span').html(html);
			} else {
				$('.JS_mj_span').html(''); 
			}
		}
	})
}

$(function(){
	checkMoveToCollect();
	getCartActInfo();
});
</script>




<div class="w flow_favour">
	<h1 class="f-title">最近收藏的商品</h1>
	<ul class="f-list clearfix">
				<li class="f-item">
			<p>
				<a title="欧洲皇室御用款 桃花芯木雕花床 黄牛双色头层真皮1.8米床" target="_blank" class="f-link" href="javascript:void(0);"><img width="178" height="117" src="<%=basePath %>image/1415709115917662447.jpg" alt="欧洲皇室御用款 桃花芯木雕花床 黄牛双色头层真皮1.8米床" class="f-img">
			</a>
			</p>
			<p style="width:178px;margin-top:5px;overflow:hidden;text-overflow:ellipsis;white-space:nowrap;">
				<a title="欧洲皇室御用款 桃花芯木雕花床 黄牛双色头层真皮1.8米床" target="_blank" href="javascript:void(0);" class="f-link f-txt">欧洲皇室御用款 桃花芯木雕花床 黄牛双色头层真皮1.8米床</a>
			</p>
			<p class="f-price ">
				本站价：<span class="red">¥9999</span>
			</p>
			<p style="margin-top:8px">
				<a onclick="favourAddToCart(&#39;58688&#39;);" title="加入购物车" data-goods-id="58688" href="javascript:void(0)" class="f-btn"></a>
			</p>
		</li>
	</ul>
</div>





<div class="height15"></div>
<div class="footer-box">

    <div class="footer">
        <div class="footer-icon">
            <div class="w"> 
                <a href="javascript:void(0);" target="_blank" title="网商+体验馆" rel="nofollow" class="icon-map"><p class="icon-bg i1"></p><p class="icon-title">网商+体验馆</p></a>
                <a href="javascript:void(0);" target="_blank" title="100%正品" rel="nofollow" class="icon-map"><p class="icon-bg i3"></p><p class="icon-title">100%正品</p></a>
                <a href="javascript:void(0);" target="_blank" title="双重质检" rel="nofollow" class="icon-map"><p class="icon-bg i4"></p><p class="icon-title">双重质检</p></a>
                <a href="javascript:void(0);" target="_blank" title="全球化采购" rel="nofollow" class="icon-map"><p class="icon-bg i5"></p><p class="icon-title">全球化采购</p></a><a href="http://www.meilele.com/topic/article_diyipinpai.html#tab=returns" target="_blank" title="无理由退货" rel="nofollow" class="icon-map"><p class="icon-bg i6"></p><p class="icon-title">无理由退货</p></a>
                <a href="javascript:void(0);" target="_blank" title="贵就赔" rel="nofollow" class="icon-map"><p class="icon-bg i7"></p><p class="icon-title">贵就赔</p></a>
                <a href="javascript:void(0);" target="_blank" title="万千口碑" rel="nofollow" class="icon-map"><p class="icon-bg i8"></p><p class="icon-title">万千口碑</p></a>
            </div>
        </div>
            </div>

    <div class="footer-copy">
        <div class="link-container">
                            <div class="w">
                    <div class="copy-index clearfix" style="padding-top:0">
                        <div class="fl">
                            <p>
                                 <a href="javascript:void(0);" target="_blank" title="装修效果图">装修效果图</a> | <a href="http://www.meilele.com/list/" target="_blank" title="家具图片">家具图片</a> | <a href="http://www.meilele.com/article/" target="_blank" title="家居资讯">家居资讯</a> | <a href="http://www.meilele.com/baike/" target="_blank" title="生活百科">生活百科</a> | <a href="http://www.meilele.com/article_cat-1/" target="_blank" title="家私导购">家私导购</a> | <a href="http://www.meilele.com/brand/" target="_blank" title="品牌展厅">品牌展厅</a> | <a href="http://club.meilele.com/" target="_blank" title="装修论坛">装修论坛</a> | <a href="http://www.melodyhome.com/" target="_blank" title="furniture store">furniture store</a> | <a href="http://www.meilele.com/article_cat-4/article-656.html" target="_blank" title="客服中心" rel="nofollow">客服中心</a> | <a href="http://www.meilele.com/sitesmap.html" target="_blank" title="网站地图">网站地图</a> | <a href="http://www.meilele.com/links.html" target="_blank" title="友情链接" rel="nofollow">友情链接</a> | <a href="http://www.meilele.com/keywords/" target="_blank" title="更多">更多</a>
                            </p>
                            <p>
                                <span class="yen">© 2005-2016 </span><span id="JS_footer_copyright">美乐乐</span> 版权所有，并保留所有权利。<a href="http://www.miibeian.gov.cn/" target="_blank" class="gray" rel="nofollow">ICP备案证书号：粤ICP备08008334号</a>
                            </p>
                        </div>
                        <div class="fr credit">
                            <a target="_blank" href="javascript:void(0);"><span><i class="c1"></i>诚信网站示范企业</span></a>
                            <a target="_blank" href="javascript:void(0);"><span><i class="c2"></i>可信网站信用评价</span></a>
                            <span><i class="c3"></i>经营网站备案信息</span>
                        </div>
                    </div>
                </div>
        </div>
    </div>
</div>



<script>
window._onReadyList = window._onReadyList || [];
window._onReadyList.push( function(){
	if( !/downAppIsShow\=1/.test( document.cookie ) && /ipad|ipod|iphone|android/i.test(navigator.userAgent)){
		$(window).on("load",function(){
			$.ajax({
				url:"/mll_api/api/appCenter?contentAdCode=zztcgg_yd&jumpAdCode=default_appjump&c=mobile_visit_www",
				dataType:"script"/*,
				error:function(){
					console.log(arguments)
				}*/
			})
		});
	}
} );
</script><script type="text/javascript">
// Production steps of ECMA-262, Edition 5, 15.4.4.14
// Reference: http://es5.github.io/#x15.4.4.14
if (!Array.prototype.indexOf) {
  Array.prototype.indexOf = function(searchElement, fromIndex) {

    var k;

    // 1. Let O be the result of calling ToObject passing
    //    the this value as the argument.
    if (this == null) {
      throw new TypeError('"this" is null or not defined');
    }

    var O = Object(this);

    // 2. Let lenValue be the result of calling the Get
    //    internal method of O with the argument "length".
    // 3. Let len be ToUint32(lenValue).
    var len = O.length >>> 0;

    // 4. If len is 0, return -1.
    if (len === 0) {
      return -1;
    }

    // 5. If argument fromIndex was passed let n be
    //    ToInteger(fromIndex); else let n be 0.
    var n = +fromIndex || 0;

    if (Math.abs(n) === Infinity) {
      n = 0;
    }

    // 6. If n >= len, return -1.
    if (n >= len) {
      return -1;
    }

    // 7. If n >= 0, then Let k be n.
    // 8. Else, n<0, Let k be len - abs(n).
    //    If k is less than 0, then let k be 0.
    k = Math.max(n >= 0 ? n : len - Math.abs(n), 0);

    // 9. Repeat, while k < len
    while (k < len) {
      // a. Let Pk be ToString(k).
      //   This is implicit for LHS operands of the in operator
      // b. Let kPresent be the result of calling the
      //    HasProperty internal method of O with argument Pk.
      //   This step can be combined with c
      // c. If kPresent is true, then
      //    i.  Let elementK be the result of calling the Get
      //        internal method of O with the argument ToString(k).
      //   ii.  Let same be the result of applying the
      //        Strict Equality Comparison Algorithm to
      //        searchElement and elementK.
      //  iii.  If same is true, return k.
      if (k in O && O[k] === searchElement) {
        return k;
      }
      k++;
    }
    return -1;
  };
}//针对ie8 indexOf的定义
if (window._isIndexPage) {
	window.isGoodsIndex = true;//是否是主页的判断
}else{
	var isGoodsIndexArray = ["category","brand","keywords","jiaju","jiancai","shipin","expr.html","tuangou","xspace","tljj"]
	var isGoodsIndexUrl = location.pathname.split('/')[1].indexOf("-") !== -1 ? location.pathname.split('/')[1].split('-')[0] : location.pathname.split('/')[1];
	window.isGoodsIndex = Boolean(isGoodsIndexArray.indexOf(isGoodsIndexUrl) !== -1);//家具、建材、家居家饰、团购等页面判断
}
if (location.pathname.split('/')[2] && location.pathname.split('/')[2].indexOf('expr.html') !== -1) {
	window.isGoodsIndex = true //是否是体验馆的判断
}
if (!isGoodsIndex) {
	window.__showCart = Boolean('');//商品详情页购物车
	window.__QUIZ = false; 
	_LOAD_SCRIPT_($.__IMG + '/themes/paipai/js/back_to_top.min.js?20161124');
}
</script>



<script>
    (function(f,e){var c=e.cookie("meilele_login")=="1"&&e.cookie("ECS[username]");if(c){e.ajax({type:"POST",url:"/dubbo_api/mll/stationMsg/getMsgCount",dataType:"json",success:function(d){if(d&&d.error==0){e(".JS_mes_num").text(d.count).show();
}else{e(".JS_mes_num").hide();}},error:function(){e(".JS_mes_num").hide();}});var g=e(".JS_login");e(".JS_login:eq(0)").after('<li class="fl banner"><a target="_blank" class="login-name" href="/user/" title="'+c+'">'+b(c,16)+'</a><a target="_blank" class="u-message" href="/user/?act=news">消息&nbsp;<i class="i-cyc JS_mes_num">'+0+'</i></a><a href="javascript:;" class="login-out" id="JS_login_out">[退出]</a></li>');
e(".JS_login").remove();}var a=new Image();if(!/ECS_ID\=/.test(document.cookie)||(/autoLogin\=/.test(document.cookie)&&!/meilele_login=1/.test(document.cookie))){a.src="/ecsid_maker/?_="+(new Date()).getTime();
}function b(m,h){if(!m){return"";}var j=0,d=[];for(var k=0,l=m.length;k<l;k++){var n=m.charAt(k);if(n.charCodeAt(0)>255){j+=2;}else{j++;}if(j<=h){d.push(n);
}else{return d.join("");}}return d.join("");}e("#JS_login_out").on("click",function(){jQuery.ajax({url:"/user/?act=logout",type:"get",cache:false,dataType:"json",success:function(d){if(d.error==0){window.location.reload();
return false;}else{jQuery.alert("注销失败，请重试！");}},error:function(){jQuery.alert("网络异常，请重试！");}});});})(document,jQuery);function shoucang(){window._gaq=window._gaq||[];
_gaq.push(["_trackEvent","headerAddFavorite",location.href]);var b=window.location.href;var a=document.title;try{window.external.addFavorite(b,a);}catch(c){try{window.sidebar.addPanel(a,b,"");
}catch(c){alert('对不起，您的浏览器不支持此操作！请您使用菜单栏或Ctrl+D收藏本站。');}}}function exprCallBackNum(json){if(json&&json.html_content){try{eval("json.html_content="+json.html_content);
}catch(e){jQuery("#JS_head_scoll_phone_527").siblings("span.blank").remove();return;}if(!json){return;}var o1=$("#JS_mll_head_menu_expr");var o3=$("#JS_Header_Home_Link");
var o4=$("#JS_Header_Logo_link_home");if(json.html_content&&json.html_content.expr_count>0&&json.html_content.pinyin){o1.attr("href","/"+json.html_content.pinyin+"/expr.html").html('体验馆<img src="'+$.__IMG+'/images/common/site/hot.gif">');
o3.attr("href","/"+json.html_content.pinyin+"/");o4.attr("href","/"+json.html_content.pinyin+"/");}else{jQuery("#JS_head_scoll_phone_527").siblings("span.blank").remove();
}var len=exprCallBackNum.callFnArr.length;for(var i=0;i<len;i++){exprCallBackNum.callFnArr[i]&&exprCallBackNum.callFnArr[i](json);}}else{jQuery("#JS_head_scoll_phone_527").siblings("span.blank").remove();
}}exprCallBackNum.callFnArr=[];window._headPhoneScroll527Now=0;function Head_scroll_phone_527_fn(){if(window._headPhoneScroll527Lock){return;}var c=window._headPhoneScroll527Dom;
var a=window._headPhoneScroll527Length;var b=window._headPhoneScroll527Now;if(c&&a){jQuery(c).animate({marginTop:(b+1)*-26+"px"},300,"linear",function(){window._headPhoneScroll527Now++;
if(window._headPhoneScroll527Now>=window._headPhoneScroll527Length/2){window._headPhoneScroll527Dom.css("margin-top","0px");window._headPhoneScroll527Now=0;
}});}}var car_number=0;function DY_cart_detail_nav_cb(b){Cart.goodsList=1;Cart.saleLimit=b.saleLimit||100;var a=b.goods_list.length;if(a>0){Cart.formatData(b)||{};
Cart.info.goodsData=b.goods_list;}Cart.update();}var Cart={};Cart.init=function(){Cart.handdler=$("#JS_cart,#JS_cart2,#JS_cart3");Cart.Dom=Cart.handdler.find("#JS_cart_list,#JS_cart_list2");
Cart.number=Cart.handdler.find("#JS_cart_num,#JS_cart_num2,#JS_cart_num3");Cart.countArea=Cart.handdler.find("#JS_count_area,#JS_count_area2");Cart.countNum=Cart.handdler.find("#JS_cart_count,#JS_cart_count2");
Cart.sum=Cart.handdler.find("#JS_count_total,#JS_count_total2");Cart._isIE=!-[1,];Cart.info={goodsData:[],sum:0,goodsNumber:0,giftsNumber:0,kindsNumber:0};
Cart.number.html($.cookie("cart_number")||0);};Cart.isLogin=function(){return($.cookie("meilele_login")=="1"||$.cookie("ECS[username]"));};Cart.show=function(b){if(Cart.isLogin()&&!Cart.moveToCollect.moved){Cart.moveToCollect(a);
}else{a();}function a(c){if(!Cart.goodsList){Cart.Dom.html("")[0].className="cart-list";Cart.countArea.addClass("none");Cart.getCartInfo(null,c);}}$(b).addClass("hover");
if(Cart._isIE){Cart.handdler.find(".cart-arrow").addClass("cart-arrow-ie");}};Cart.getCartInfo=function(b,a){Cart.info={goodsData:[],sum:0,goodsNumber:0,giftsNumber:0,kindsNumber:0};
var c={};if(a&&a.length){c.filterGoodsIds=a.join("!");}jQuery.ajax({url:"/mll_api/api/cart_info",dataType:"json",cache:false,data:c,success:function(d){DY_cart_detail_nav_cb(d);
b&&b(d);}});};Cart.setCartNum=function(a){jQuery.cookie("cart_number",a||0);};Cart.hide=function(){Cart.handdler.removeClass("hover");if(Cart._isIE){Cart.handdler.find(".cart-arrow").removeClass("cart-arrow-ie");
}};Cart.del=function(l,d){var o=l||window.event,m=o.target||o.srcElement;if(d){m=d;}var a=$(m);if(!a.hasClass("Cart_del")){return false;}var j=a.attr("data-index"),b=a.attr("data-rec_id"),h=a.attr("data-num"),i=a.attr("data-goods_price"),n=a.attr("data-act_id");
var g=[];var f={};if(n>0){var k=Cart.Dom.find(".JS_cart_list_act_"+n);k.each(function(r,s){var t=$(this);var q=t.data("rec_id");var p=t.data("index");var e=t.data("num");
g.push(q);f[q]={index:p,num:e,price:0};});}else{g.push(b);f[b]={index:j,num:h,price:i};}if(!Cart.inDelAjax&&g.length>0){Cart.inDelAjax=true;$.ajax({url:"/add_cart/?step=dropGoods&ajax=1&goods="+g.join("|"),type:"GET",dataType:"json",success:function(e){if(e.error==0){c(g,f);
}else{this.error();}},error:function(){alert("删除失败，请稍后再试！");},complete:function(){Cart.inDelAjax=false;}});}function c(q,p){var e=Cart.info;for(var r=0;
r<q.length;r++){var t=q[r];var v=p[t].index;var s=p[t].num||0;var u=p[t].price||0;var x=s*u;var w=$(".JS_cart_list_gift_"+t);w.each(function(y){var z=parseInt(w.eq(y).attr("data-num"));
e.giftsNumber-=z;});$(".JS_cart_list_index_"+v).remove();w.remove();e.goodsNumber-=s;e.kindsNumber--;e.sum-=x;}Cart.update();}};Cart.formatData=function(c){var b=Cart.info;
var f=c.goods_list;var h=0;var d=0;var g=[];for(var i=0,a=f.length;i<a;i++){var e=(f[i].goods_thumb_1)?f[i].goods_thumb_1:f[i].goods_thumb;g.push('<li class="JS_cart_list_index_'+i+'" class="'+(f[i].goods_activity_type!="newgift"?"":"JS_cart_list_gift_"+f[i].activity_par_id)+(f[i].price_activity_id>0?" JS_cart_list_act_"+f[i].price_activity_id:"")+'clearfix cart-item" data-num="'+f[i].goods_number+'" data-rec_id="'+f[i].rec_id+'" data-index="'+i+'">');
g.push('<a class="cart-img" href="'+f[i].url+'" target="_blank" title="'+f[i].goods_name+'"><img class="fl" src="http://img003.mllres.com/'+e+'" alt="'+f[i].goods_name+'" width="86" height="57" ></a>');
g.push('<a target="_blank" class="cart-link" title="'+f[i].goods_name+'" href="'+f[i].url+'">'+f[i].goods_name+"</a>");if(f[i].goods_activity_type!="newgift"){g.push('<p class="cart-cal clearfix"><a data-goods_id="'+f[i].goods_id+'" class="fr black Cart_del" href="javascript:void(0)" data-index="'+i+'" data-rec_id="'+f[i].rec_id+'" data-num="'+f[i].goods_number+'" data-goods_price="'+f[i].goods_price+'" data-act_id="'+(f[i].price_activity_id||0)+'">删除</a><span class="red" id="JS_danjia'+i+'">&yen;'+f[i].goods_price+'</span>×<span class="black">'+f[i].goods_number+"</span></p>");
b.goodsNumber+=f[i].goods_number-0;b.kindsNumber++;b.sum+=(f[i].goods_number||0)*(f[i].goods_price||0);}else{g.push('<p class="cart-cal clearfix"><strong style="margin-left:12px"><span class="cl red">赠品</span>&times;'+f[i].goods_number+"</strong></p>");
d+=parseInt(f[i].goods_number)||0;b.giftsNumber+=f[i].goods_number-0;}g.push("</li>");h+=parseInt(f[i].goods_number)||0;}Cart.Dom.html(g.join(""));Cart.update();
return b;};Cart.goPreCheckOut=function(){jQuery.showLoginBox(function(){location.href="/flow/?step=pre_checkout&rel=header";});};Cart.moveToCollect=function(a){Cart.countArea.find(".cart-tip").remove();
jQuery.ajax({url:"/add_cart/?step=insertCollect",type:"GET",dataType:"JSON",cache:false,success:function(g){if(g&&g.error=="0"&&g.moveToCollect&&g.moveToCollect.length){var c=g.moveToCollect;
var d=[];var f=[];f.push('<div class="cart-tip"><span class="red"><b>提示：</b>购物车里有'+c.length+'件商品被移入收藏夹</span><p class="tip-content">');for(var e=0,b=c.length;
e<b;e++){if(e<3){f.push('<a target="_blank" class="tip-link" href="'+c[e].goodsLink+'">'+c[e].goodsName+"</a>");}d.push(c[e].goodsId);}f.push('</p><a href="/user/?act=collection_list" target="_blank" class="red">查看收藏夹&gt;&gt;</a></div>');
Cart.countArea.append(f.join(""));a&&a(d);}else{this.error();}Cart.moveToCollect.moved=true;},error:function(){a&&a([]);Cart.moveToCollect.moved=false;
}});};Cart.update=function(b){var b=b||Cart.info;var a=Number(b.goodsNumber||0)+Number(b.giftsNumber||0);if(a==0){Cart.setCartNum(0);Cart.number.html(0);
Cart.Dom.html('<li class="nothing"><b class="common-bg nothing-icon"></b>&nbsp;购物车中还没有商品，赶紧选购吧！</li>');Cart.countArea.addClass("none");Cart.Dom.removeClass("cart-full");
return;}Cart.number.html(a);Cart.countNum.html(a);Cart.sum.html("&yen;"+Number(b.sum||0).toFixed(2));Cart.Dom.addClass("cart-full");Cart.countArea.removeClass("none");
Cart.setCartNum(a);var c=Cart.Dom.find(".cart-item").length;Cart.Dom.addClass("cart-full"+(c>2?3:c));if(c==0){Cart.Dom[0].className="cart-list";}};function _show_(j,d){if(!j){return;
}if(d&&d.source&&d.target){var b=typeof d.source==="string"?$("#"+d.source):$(d.source);var l=typeof d.target==="string"?$("#"+d.target):$(d.target);var f=typeof d.data==="string"?$("#"+d.data):$(d.data);
if(b.length&&l.length&&!l.isDone){var h=$(b.val()||sourse.html());if(f.length&&typeof d.templateFunction=="function"){var i=f.val()||f.html();i=$.parseJSON(i);
h=d.templateFunction(h,i);f.remove();}l.empty().append(h);b.remove();if(typeof d.callback=="function"){d.callback();}l.isDone=true;}}$(j).addClass("hover");
if(d&&d.isLazyLoad&&j.isDone){var g=j.find("img");for(var e=0,c=g.length;e<c;e++){var a=g[e].getAttribute("data-src_index_menu");if(a){g[e].setAttribute("src",a);
g[e].removeAttribute("data-src_index_menu");}}j.isDone=true;}}function _hide_(b){if(!b){return;}var a=$(b);if(a.hasClass("hover")){a.removeClass("hover");
}}function shoucang(){window._gaq=window._gaq||[];_gaq.push(["_trackEvent","headerAddFavorite",location.href]);var b=window.location.href;var a=document.title;
try{window.external.addFavorite(b,a);}catch(c){try{window.sidebar.addPanel(a,b,"");}catch(c){alert("对不起，您的浏览器不支持此操作！\n请您使用菜单栏或Ctrl+D收藏本站。");}}}(function(a){jQuery.fn.menu=function(c){this.each(function(){b.call(this,c);
});return this;};function b(o){var h=a(this),k=null,f=[],j=null,i=null,r=null,e=a.extend({rowSelector:"> li",submenuSelector:"*",submenuDirection:"right",tolerance:75,enter:a.noop,exit:a.noop,activate:a.noop,deactivate:a.noop,exitMenu:a.noop,firstDelay:0},o);
var c=3,m=300,l=0;var g=function(w){f.push({x:w.pageX,y:w.pageY});if(f.length>c){f.shift();}};var n=function(){clearTimeout(r);if(i){clearTimeout(i);}if(e.exitMenu(this)){if(k){e.deactivate(k);
}}k=null;};var q=function(){(!k)&&clearTimeout(r);};var t=function(w){if(i){clearTimeout(i);}e.enter(this);s(this);},p=function(w){e.exit(this);};var u=function(w){d(this);
w.stopPropagation();};var d=function(x){clearTimeout(r);if(k){e.deactivate(k);}if(!k&&e.firstDelay){r=setTimeout(function(){w(x);},e.firstDelay);}else{w(x);
}function w(y){e.activate(y);k=y;}};var s=function(x){var w=v();if(w){i=setTimeout(function(){s(x);},w);}else{d(x);}};var v=function(){if(!k||!a(k).is(e.submenuSelector)){return 0;
}var A=h.offset(),w={x:A.left,y:A.top-e.tolerance},H={x:A.left+h.outerWidth(),y:w.y},J={x:A.left,y:A.top+h.outerHeight()+e.tolerance},B={x:A.left+h.outerWidth(),y:J.y},C=f[f.length-1],G=f[0];
if(!C){return 0;}if(!G){G=C;}if(G.x<A.left||G.x>B.x||G.y<A.top||G.y>B.y){return 0;}if(j&&C.x==j.x&&C.y==j.y){return 0;}function D(L,K){return(K.y-L.y)/(K.x-L.x);
}var F=H,x=B;if(e.submenuDirection=="left"){F=J;x=w;}else{if(e.submenuDirection=="below"){F=B;x=J;}else{if(e.submenuDirection=="above"){F=w;x=H;}}}var y=D(C,F),E=D(C,x),I=D(G,F),z=D(G,x);
if(y<I&&E>z){j=C;return m;}j=null;return 0;};h.on("mouseleave",n).on("enter",q).find(e.rowSelector).on("mouseenter",t).on("mouseleave",p).on("click",u);
a(document).mousemove(g);}})(jQuery);(function(a){if(!a){return;}a.fn.placeholder=function(j){var d={txt:"",cssStr:"",focusClsName:undefined,focusFun:undefined,blurFun:undefined,clsName:undefined};
var c=a.extend({},d,j||{});var b=a(this);var f=b.prop("type");f=f?(f!="password"&&f!="text"?"text":f):"text";if(f=="text"){b.val(c.txt);b.focus(function(k){h(b,c.focusFun);
}).blur(function(){i(b,c.blurFun);});}else{var e;if(!b.next("input").length){e=a("<input />").addClass(c.clsName&&c.clsName.join?c.clsName.join(" "):"");
}else{e=b.next("input").eq(0);}var g={show:{display:""},hide:{display:"none"}};e.focus(function(k){e.css(g.hide);b.css(g.show).focus();c.focusFun&&c.focusFun();
}).val(c.txt);b.css(g.hide).after(e).blur(function(){b.val()?void (0):(e.css(g.show)&&b.css(g.hide));c.blurFun&&c.blurFun();});}function h(l,k){l.val()==c.txt&&l.val("").addClass(c.focusClsName&&c.focusClsName.join?c.focusClsName.join(" "):"");
k&&k();}function i(l,k){l.val()==""?l.val(c.txt).removeClass(c.focusClsName&&c.focusClsName.join?c.focusClsName.join(" "):""):k&&k();}b.setTxt=function(k){if(!b.next("input").length){b.val()==c.txt&&b.val(k);
}else{b.next("input").eq(0).val(k);}c.txt=k;return b;};b.getText=function(){return c.txt;};b.setParam=function(m,l){c[m]=l;return b;};b.getParam=function(l){return c[l];
};return b;};})($);function initInput(b,a){return b.placeholder?b.placeholder(a):null;}function _INIT_HEAD_SEARCH(data){var json;try{json=eval(data.html_content);
}catch(e){}if(json&&json.length){var url=location.pathname;var wordIndex=-1;var tmpFilter;window.__HEAD_SEARCH_WORDS_ARR=[];window.__HEAD_SEARCH_WORDS_OBJ={};
if(/\/jiaju\//.test(url)){wordIndex=0;}else{if(/\/jiancai\//.test(url)){wordIndex=1;}else{if(/\/shipin\//.test(url)){wordIndex=2;}}}for(var k=0,kk=json.length;
k<kk;k++){tmpFilter=json[k].type.split("");if(wordIndex==-1||tmpFilter[wordIndex]==1){__HEAD_SEARCH_WORDS_ARR.push(json[k]);__HEAD_SEARCH_WORDS_OBJ[json[k].text]=json[k];
}}var inpt=$("#JS_MLL_search_header_input")[0];if(__HEAD_SEARCH_WORDS_ARR.length&&inpt&&inpt.value==""){inpt.value=MLL_Header_search_words();inpt.setAttribute("data-sug","none");
inpt.onfocus=function(){this.value="";this.onfocus=function(){};};inpt.onblur=function(){if(this.value==""){inpt.setAttribute("data-sug","none");this.value=MLL_Header_search_words();
this.onfocus=function(){this.value="";this.onfocus=function(){};};}};}}}function MLL_Header_search_words(){var b=__HEAD_SEARCH_WORDS_ARR,a=Math.floor(Math.random()*b.length);
return b[a].text;}function MLL_header_search_submit(){var b=$("#JS_MLL_search_header_input")[0];var d=$("#JS_search_form")[0];var f=b.value+"";f=$.trim(f||"");
var c=f;if(f&&c.replace(/[^\x00-\xff]/g,"**").length<31){var e=$.cookie("search_h");if(e){e=unescape(e);e=e.split("*#");e=a(e,f);if(e.length>9){e.shift();
}e=e.join("*#");e+="*#"+f;}else{e=f+"*#";}e=escape(e);$.cookie("search_h",e,{path:"/",expires:365});}function a(g,k){var j=[];for(var h=0;h<g.length;h++){if(g[h]!=k){j.push(g[h]);
}}return j;}if(!f){return false;}if(window.__HEAD_SEARCH_WORDS_OBJ&&__HEAD_SEARCH_WORDS_OBJ[f]){location.href=__HEAD_SEARCH_WORDS_OBJ[f].href+(__HEAD_SEARCH_WORDS_OBJ[f].href.indexOf("#")>=0?"&":"#")+"kw="+encodeURIComponent(f);
return false;}else{b.value=f;return true;}}
/*mazengliang*251586:2017-04-21 16:50:09*/</script>

<script>
    window._onReadyList = window._onReadyList || [];
    window._QUIZ = 'http://www.meilele.com/diaocha63.html';
    window.DOM = {};
    window.google_tag_params = {
        pagetype: 'home'
    };

    $(function () {
        //顶部导航
        $('.site-nav .drop-title').parent().on({
            'mouseenter': function () {
                jQuery(this).addClass('hover')
            },
            'mouseleave': function () {
                jQuery(this).removeClass('hover')
            }
        });
    })
</script>







<script>
    ;(function () {
        var linkcity = $('#link_city');
        var linkfri = $('#link_fri');
        var moreCityBtn = $('#more_city');
        var moreFriBtn = $('#more_fri');

        if (linkcity.find('.link-content').height() > 20) {
            moreCityBtn.css('display', 'block');
            moreCityBtn.click(function () {
                moreCityBtn.hide();
                linkcity.css('height', 'auto');
            })
        }
        if (linkfri.find('.link-content').height() > 20) {
            moreFriBtn.css('display', 'block');
            moreFriBtn.click(function () {
                moreFriBtn.hide();
                linkfri.css('height', 'auto');
            })
        }
    })()
    ;(function () { //清除电信广告
        function checkIframe(nLen) {
            if (nLen > 10) return; //最多检测10 秒钟
            var bRemove = false;
            var oIframes = document.getElementsByTagName('iframe');
            var oIframe = null;
            if (oIframes == null || oIframes.length == 0) {
                window.setTimeout(function () {
                    checkIframe(nLen + 1)
                }, 1000);
                return;
            }
            var nLength = oIframes.length;
            for (var i = 0; i < nLength; i++) {
                oIframe = oIframes[i];
                var strSRC = oIframe.src;
                if (/72link/.test(strSRC)) {
                    setTimeout(function () {
                        location.reload();
                    }, 1000)
                    throw new Error('发现电信广告');
                }

            }
            if (!bRemove) window.setTimeout(function () {
                checkIframe(nLen + 1)
            }, 1000);
        }
        window.setTimeout(function () {
            checkIframe(0)
        }, 100);
    })();
    //JS域名验证
    (function () {
        function checkEnd(endStr) {
            var url = location.host,
                flag;
            for (var i = 0; i < endStr.length; i++) {
                var d = url.length - endStr[i].length;
                if (d >= 0 && url.lastIndexOf(endStr[i]) == d)
                    return true;
            }
            return false
        }
        var urlList = ['localhost:8080/FitmentStore/data/face.jsp'];
        if (!checkEnd(urlList)) {
            location.href = 'localhost:8080/FitmentStore/data/face.jsp'
        }
    })()
</script><div id="static_dynamic" name="static_dynamic" page_sn="flow" rgn_id="" debug=""></div>
<script type="text/javascript">window.static_dynamic && static_dynamic();</script><script type="text/javascript">
var mchat = mchat || {};
mchat.not2 = true;

//添加顶部"帮助中心"hover
$('#JS_common_head_help').hover(function(){
    $(this).addClass('hover');
},function(){
    $(this).removeClass('hover');
});

</script>
<div id="INIT_Fchat2" class="" style="display: none;width: 58px;height: 127px;right: 5px;top: 190px;_top: expression(eval(document.documentElement.scrollTop+190));background: url(http://image.meilele.com/images/201405/1401178094439.png) 0 0;_background: url(http://image.meilele.com/images/201405/140117892382.gif) 0 0;cursor: pointer;font-size: 12px;z-index: 1500;position: fixed;_position: absolute;overflow: hidden;"><div class="FC_btns FC_number" style="margin-left: 24px; margin-top: -1px; display: none;" id="JS_FC_number2"></div></div>
<script type="text/javascript">
(function(){
	window.mchat = window.mchat || {};

	
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
</script><script type="text/javascript">
(function(){
    var pinyin = $.cookie('region_pinyin');
    if(pinyin && /[a-z]+/ig.test(pinyin)){
        $('#JS_flow_home_link').attr('href','/' + pinyin + '/');
    }
})();
;(function(window){
    //百度推广
    var rtTag = {};
    var data = {};
    var goods = [];
    /**/
        /**/
        goods.push({p_id : '20429',p_price:'2999',p_num:'1'});
        /**/
    /**/
    /*购物车*/
        data = {ecom_cart : {prod : goods}};
    /**/

    rtTag.data = data;
    window.mllSpreadData = ['_trackRTEvent',rtTag];
})(window);
</script>
<script src="${pageContext.request.contextPath }/js/ana.min.js"></script>
<script>window._ana && _ana.push( ['trackView'] );</script>
<script>window._gaq=window._gaq||[];$(window).on("load",function(){window._gaq=window._gaq||[];window.MLLgaq=window.MLLgaq||[];for(var a=0;a<MLLgaq.length;a++){_gaq.push(MLLgaq[a]);
}_gaq.push(["_setAccount","UA-10173353-1"]);_gaq.push(["_setDomainName","meilele.com"]);_gaq.push(["_trackPageview"]);var d=document.createElement("script"),b=new Date();
d.type="text/javascript";d.async=true;d.defer=true;d.src=$.__IMG+"/zximages/js/dc.js?"+b.getFullYear()+(b.getMonth()+1)+(b.getDate()<10?"0"+b.getDate():b.getDate());
var c=document.getElementsByTagName("script")[0];c.parentNode.insertBefore(d,c);});function parseGaData(){_gaq.push([arguments[0],arguments[1],arguments[2],arguments[3]]);
}function gaSetActiveUser(b,a){if(!/isActiveUser=1/.test(document.cookie)&&!/ECSCP_ID=/.test(document.cookie)&&!/ECS_MLL_SE=/.test(document.cookie)){_gaq.push(["_trackEvent","ActiveUser",b+"",a+""]);
if(window.$&&$.cookie){jQuery.cookie("isActiveUser","1",{domain:location.host,path:"/"});}}}window.bd_cpro_rtid="rHnLnHT";_LOAD_SCRIPT_("http://cpro.baidu.com/cpro/ui/rt.js");
_LOAD_SCRIPT_("http://tajs.qq.com/stats?sId=11450600");_LOAD_SCRIPT_("http://tajs.qq.com/gdt.php?sId=23384945");_LOAD_SCRIPT_("http://tajs.qq.com/gdt.php?sId=21253825");
_LOAD_SCRIPT_("http://tajs.qq.com/gdt.php?sId=26418742");_LOAD_SCRIPT_("http://tajs.qq.com/gdt.php?sId=43311811");window.goSpread=function(b){window._hmt=window._hmt||[];
b=b||window.mllSpreadData||["_trackRTEvent",{data:{}}];var a=["_setAccount","d91942b1e6dd95baed4560c0c6d8071b"];window._hmt.push(a);window._hmt.push(b);
return window._hmt;};if(!window.notGoSpread){goSpread();}window.gdt_tracker=window.gdt_tracker||[];window.goGdt=function(a){gdt_tracker.push(["set_source_id","132679"]);
for(var b=0;b<a.length;b++){gdt_tracker.push(a[b]);}gdt_tracker.push(["send"]);_LOAD_SCRIPT_("http://qzs.qq.com/qzone/biz/res/gt.js");};(function(a){if(a.notJuXiao){return false;
}a._mvq=a._mvq||[];_mvq.push(["$setAccount","m-22687-1"]);_mvq.push(["$logConversion"]);_LOAD_SCRIPT_("https:"==document.location.protocol?"https://static-ssl.mediav.com/mvl.js":"http://static.mediav.com/mvl.js");
})(window);if(window.jQuery){jQuery(window).on("load",function(){jQuery.ajax({url:"http://cn-tags.vizury.com/analyze/pixel.php?account_id=VIZVRM1409",dataType:"script",async:true,cache:true,success:function(){window.pixel&&pixel.parse();
}});});}(function(){if(Math.random()>0.1||!window.jQuery){return;}$(window).on("load",function(){var g;var c=function(i){var j=$(i);var h=j.parent("a");
if(!h&&h.length!=1){return false;}var k=/\/category-.*\/goods-(\d+)\.html/.exec(h.prop("href"));if(k&&k[1]){i.__goodsId=k[1];i.__offsetTop=i._offsetTop||j.offset().top;
return k[1];}else{return false;}};var d=function(h){h.__isSendGa=true;window._mllga&&window._mllga({utmac:"UA-53663717-1",utme:"5("+h.__goodsId+"*"+(h.getAttribute("data-src")||h.src)+")"});
};var b=document.images;var f=[];for(var a=0,e=b.length;a<e;a++){if(c(b[a])){f.push(b[a]);}}scrollResponse=function(){if(g){clearTimeout(g);}g=setTimeout(function(){var i=window.pageYOffset||document.documentElement.scrollTop||document.body.scrollTop||0;
for(var h in f){if(!f[h].__isSendGa&&i+document.documentElement.clientHeight>f[h].__offsetTop&&i<f[h].__offsetTop+(f[h].height||f[h].cilentHeight)){d(f[h]);
}}},300);};scrollResponse();$(window).on("scroll",scrollResponse);});})();$(window).on("load",function(){if(!window._mllga){return;}var c=/thg=(.+)&adg=(.+)&adn=(.+)&ado=(.+)&adc=(\d+)/i;
var a=function(e){var h=c.exec(e);if(h&&h.length==6){for(var g=1;g<=5;g++){if(h[g]){try{h[g]=decodeURIComponent(h[g].replace("*",""));}catch(f){}}}h.push(window.jQuery&&window.jQuery.cookie("region_name"));
return h;}return false;};var d=function(e,f){if(!f){return;}var g="";if(window.getCookie&&getCookie("MLL_CID")){g="8(CID)9("+getCookie("MLL_CID")+")11(2)";
}_mllga({utmac:"UA-52467404-2",utmt:"event",utme:"5("+e+"_"+f[1]+"*"+e+"_"+f[2]+"*"+e+"_"+f[3]+"_"+f[4]+"_"+f[6]+")"+g});};if(c.test(location.href)){var b=a(location.href);
d("ad_click",b);window._ana&&window._ana.push(["trackEvent","ad_click",b[1],b[2],b[3],b[4],b[6]]);}setTimeout(function(){var j=document.links;var h=[],f;
for(var e=0,l=j.length;e<l;e++){f=j[e].getAttribute("href");if(j[e]&&f&&c.test(f)){h.push(a(f));}}for(var g=0;g<h.length;g++){if(h[g]&&Math.random()<0.1){d("ad_show",h[g]);
}}},5000);});$(window).on("load",function(){var c=location.search;if(c){c=c.replace("?","").split("&");for(var b=0;b<c.length;b++){if(c[b].indexOf("from=MT")===0){var a=new Image;
a.src="/solr_api/mss/message/statistic.do?fromUrl="+encodeURIComponent(location.href);return;}}}});(function(){var a=window.google_tag_params||{ecomm_pagetype:"other"};
var c=new Image();var d=[];for(var b in a){d.push("data."+b+"="+encodeURIComponent(a[b]));}var e="//googleads.g.doubleclick.net/pagead/viewthroughconversion/992307345/?value=0&label=_2h2CK-jsgQQkdGV2QM&guid=ON&script=0&"+d.join("&");
if(window.jQuery){jQuery(window).on("load",function(){c.src=e;});}else{window.onload=function(){c.src=e;};}})();window.criteo_q=window.criteo_q||[];window.goCriteo=function(c){if(criteo_q.length==0){criteo_q=[{event:"viewHome"}];
}var b=window.getCookie&&window.getCookie("ECS[email]");var a=[{event:"setAccount",account:17380},{event:"setCustomerId",id:b||""},{event:"setSiteType",type:"d"}];
Array.prototype.push.apply(criteo_q,a);_LOAD_SCRIPT_("http://static.criteo.net/js/ld/ld.js",c);};if(!window.notGoCriteo){goCriteo();}var _hmt=_hmt||[];
$(window).on("load",function(){var b=document.createElement("script");b.src="https://hm.baidu.com/hm.js?d91942b1e6dd95baed4560c0c6d8071b";var a=document.getElementsByTagName("script")[0];
a.parentNode.insertBefore(b,a);});
/*nielinying*252527:2017-05-18 17:41:10*/</script>
<script type="text/javascript">
var _dxt = _dxt || [];
_dxt.push(["_setUserId", $.cookie('MLL_CID')]);
$(window).on('load', function() {
    var hm = document.createElement("script");
    hm.src = "//datax.baidu.com/x.js?si=&dm=meilele.com";
    var s = document.getElementsByTagName("script")[0];
    s.parentNode.insertBefore(hm, s);
});
//href跳转至页面固定位置
$(document).ready(function() {
    var achor = location.href.match(/href\=\[(.*)\]/);
    if ( achor && achor[1] ) {
        setTimeout(function(){
            $('html, body').animate({scrollTop: $('#'+achor[1]).offset().top}, 0, 'linear');
        }, 10);         
    }
});
</script>





<script>

//腾讯动态创意，放在ga.lbi之后
;(function(window){
    var data = [];
    /**/
    /**/
        /**/
        data.push(["add_action","ADD_TO_CART",'20429','http://' + window.location.host + '/category-chuang/goods-20429.html','277','床','212','1']);
        /**/
    /**/
    /**/
    window.goGdt && window.goGdt(data);
})(window);
</script>

<script>
    $(document).ready(function(){
        _gift.css();
        _gift.init();
    })
    
    var _gift = function () {
        var globalgiftData = {},total_num = 0;
        
        var getGiftData = function(){
            return globalgiftData;
        }
        var setGiftData = function(obj){
            globalgiftData = obj
        }
        var getNum = function(){
            return total_num
        }
        var setNum = function(num){
            total_num = num;
        }
        var totalNum = function(){
            var target = $('tr[data-goods_num]'),num = 0;
            for(var i=0;i<target.length;i++){
                num += +$(target[i]).attr('data-goods_num')
            }
            setNum(num);
        }
        var cssInit = function(){
            var css = [];
            css.push('.l .label{height: 19px;line-height: 19px;padding: 1px 3px;_padding-top:2px;background: #c9033b;color: #fff;margin-right: 6px;}');
            css.push('.l .rose{margin-left: 6px;color: #c9033b;')
            $.insertStyle(css.join(''));
            style();
        }
        var init = function(){
            totalNum();
            var id_str = "20429",rec_str= "27442778",target = rec_str.split(',')
            var num_str='';
            for(var i=0;i<target.length;i++){
                var n = $('tr[data-rec_id="'+target[i]+'"]').find('.m_goods_num').attr('data-num');
                if($('input[data-rec_id="'+target[i]+'"]').length){
                    num_str +=$('input[data-rec_id="'+target[i]+'"]').val()+","
                } else {
                    num_str += n +","
                }
            }
            num_str = num_str.substring(0,num_str.length-1)

            //商品id集合
            var recs_id = rec_str.split(',');
            if(id_str&&rec_str&&num_str){
                $.ajax({
                    url: '/add_cart/?step=queryMainGoodsToGiftsWithStock',
                    data: {"goodsId":id_str,"goodsNumber":num_str,"goods_rec_id":rec_str},
                    type: 'post',
                    dataType: 'json',
                    async: false,
                    success: function(data) {
                        setGiftData(data);
                        if(data.error == 0){
                            
                            for(var i=0;i<recs_id.length;i++){
                                var g_rec_id = recs_id[i],target = '#JS_cart_tr_' + g_rec_id;
                                var gift_kind_number = $('#JS_cart_tr_'+g_rec_id).attr("data-gift_kind");
                                
                                if(data.result[g_rec_id]&&data.result[g_rec_id].hasGifts&&data.result[g_rec_id].giftsOnSaleState != 2){
                                    var html = '';
                                    html += '<tr class="JS_cart_tr_'+ g_rec_id +'"><td></td><td class="l" colspan="9" style="text-align:left;padding:0"><div class="zp"><a id="goods_'+ data.result[g_rec_id].goodsId +'_'+ g_rec_id +'" data-goods_num="'+ data.result[g_rec_id].goodsNum +'" style="margin-left:0;"  class="rose" href="javascript:;" data-num="'+ data.result[g_rec_id].giftTypeNum +'">选择赠品&nbsp;&gt;&nbsp;&nbsp;&nbsp;<span id="JS_gift_tip_'+ g_rec_id +'" style="font-weight:bold;"></span></a><span class="JS_gift_zp_'+ g_rec_id +'" style="color:#F60;font-size:12px">赠品已送完</span></div></td></tr>';
                                    
                                    if($('.JS_cart_tr_'+ g_rec_id).length){
                                        $('.JS_cart_tr_'+ g_rec_id).remove()
                                    }   
                                 
                                    $(target).after(html);
                                    
                                    var gift_kind_checknumer = $('.mgift_id_'+g_rec_id).length;
                                        
                                    if(gift_kind_checknumer == 0) {
                                        $("#JS_gift_tip_"+g_rec_id).text('您还未选择！')
                                    }else {
                                        $("#JS_gift_tip_"+g_rec_id).text('')
                                    }

                                    //只有赠品中至少有一个不为虚拟商品都不显示赠品已送完
                                    var aR = [];
                                    if( data.result[g_rec_id]['gifts'] ){
                                        for( var j = 0,jj = data.result[g_rec_id]['gifts'].length;j < jj; j++ ){
                                            var gifsData = data.result[g_rec_id]['gifts'][j]['gift_attribute'];
                                            if( gifsData != 4 ){
                                                aR.push(g_rec_id);
                                            }
                                        }
                                    }
                                    function unique(arr) {
                                        var result = [], hash = {};
                                        for (var i = 0, elem; (elem = arr[i]) != null; i++) {
                                            if (!hash[elem]) {
                                                result.push(elem);
                                                hash[elem] = true;
                                            }
                                        }
                                        return result;
                                    }
                                    var aRnew = unique(aR);
                                    for(var k = 0,kk = aRnew.length; k < kk; k++ ){
                                        jQuery('.JS_gift_zp_'+aRnew[k]).addClass('none');
                                    }
                                }

                            }
                            //監聽選擇按鈕事件
                            $('.rose').unbind().on('click',function(){
                                var targetId = $(this).closest('tr').attr('class');

                                var _val = $('#'+targetId).find('.l').siblings('.m_goods_num').find('input'),_id = $(this)[0].id.split('_')[1],_rec = $(this)[0].id.split('_')[2],_count = $(this).attr('data-num');
                                
                                if(_val.length) {
                                    _val = _val.val();
                                } else {
                                    _val = $(this).closest('.l').siblings('.m_goods_num').attr('data-num')
                                }
                                _alert(_id,_rec,_val,_count);
                            })

                        } else if(data.error==1){
                            if(data.msg){
                                alert(data.msg);
                            }
                        }
                    }
                });
            }
        }
        
        var html = function(){
            var dom = '';
            dom += '<div class="g_t_bar clearfix"><span class="g_title">选择赠品</span><span id="gift_tip" style="font-size:12px;line-height:24px;margin-left:6px;float:left;"></span><span class="g_close">x</span></div>';
            dom += '<ul class="g_content"></ul>';
            dom += '<div class="g_btn"><a id="m_g_submit" href="javascript:;">确定</a><span class="g_warn"></span></div>';
            return dom
        };
        
        var ajaxInit = function(id_str,rec_str,num_str,count) {
            var dom = '';
            $.ajax({
                url: '/add_cart/?step=queryMainGoodsToGiftsWithStock',
                data: {"goodsId":id_str,"goodsNumber":num_str,"goods_rec_id":rec_str},
                type: 'post',
                dataType: 'json',
                async: false,
                success: function(data) {

                    if(data&&data.result&&data.result[rec_str].gifts){
                        for(var i=0;i<data.result[rec_str].gifts.length;i++){
                            var gn = data.result[rec_str].gifts[i].giftName;
                            if(gn.length > 17){
                                gn = gn.substring(0,16)+'...'
                            }

                            var gifsData = data.result[rec_str].gifts[i];

                            //判断赠品中是否有虚拟商品
                            if( gifsData['gift_attribute'] == 4 ){ //等于4是虚拟商品

                                dom += '<li class="g_list clearfix"><input disabled="true" class="g_cb" type="checkbox" id="gr_'+ data.result[rec_str].gifts[i].giftId +'" /><a href="'+ data.result[rec_str].gifts[i].giftUrl +'"><img class="g_img" width="70" height="45" src="http://img004.mllres.com/'+ data.result[rec_str].gifts[i].giftThumb1 +'"></a><span class="g_c"><a title="'+ data.result[rec_str].gifts[i].giftName +'" href="'+ data.result[rec_str].gifts[i].giftUrl +'">'+ gn +'</a></span><span class="g_n">' + data.result[rec_str].gifts[i].giftNumber+'</span><p style="margin:50px 0 0 37px;color:#F60">赠品已送完</p></li>';
                            }else{
                                var flag = data.result[rec_str].gifts[i].checked?'checked':''
                                dom += '<li class="g_list clearfix"><input '+ flag +' class="g_cb" type="checkbox" id="gr_'+ data.result[rec_str].gifts[i].giftId +'" /><a href="'+ data.result[rec_str].gifts[i].giftUrl +'"><img class="g_img" width="70" height="45" src="http://img004.mllres.com/'+ data.result[rec_str].gifts[i].giftThumb1 +'"></a><span class="g_c"><a title="'+ data.result[rec_str].gifts[i].giftName +'" href="'+ data.result[rec_str].gifts[i].giftUrl +'">'+ gn +'</a></span><span class="g_n">' + data.result[rec_str].gifts[i].giftNumber+'</span></li>';
                            }
                        }
                        $('.g_content').empty().html(dom);
                        $('#gift_tip').text('赠品最多赠送'+ count +'种，实际赠送数量根据库存而定')
                        checkInit(count)
                    }
                }
            });
        }
        var style = function(){
            var g_css = [];
            g_css.push('.gift_m .in{border:3px solid #bbb !important}');
            g_css.push('.gift_m .htmls{padding: 0 !important}');
            g_css.push('.gift_m .g_t_bar{background-color:#f1f1f1;padding:10px 8px;font-size:16px;border-bottom: 1px solid #e6e6e6}');
            g_css.push('.gift_m .g_title{float:left;font-family:"微软雅黑"}');
            g_css.push('.gift_m .g_close{float:right;font-weight:bold;color:#bbb;font-family:"黑体";cursor:pointer}');
            g_css.push('.gift_m .g_content{height:270px;overflow:auto}');
            g_css.push('.gift_m .g_list{padding: 10px 25px 8px 0;border-bottom: 1px solid #e6e6e6}');
            g_css.push('.gift_m .g_cb,.gift_m .g_img,.gift_m .g_c{float:left;margin-left:10px}');
            g_css.push('.gift_m .g_cb{margin-top:15px}');
            g_css.push('.gift_m .g_n{float:right}');
            g_css.push('.gift_m .g_c,.gift_m .g_n{line-height:45px}');
            g_css.push('.gift_m .g_btn{text-align:left;padding: 14px 8px;}');
            g_css.push('.gift_m .g_btn a {margin:0 10px;padding: 4px 12px;border:1px solid #bbb}');
            g_css.push('.gift_m .g_btn a:hover {color: #333 !important;text-decoration:none}')
            g_css.push('.gift_m .g_btn a.g_hover:hover {color: #bbb !important}')
            g_css.push('.gift_m .g_btn .g_warn {color: #c9033b}')
            g_css.push('.gift_tr td {padding: 4px}')
            $.insertStyle( g_css.join('') );
        };
        var _alert = function(id,rec,num,count){
            var lbi;
            $.lightBox(html(), null , null , null , null , true , 'gift_m');
            lbi = $.lightBoxId;
            ajaxInit(id,rec,num,count);
            closeInit(lbi);
            
            $('#m_g_submit').on('click',function(){
                if($(this).hasClass('g_hover')){
                    return;
                }
                var list = $('.g_cb:checked');
                var giftId ='';
                for(var i= 0;i<list.length;i++){
                    giftId += list[i].id.split('_')[1]+','
                }
                giftId = giftId.substring(0,giftId.length-1)
                
                $.ajax({
                    url: '/add_cart/?step=changeCartGifts',
                    data: {"goodsId":id,"goodsNumber":num,"giftId":giftId,"goods_rec_id":rec},
                    type: 'post',
                    dataType: 'json',
                    success: function(data) {
                        if(data.error == 0){

                            gift_tr(data.result[rec].gifts,rec,id);
                            var gift_kind_checknumer = $('.mgift_id_'+rec).length;                            
                            
                            if(gift_kind_checknumer == 0) {
                                $("#JS_gift_tip_"+rec).text('您还未选择！')
                            }else {
                                $("#JS_gift_tip_"+rec).text('')
                            }
                            globalgiftData = data;
                            refreshPrice(rec);
                            $.closeLightBox(lbi)
                        } else if(data.error == 1){
                            if(data.msg){
                                alert(data.msg)
                            }
                        }
                    }
                }); 
            })
        };
        
        var gift_tr = function(arr,rec){
            var dom = '';
            for(var i=0;i<arr.length;i++){
                var zhekou = arr[i].giftPrice * arr[i].giftNumber;
                
                dom += '<tr class="gift_tr mgift_id_'+ rec +'" giftId="'+arr[i].giftId+'"><td style="padding: 4px 0"></td><td colspan="9" style="padding:0 0 8px;line-height:1.5;" class="l"><a href="'+ arr[i].giftUrl +'" target="_blank"><span class="discount" style="background:#c9033b;margin:0 6px 0 0;padding:1 6px;float:left">买赠</span><span style="color:#888;max-width:480px;overflow:hidden;white-space:nowrap;text-overflow:ellipsis;float:left;margin-right:4px">'+arr[i].giftName+'</span><span class="gifts_num" style="float:left;color:#888">x'+arr[i].giftNumber+'</span></a></td></tr>'
            }
            var list = ".mgift_id_"+rec;
            $(list).remove();
            var parentDom = 'tr[data-rec_id="'+ rec +'"]';
            $(parentDom).next().after(dom);
        };
        
        var checkInit = function(num){
            $('.g_cb').unbind().on('click',function(){
                var len = $('.g_cb:checked').length
                if(len>num){
                    $('.g_warn').text('选择的赠品种类超过可选数量')
                    $('.gift_m .g_btn a').css({'background-color':'#eee','color':'#bbb','cursor':'default'})
                    $('.gift_m .g_btn a').addClass('g_hover');
                } else {
                    $('.g_warn').text('');
                    $('.gift_m .g_btn a').css({'background-color':'#fff','color':'#333','cursor':'pointer'})
                    $('.gift_m .g_btn a').removeClass('g_hover');
                }
            })
        };
        var closeInit = function(id){
            $('.g_close').unbind().on('click',function(){
                $.closeLightBox(id)
            })
        };
        return {
            css: cssInit,
            init: init,
            alert:_alert,
            close:close,
            tr:gift_tr,
            getGiftData:getGiftData,
            setGiftData:setGiftData,
            getNum:getNum,
            setNum:setNum
        }
        
    }()
</script>



<div id="JS_back_to_top" class="back_to_top">
<div class="JS_back_to_top_hover back_to_top_hover_zoom">
<div class="back_to_top_tip">返回顶部</div><div class="in_box back_to_top_top">
</div></div></div><div id="criteo-tags-div" style="display: none;">
<iframe height="0" width="0" src="./我的购物车_files/dis.html" style="display: none;">
</iframe></div><div id="Fchat1"><div class="FC_btns" style="width:77px;height:116px;margin-left:0px;margin-top:0px;" id="JS_FC_chat" onclick="mchat.openui();return false;"></div><div class="FC_btns" style="width:77px;height:53px;margin-left:0px;margin-top:118px;" id="JS_FC_click" onclick="mchat.showSmsList();return false;"></div>
<div class="FC_btns" style="width:77px;height:20px;margin-left:0px;margin-top:172px;" id="JS_FC_min" onclick="mchat.hide();return false;"></div><div class="FC_btns FC_number" style="margin-left: 70px; margin-top: 8px; display: none;" id="JS_FC_number" onclick="mchat.openui(null,{click:&#39;number&#39;});return false;"></div>
<div class="FC_btns" style="width: 34px;height: 8px;overflow: hidden;background: url(http://image.meilele.com/mchat/images/bf.gif) 0 0 no-repeat;margin-left: 22px;margin-top:32px;z-index:1499;"></div>
</div><div id="Fchat2" class="FC_hide"><div class="FC_btns FC_number" style="margin-left:24px;margin-top:-1px;" id="JS_FC_number2"></div></div><div id="FchatMsg" style="display: none;"></div><div id="FchatPoMsg"></div></body>
</html>