<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'myinfo.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="shortcut icon" href="http://image.meilele.com/favicon.ico" />
<link rel="stylesheet" href="http://image.meilele.com/css/mll.common.user.min.css?20160311" />
<link href="http://image.meilele.com/css/user/user_interface.min.css" rel="stylesheet" type="text/css"/>
<script>if(/ipad_from=1/.test(location.search+location.hash+document.cookie)||window._ipad_from){window._ipad_from=true;window.__notAd=1;window._not_back_to_top=true;}window.getCookie=function(a){var e;if(document.cookie&&document.cookie!==""){var d=document.cookie.split(";");var f=d.length;for(var c=0;c<f;c++){var b=d[c].replace(/(^\s*)|(\s*$)/g,"");if(b.substring(0,a.length+1)==(a+"=")){e=decodeURIComponent(b.substring(a.length+1));break;}}}return e;};window.setCookie=function(a,e,d,c,g){d=d||365;g=g||"/";var b=location.host.split(".");if(b.length==3){b.shift();}c=c?";domain="+c:(";domain=."+(b.join(".")));var f=new Date();f.setTime(f.getTime()+parseInt(d,10)*24*60*60*1000);document.cookie=a+"="+encodeURIComponent(e)+(d=="session"?"":";expires="+f.toGMTString())+c+";path="+g;};window._mllga=function(a){var g=(Math.random()+"").replace("0.","").substr(0,9)-0;var e=parseInt(new Date()/1000);var d=(Math.random()+"").replace("0.","").substr(0,9)-0;var f={utmwv:"5.6.0dc",utms:1,utmn:g,utmhn:location.host,utme:"8(COOKIE)9("+document.cookie.replace(/[()]/g,"")+")11(2)",utmcs:"UTF-8",utmdt:"notset",utmhid:e,utmp:location.host+location.pathname+location.search,utmht:+new Date(),utmac:"UA-48396005-1",utmcc:"__utma=165027242."+d+"."+e+"."+e+"."+e+".1;+__utmz=165027242."+e+".1.1.utmcsr=(direct)|utmccn=(direct)|utmcmd=(none)"};for(var c in a){if(a[c]!==undefined){f[c]=a[c];}}var h=[];for(var c in f){h.push(c+"="+encodeURIComponent(f[c]));}var b=new Image();b.src="http://stats.g.doubleclick.net/__utm.gif?"+h.join("&");};(function(){window.onerror=function(e,d,b){window.onerror._root=window.onerror._root||{};var c=encodeURIComponent(e+"").replace(/\W/g,"");if(window.onerror._root[c]){return;}_mllga({utme:"8(COOKIE)9("+document.cookie.replace(/[()]/g,"")+")11(2)",utmdt:navigator.userAgent+"||"+e+"||"+d+"||"+b,utmac:"UA-48396005-1"});window.onerror._root[c]=true;};var a=function(){setTimeout(function(){window._gaq=window._gaq||[];window._ana=window._ana||[];if(_ana.push==Array.prototype.push){throw new Error("亲，_ana未初始！");}if(_gaq.push==Array.prototype.push){throw new Error("亲，_gaq未初始！");}},10000);};if(window.addEventListener){window.addEventListener("load",a,false);}else{if(window.attachEvent){window.attachEvent("onload",a);}}})();(function(){if(window.__notAd){return;}var c=document.createElement("script");c.type="text/javascript";c.async=true;var b=document.getElementsByTagName("script")[0];var a=new Date();c.src="http://image.meilele.com/js/recad.min.js?"+a.getFullYear()+a.getMonth()+a.getDate();b.parentNode.insertBefore(c,b);})();window._gaq=window._gaq||[];window.MLLgaq=window.MLLgaq||[];window._onReadyList=window._onReadyList||[];window._ana=window._ana||[];_ana.baseTime=_ana.baseTime;_gaq.push(["_setAccount","UA-10173353-1"]);_gaq.push(["_setDomainName","meilele.com"]);(function(i){if(getCookie("MLL_CID")){_gaq.push(["_setCustomVar",1,"CID",getCookie("MLL_CID"),2]);}var l=(location.search+"").replace("?","").split("&");var g={};for(var b=0,a=l.length;b<a;b++){var j=l[b].split("=");g[j[0]]=j[1];}var h=((location.hash+"").replace("#","")).split("#")[0].split("&");for(var b=0,a=h.length;b<a;b++){var j=h[b].split("=");h[j[0]]=j[1];}var f="";if(location.pathname.indexOf("/category-9999/")>=0&&g.keywords){f=g.keywords;}else{if(h.kw||g.kw){f=h.kw||g.kw;}}try{f=decodeURIComponent(f);}catch(c){}if(f&&window._ana){_ana.push(["trackEvent","siteSearch",f]);}})(window);(function(){if(window._IS_GET_TAG){return;}window._IS_GET_TAG=true;var b="utag";var a=18;if(/^\/article/i.test(location.pathname)){b="atag";}window._onReadyList=window._onReadyList||[];_onReadyList.push(function(){$.ajax({url:"/java_api/jmll/tag/getTag.do?u="+encodeURIComponent(location.pathname),cache:true,dataType:"json",success:function(o){var e=$.cookie(b)||"";var n=o||{};var h={},i=[],c=[],j=[];var m=function(k){k=k-0;k="00"+k.toString(36);return k.substr(k.length-2,2);};e=e.split("*");for(var g=0,d=e.length;g<d;g++){if(e[g]&&e[g].length==5){var l=e[g].substr(0,3);var f=parseInt(e[g].substr(3,2),36);h[l]={key:l,number:f};i.push(h[l]);}}for(var g in n){if(h[g]){h[g].number+=n[g];}else{h[g]={key:g,number:n[g]};}h[g].thisPage=true;c.push(h[g]);}c.sort(function(p,k){return k.number-p.number;});for(g=0,d=c.length;g<d;g++){j.push(c[g].key+m(c[g].number));}for(g=0,d=i.length;g<d;g++){if(!i[g].thisPage){j.push(i[g].key+m(i[g].number));}}if(j.length>a){j.length=a;}$.cookie(b,j.join("*"),{expires:90,domain:".meilele.com",path:"/"});window._SITETAGS={tags:h,thisPageTag:n};if(window._SITETAGSCALLBACK){_SITETAGSCALLBACK(_SITETAGS);}}});});})();(function(){if(!window.getCookie("MLL_CID")||!window.getCookie("MA_si")){new Image().src="/_b.gif?_="+new Date().getTime().toString(36);}var b=parseInt(window.getCookie("_SC_"))||0,a=parseInt(window.getCookie("_SD_"))||0;if(!window.getCookie("_SC_")){new Image().src="/_c.gif?_="+new Date().getTime().toString(36);}else{!a&&window.setCookie("_SC_",b+1,3650,".meilele.com");}window.setCookie("_SD_",a+1,"session",".meilele.com");})();
/*leihao:2016-11-21 17:46:13*//*laidezhong:2014-12-02 19:44:58*/</script>
<style type="text/css"></style>
  </head>
  
  <body>
  <style type="text/css">
.content-one{padding: 10px 30px;}
.content-list{margin-top:15px;}
.content-one .u-info{position: relative;}
.content-one .u-head{width: 110px;height: 110px;border:none;border-radius: 50%;overflow: hidden;margin:20px 20px 20px 0;}
.content-one .u-head img{width:110px;height: 110px;}
.content-one .u-level{width:151px;height: 117px;padding:20px 38px 20px 0;border-right: dashed 1px #efefef;}
.content-one .u-level .name{color: #333;font-size: 18px;}
.content-one .u-level .i-mes{margin-left: 10px;position: relative;display: inline-block;width:22px;height: 20px;background: url(http://image.meilele.com/images/user/user_bg.png) -60px -41px  no-repeat;}
.content-one .u-level .mes-num{position: absolute;display: inline-block;min-width: 11px; height: 15px;line-height: 15px;background: #ed4c4c;border-radius: 17px; color: #fff;font-style: normal;left:11px;top:-7px;font-size: 12px;text-align:center;padding:1px 3px;}
.content-one .u-level .mem-lev, .content-one .u-level .secur-lev{height:22px;line-height:22px;margin-top:6px; font-size: 12px;}
.content-one .u-level .t{color: #666;}
.content-one .u-level .mem-lev .i-mem-lev{display: inline-block;width:17px;height: 17px;margin-left:10px;vertical-align:-3px;background: url(http://image.meilele.com/images/user/user_bg.png) -105px -43px  no-repeat;}
.content-one .u-level .t-green{color: #25b957;}
.content-one .u-level .lev-bar-bg {display: inline-block;margin-left:8px;width: 56px;background: #e0e0e0;height: 8px;border-radius: 4px;position: relative;}
.content-one .u-level .lev-bar {display: inline-block; width: 28px; height: 8px; position: absolute; border-radius: 4px; background-color: #25b957; top: 0; left: 0;}
.content-one .bind-lev{margin-top: 10px;margin-left:-1px;font-size: 12px;}
.content-one .bind-lev .i-valid{display: inline-block;margin-right:4px;width:28px;height: 28px;background: url(http://image.meilele.com/images/user/user_bg.png) 0 -127px  no-repeat;}
.content-one .bind-lev .i-valid.v1{background-position: 0 -155px;}
.content-one .bind-lev .i-valid.v2{background-position: -29px -127px;}
.content-one .bind-lev .i-valid.v3{background-position: -29px -155px;}
.content-one .bind-lev .i-valid.v4{background-position: -57px -127px;}
.content-one .bind-lev .i-valid.v5{background-position: -57px -155px;}
.content-one .bind-lev .i-valid.v6{background-position: -86px -127px;}
.content-one .bind-lev .i-valid.v7{background-position: -86px -155px;}
.content-one .u-order-link{padding: 30px 40px;border-right:dashed 1px #efefef;}
.content-one .u-order-link li{float: left;display:inline;margin-right: 36px;width:66px;}
.content-one .u-order-link li.last{margin-right: 0;}
.content-one .u-order-link li .link-icon{display: block;width:66px;height: 66px;background:url(http://image.meilele.com/images/user/user_bg.png) 0 -61px  no-repeat;}
.content-one .u-order-link li .link-icon.i2{background-position: -66px -61px;}
.content-one .u-order-link li .link-icon.i3{background-position: -132px -61px;}
.content-one .u-order-link li .link-icon.i4{background-position: -198px -61px;}
.content-one .u-order-link li .link-txt{margin-top: 10px;display: block;height: 24px;line-height: 24px;text-align:center;color: #333;}
.content-one .coin-box{padding: 30px 25px 0 0;}
.content-one .coin-box td{height: 28px;color:#666;font-size: 14px;}
.content-one .coin-box td a{color: #444;font-weight: bold;}
.content-one .u-info .dot{position: absolute;width:15px;height: 15px;background:url(http://image.meilele.com/images/user/user_bg.png) -162px -230px  no-repeat;right:170px;top:-16px;}
.content-one .u-info .down-dot{top:161px;}

/*我的订单*/
.content-list .def-act-filter{height: 23px; border: solid 1px #ebebeb; position: relative;}
.content-list .def-act-filter .act-show {display: inline-block; height: 23px; line-height: 23px; padding-right: 20px; text-indent: 6px; color: #666; position: relative;}
.content-list .def-act-filter .i-arrow { position: absolute; width: 12px; height: 6px; background: url(http://image.meilele.com/images/user/user_bg.png) -135px -5px no-repeat; top: 9px; right: 2px; overflow: hidden;}
.content-list .def-act-filter.hover .i-arrow{transform:rotateX(180deg);-o-transform:rotateX(180deg);-ms-transform:rotateX(180deg);-moz-transform:rotateX(180deg);-webkit-transform:rotateX(180deg);}
.content-list .def-act-filter ul {display: none; background-color: #fff; border: solid 1px #ebebeb; border-radius: 2px; position: absolute; right: -1px; top: 23px;z-index: 300;}
.content-list .def-act-filter.hover ul{display: block;}
.content-list .def-act-filter ul li a {display: block; height: 26px; line-height: 26px; padding: 0 20px 0 6px; background-color: #fff; white-space: nowrap;color:#666;}
.content-list .def-act-filter ul li a:hover{background-color: #ed4c4c;color: #fff;}
.content-list .def-order{width: 100%;border-collapse: collapse;}
.content-list .def-order td{height: 96px;border-top:solid 1px #ebebeb;border-bottom: solid 1px #ebebeb;text-align: center;}
.content-list .def-order .o-img-td{font-size: 0;text-align: left;}
.content-list .def-order .o-img-td a{display: inline-block;margin-right: 15px;}
.content-list .def-order .o-dot{display: inline-block;height: 67px;line-height: 58px;font-size: 30px;color: #ccc;}
.content-list .order-trace-a i{display: inline-block; width: 12px; height: 6px; background: url(http://image.meilele.com/images/user/user_bg.png) -135px -13px no-repeat;}
.content-list .track{position: relative;z-index: 4;}
.content-list .track .trackInfo {border: 1px solid #eacaa5;border-radius:2px;background: #fffae3; padding: 5px 10px 10px 10px; margin-top: 7px;position: absolute;width: 513px; top: 0; right: 8px; z-index: 10;}
.content-list .track .trackInfo .out {width: 0; height: 0; position: absolute; top: -7px; right: 30px;border-left: 7px solid transparent;border-right: 7px solid transparent;border-bottom: 7px solid #eacaa5;_border-left-color: tomato;_border-right-color: tomato;_filter: chroma(color=tomato);}
.content-list .track .trackInfo .in {width: 0; height: 0; position: absolute; top: -6px; right: 31px;border-left: 6px solid transparent;border-right: 6px solid transparent;border-bottom: 6px solid #fffae3;_border-left-color: tomato;_border-right-color: tomato;_filter: chroma(color=tomato);}
.content-list .track .trackList{width: 100%;}
.content-list .track .trackInfo th{font-weight: normal;border-bottom: dotted 1px #ebebeb; color: #999; height: 24px;text-align: left;}
.content-list .track .trackInfo td{color: #666;height: 20px;text-align: left;border: none;}
.content-list .oper a{color: #0072ca;}
.content-list .oper .btn_s{display: block; width: 80px; margin: 0 auto; padding: 3px; margin-bottom: 5px; background-color: #ed4c4c; border-radius: 4px;color: #fff;}


.tabConts {padding-top:20px;}
.hotSlide {position: relative; height: 157px;}
.hotSlide .container {position: absolute; width: 880px; height: 157px; overflow: hidden; left: 35px;}
.hotSlide .hot_list {position: absolute; height: 157px;}
.hotSlide .hot_list .listItem {float: left; width: 160px; height: 157px; line-height: 1.6;margin-right: 20px;}
.hotSlide .next, .hotSlide .prev {width: 18px;height: 27px; background:url(http://image.meilele.com/images/user/user_bg.png) -170px -16px  no-repeat; position: absolute; left: 6px; top: 40px; display: block; text-indent: -999em;}
.hotSlide .next {background-position: -192px -16px; left: 930px;}
.hotSlide .hot_list .listItem p{margin:14px 0 4px 0;line-height:1;}

.avatar-layer {top: 80px;}
.ava-edit {width: 682px;border: solid 5px rgba(85,85,85,0.3);border-radius: 5px;background: #fff;margin-left: auto;margin-right: auto;}
.ava-edit .header {height: 40px;padding: 0 10px;background: #eee;font-weight: bold;}
.ava-edit .header span {padding-left: 10px;font-size: 15px;font-family: '微软雅黑';color: #454545;float: left;}
.ava-edit .header span, .ava-edit .header a {display: inline-block;height: 40px;line-height: 40px;vertical-align: top;}
.ava-edit .header a {font-size: 20px;text-decoration: none;color: #ccc;float: right;}
.content-one .u-level p.name span{display:inline-block;max-width:100px;overflow:hidden;white-space:nowrap;text-overflow:ellipsis;}
</style>
    <div class="clearfix u-info">
        <div class="Left u-head">
            <a href="javascript:;" onclick="avatar.show();" title="修改我的头像">
                <img class="avatar" src="http://img001.mllres.com/zximages/data/avatar/1366070998098619463.jpg" />
            </a>
        </div>
        <div class="Left u-level">
            <p class="name"><span title="絮落锦乡">絮落锦乡</span><a href="/user/?act=news" target="_blank" class="i-mes"><i class="mes-num JS_mes_num">0</i></a></p>
            <p class="mem-lev mem-le-1">
                <a href="http://www.meilele.com/article_cat-6/article-9930.html" target="_blank" class="t">注册会员</a><i class="i-mem-lev"></i>
            </p>
            <p class="secur-lev">
                <span class="t">账户安全</span>
                <span class="lev-bar-bg"><span class="lev-bar" style="width:14px;"></span></span>
                <span class="t  t-green ">25%</span>
            </p>
            <p class="bind-lev">
                                <span class="i-valid iv0"></span>
                                                <a href="/user/?act=verify_email" title="验证邮箱" target="_blank"><span class="i-valid v3"></span></a>
                                                <a href="/user/?act=set_tradepwd" title="设置交易密码" target="_blank"><span class="i-valid v5"></span></a>
                                                <a href="/user/?act=bank_list" title="绑定银行卡" target="_blank"><span class="i-valid v7"></span></a>
                            </p>
        </div>
        <ul class="u-order-link Left clearfix">
            <li>
                <a href="/user/?act=order_list&composite_status=100&order_sn=&act=order_list" class="link-icon"></a>
                <a href="/user/?act=order_list&composite_status=100&order_sn=&act=order_list" class="link-txt">未付款<span class="gray">(0)</span></a>
            </li>
            <li>
                <a href="/user/?act=order_list&composite_status=101&order_sn=&act=order_list" class="link-icon i2"></a>
                <a href="/user/?act=order_list&composite_status=101&order_sn=&act=order_list" class="link-txt">待发货<span class="gray">(0)</span></a>
            </li>
            <li>
                <a href="/user/?act=order_list&composite_status=8&order_sn=&act=order_list" class="link-icon i3"></a>
                <a href="/user/?act=order_list&composite_status=8&order_sn=&act=order_list" class="link-txt">待收货<span class="gray">(0)</span></a>
            </li>
            <li class="last">
                <a href="/user/?act=comment_list&flag=1" class="link-icon i4"></a>
                <a href="/user/?act=comment_list&flag=1" class="link-txt">待评价<span class="gray">(0)</span></a>
            </li>
        </ul>
        <div class="Right coin-box">
            <table>
                <tr><td>乐&emsp;币:&nbsp;&nbsp;</td><td><a href="/user/?act=lebi" class="num">0</a>个</td></tr>
                <tr><td>金&emsp;币:&nbsp;&nbsp;</td><td><a href="/user/?act=coin_log" class="num">0</a>个</td></tr>
                <tr><td>优&nbsp;惠&nbsp;券:&nbsp;&nbsp;</td><td><a href="/user/?act=bonus" class="num">0</a>张</td></tr>
            </table>
        </div>
        <div class="dot up-dot"></div>
        <div class="dot down-dot"></div>
    </div>
  </body>
</html>
