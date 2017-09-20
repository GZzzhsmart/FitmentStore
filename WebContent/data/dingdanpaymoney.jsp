<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="SQLBean.UserBean"%>
<html>
<head>
<script type="text/javascript" src="<%=basePath %>js/jquery-1.4.1.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script charset="utf-8" src="<%=basePath%>data/data_files/v.js"></script>
<script async="true" type="text/javascript" src="<%=basePath%>data/data_files/event" data-owner="criteo-tag"></script>
<script type="text/javascript" async="" src="<%=basePath%>data/data_files/mv.js"></script>
<script type="text/javascript" async="" src="<%=basePath%>data/data_files/mba.js"></script>
<script src="<%=basePath%>data/data_files/x.js"></script>
<script src="<%=basePath%>data/data_files/hm.js"></script>

<meta name="keywords" content="付款：家具,家具网,买家具,网购家具,网上家具商城,网上买家具">
<meta name="description" content="付款：网上家具商城，在线销售田园家具，韩式家具，美式家具，儿童家具，现代家具，中式家具，欧式家具，板式家具，实木家具，沙发，软床，衣柜，餐桌。">
<meta http-equiv="Expires" content="0">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Pragma" content="no-cache">





<title>付款</title>
<link rel="shortcut icon" href="http://image.meilele.com/favicon.ico">
<link rel="stylesheet" href="<%=basePath%>data/data_files/mll.common.new.min.css">
<link href="<%=basePath%>data/data_files/flow2014.min.css" rel="stylesheet" type="text/css">
<style>.goods_item {border-top:1px dashed #eee}#JS_cart_body_1 tr:last-child {border-bottom:1px dashed #eee}</style>
<script type="text/javascript" async="" defer="" src="<%=basePath%>data/data_files/dc.js"></script>
<script type="text/javascript" async="" src="<%=basePath%>data/data_files/get.do"></script>
<script type="text/javascript" async="" src="<%=basePath%>data/data_files/getMiniActivityWebPage"></script>
<script type="text/javascript" async="" src="<%=basePath%>data/data_files/ocl.invoke.min.js"></script>
<script type="text/javascript" async="" src="<%=basePath%>data/data_files/recad.min.js"></script>
<script src="<%=basePath%>data/data_files/common.min.js"></script>
<script>window.M = window.M || {};M.__IMG = 'http://image.meilele.com';if(window.$ && window.$.addToCart)M.addToCart = $.addToCart</script>
<script src="<%=basePath%>data/data_files/jq.js"></script> 








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
<style type="text/css">
.l .label{height: 19px;line-height: 19px;padding: 1px 3px;_padding-top:2px;
background: #c9033b;color: #fff;margin-right: 6px;}.l .rose{margin-left: 6px;
color: #c9033b;</style><style type="text/css">.gift_m .in{border:3px solid #bbb !important}
.gift_m .htmls{padding: 0 !important}.gift_m .g_t_bar{background-color:#f1f1f1;padding:10px 8px;
font-size:16px;border-bottom: 1px solid #e6e6e6}.gift_m .g_title{float:left;font-family:"微软雅黑"}
.gift_m .g_close{float:right;font-weight:bold;color:#bbb;font-family:"黑体";cursor:pointer}
.gift_m .g_content{height:270px;overflow:auto}.gift_m .g_list{padding: 10px 25px 8px 0;border-bottom: 1px solid #e6e6e6}
.gift_m .g_cb,.gift_m .g_img,.gift_m .g_c{float:left;margin-left:10px}.gift_m .g_cb{margin-top:15px}
.gift_m .g_n{float:right}.gift_m .g_c,.gift_m .g_n{line-height:45px}.gift_m .g_btn{text-align:left;padding: 14px 8px;}
.gift_m .g_btn a {margin:0 10px;padding: 4px 12px;border:1px solid #bbb}.gift_m .g_btn a:hover {color: #333 !important;text-decoration:none}.gift_m .g_btn a.g_hover:hover {color: #bbb !important}
.gift_m .g_btn .g_warn {color: #c9033b}.gift_tr td {padding: 4px}
</style>
<style type="text/css">.AD_tonglan{width:100%;height:50px;background:#e3f0dd/*粽享端午*/;}
.AD_sanjiao{position:fixed;top:0;right:0;width:100px;height:100px;
background:none;z-index:1002;_position:absolute;_top:expression(eval(document.documentElement.scrollTop));}
</style>
<script type="text/javascript" async="" src="<%=basePath%>data/data_files/back_to_top.min.js"></script>
<script type="text/javascript" async="" src="<%=basePath%>data/data_files/rt.js"></script>
<script type="text/javascript" async="" src="<%=basePath%>data/data_files/stats"></script>
<script type="text/javascript" async="" src="<%=basePath%>data/data_files/gdt.php"></script>
<script type="text/javascript" async="" src="<%=basePath%>data/data_files/gdt(1).php"></script>
<script type="text/javascript" async="" src="<%=basePath%>data/data_files/gdt(2).php"></script>
<script type="text/javascript" async="" src="<%=basePath%>data/data_files/gdt(3).php"></script>
<script type="text/javascript" async="" src="<%=basePath%>data/data_files/mvl.js"></script>
<script type="text/javascript" async="" src="<%=basePath%>data/data_files/ld.js"></script>
<script type="text/javascript" async="" src="<%=basePath%>data/data_files/gt.js"></script>
<style type="text/css">
div.jiathis_style{width:180px;padding:10px;margin-left:-200px;margin-top:-30px;border-radius:3px!important;font-weight:normal;}div
.jiathis_style a{display:inline-block;width:90px;height:20px;line-height: 20px;}
.back_to_top{display:none;width:44px;right:0;position:fixed;z-index:100;bottom:0px;_position:absolute;_top:expression(eval(document
.documentElement.scrollTop+document.documentElement.clientHeight-188));}
.back_to_top .in_box{display:inline-block;width:44px;height:42px;overflow:hidden;
background:url(http://image.meilele.com/images/zhuanti/upload/ttop_1389063073.gif) 0px -126px no-repeat;}
.back_to_top_hover_zoom{cursor:pointer;height:43px;}.back_to_top .in_box.back_to_top_share{background-position:0 0}
.back_to_top .in_box.back_to_top_lottery{background-position:0 -42px}
.back_to_top .in_box.back_to_top_quiz{background-position:0 -84px}
.back_to_top_hover .in_box{background-position:-44px -126px}.back_to_top_hover 
.in_box.back_to_top_share{background-position:-44px 0}.back_to_top_hover 
.in_box.back_to_top_lottery{background-position:-44px -42px}.back_to_top_hover 
.in_box.back_to_top_quiz{background-position:-44px -84px}.back_to_top_tip{position:absolute;margin-top:6px;
padding-left:10px;background:#fff6ce;color:#d3033b;line-height:30px;width:62px;margin-left:-72px;
border-top-left-radius:15px;border-bottom-left-radius:15px;display:none;font-family: "微软雅黑";
font-size: 14px;font-weight: bold;}.back_to_top_hover .back_to_top_tip{display:block}
.back_to_top_tip_cartact {position: absolute;width: 0;height:173px;opacity:0;
filter:alpha(opacity=0);overflow: hidden;right: 36px;bottom:-1px;z-index:300;}
.back_to_top_tip_cartact .arrow-r-out{position: absolute;display: block;right: -7px;
top: 15px;width: 0;height: 0;border: solid 7px transparent;border-left: solid 8px #c9c9c9;
border-right:solid 8px transparent;}.back_to_top_tip_cartact .arrow-r-in{position: absolute;
display: block;right: -6px;top: 15px;width: 0;height: 0;border: solid 7px transparent;
border-left: solid 8px #fff;border-right:solid 8px transparent;}.back_to_top_tip_cartact 
.close {display: block;position: absolute;width: 30px;height: 30px;top: 4px;right: 14px;
background: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAA0AAAANCAYAAABy6+R8AAAAGXRFWHRT
b2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAHpJREFUeNqc0G0KgCAMBmAbnSwvUQeoO0n9r+6QZ6sNHKzh1
ocwhrpH4W1SSuHrgtJXrPhivsPaGC20eYAEdqyZUcbqHciAZjKICwveAB206kUJqZ8a1JCGQQOZ3q/I5Yrll8EKBx
xwWOGAA8xU4QFUIaPRARpOlwADAIRgJ+oRpmzyAAAAAElFTkSuQmCC) center center no-repeat;}
.back_to_top_tip_cartact .in{width:552px;padding: 22px 0 3px 25px;
border:solid 1px #c9c9c9;background:#fff;background:rgba(255,255,255,.95);-webkit-box-sizing:border-box;
-moz-box-sizing:border-box;-ms-box-sizing:border-box;box-sizing:border-box;}
.back_to_top_tip_cartact .in.min-in{width: 310px;padding-bottom:22px;}
.back_to_top_tip_cartact .succ-txt{width:500px;padding-bottom: 16px;margin-bottom: 20px;
border-bottom: dotted 1px #ccc;}
.back_to_top_tip_cartact .succ-txt.succ-txt-nob{padding-bottom:0;
margin-left:10px;margin-bottom:2px;border:none;}.back_to_top_tip_cartact 
.succ-txt .icon-succ{float:left;width:38px;height: 38px;margin-right: 12px;
background: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACYAAAAmCAYAAA
CoPemuAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAA1NJREFUeNrUmMtrE1
EUxidTsVTNiOhCK7ipqUqhrmwVdJEKgq4qilrwAZVWBTUk1f/AlVpxqogWrCj4KL4q+KAVG1z52I
iFarWiUPCxaBETqKRQ9TvhuzDUzGQmmUn1wI87aXPP+XLnnnMfoUjvdu1ftBkF9qsADaQWVIO55A
d5DwZAEjwBP70ECHkcsRqQAFsowq2J0NugHbzxU9giOpUv6/zbS/CQ7TswRgEieD5YBurAJrZiv0
A3aANfixXWBM4Dg6+jC5hg2MOILQUxsJfTIAUOgGt2HXQn0eAUO4uoe2A5OOhRlNgHcIj9e+jvKv
2HvAiTL18CcZAB+0AjGCky2aT/ZvrL0P9lUOZW2Emwh0O+EXT6XA066Vf87wKn3Qjbwcyb4K9LBl
SqkvQ/wenR5CSsElzgs8yJ/oDraD/jaEywxXbCTnBi9gTw+pxeq0qI47nKRQ0rdYbZM6KVzpaAIV
DOlWTQOmIJjmBXiUWpbL3I+HHrq5wFtvLZDCi4rAi3wDGb/3ew3SZ6lLAo3/GLAoqnW1G9XGPX23
xnmPHDsjlQwhrY9gUoqh585HprZyp+VAmrZfs8YFHRPPP3GduVSliE7dtpFKUxM7N6lLB5bMemUZ
TYqNKjhBlsUw6dZnOfFZQosTTbsD5FkOHQ6TH4BNbmEdVXoCiNGZkVqIR9Z+s0Iq/Y8ZGNOCWqrk
BRYguUHt1SQ8RWOHQ6DK6AOTnE+SFK41KY1aOEDbBd7dBpEjTnEOeXKLE1bF/rlr2R2IY8HXOJe+
qTKGv8pNpdyFr5jXOo2sWyVMbFfjc/+yEqwrOoZOZCNWLj4CafYy6cqJE7x9WiWFFqDmvUMf5f7M
cGwQ2e+0yttGYybjd1/LW1PspiK0e1lhKJamG8FOPn3PN/Afv5fBasC1iUlJszfJa4n52Ob9d5zp
sJ7nNiB2Hi9wHnlcm4eQ+8CdYqg7Wq1WdRrfRrME7c7Un8N8tBB3+RnDXvMnuKzb479FdO/82M5/
pSZZI1bSeLXiNTWpxVeRRUxX5DPH2n6TfGOAXfj1XyPsPpfmyUmWVwlyD3Y6t4R1HPixp1P3aEiebr
jWIbj3phD/3SPLq1qzrl91Wnsgoew6bewRocNesdrNxPeL6D/SPAAA5/5ZufJys7AAAAAElFTkSuQmCC) 0 0 no-repeat;}
.back_to_top_tip_cartact .succ-txt dl{float: left;}.back_to_top_tip_cartact 
.succ-txt dl dt{height: 20px;margin-bottom:1px;font-size: 15px;line-height: 20px;font-weight:bold;color: #333;}
.back_to_top_tip_cartact .succ-txt.succ-txt-nob dl dt{margin-top:10px;}
.back_to_top_tip_cartact .succ-txt dl dd{width:448px;line-height: 20px;
color:#666;overflow:hidden;white-space:nowrap;}.back_to_top_tip_cartact 
.succ-txt .label{display: inline-block;height: 20px;background: #f96b6f;color: #fff;padding:0 4px;}
.back_to_top_tip_cartact .succ-txt a{color: #666;}.back_to_top_tip_cartact .succ-txt a.red{color: #cf000e;}
.back_to_top_tip_cartact table{width: 430px;margin-left:25px;color:#666;}
.back_to_top_tip_cartact table td{white-space: nowrap;line-height:14px;}
.back_to_top_tip_cartact table td.proc-middle{width:330px;height: 66px;
text-align: center;vertical-align: top;}.back_to_top_tip_cartact table td 
.strong{font-weight: bold;}.back_to_top_tip_cartact .proc-bar{width: 310px;position: relative;}
.back_to_top_tip_cartact .proc-bar .label {display: inline-block;height: 22px;padding: 0 10px;
background: #fff7f0;color: #ff6600;border: solid 1px #ffd7b4;border-radius: 10px;line-height: 22px;}
.back_to_top_tip_cartact .proc-bar i.arrow-d-out {position: absolute;display: block;top: 22px;
left: 0;width: 0;height: 0;margin-left: 153px;border: solid 6px transparent;border-top: solid 6px #ffd7b4;}
.back_to_top_tip_cartact .proc-bar i.arrow-d-in {position: absolute;display: block;top: 21px;
left: 0;width: 0;height: 0;margin-left: 153px;border: solid 6px transparent;border-top: solid 6px #fff7f0;}
.back_to_top_tip_cartact .proc-bar .proc-bar-bg {position: absolute;top: 33px;left: 0;width: 100%;
height: 10px;background: #dadada;border-radius: 5px;}.back_to_top_tip_cartact .proc-bar 
.proc-bar-light {position: absolute;top: 33px;left: 0;width: 100%;height: 10px;
background: #ffa04d;border-radius: 5px;z-index: 1;}.back_to_top_hover_zoom.cart-tip{height:0;}
.back_to_top .in_box.back_to_top_cart{position:relative;
background:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAFgAAAAqCAIAAAC4HQupA
AAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyFpVFh0WE1MOmNvbS5hZG9iZS54bX
AAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4
OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuNS
1jMDE0IDc5LjE1MTQ4MSwgMjAxMy8wMy8xMy0xMjowOToxNSAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6
cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcm
lwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4
bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dH
A6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0i
QWRvYmUgUGhvdG9zaG9wIENDIChXaW5kb3dzKSIgeG1wTU06SW5zdGFuY2VJRD0ieG1wLmlpZDozRDE4Mz
EzN0E2MjUxMUU2Qjk5OEMzM0M1NDQyMTdBOSIgeG1wTU06RG9jdW1lbnRJRD0
ieG1wLmRpZDozRDE4MzEzOEE2MjUxMUU2Qjk5OEMzM0M1NDQyMTdBOSI+IDx4bXBNTTpEZXJpdmVkRnJvb
SBzdFJlZjppbnN0YW5jZUlEPSJ4bXAuaWlkOjNEMTgzMTM1QTYyNTExRTZCOTk4QzMzQzU0NDIxN0E5IiB
zdFJlZjpkb2N1bWVudElEPSJ4bXAuZGlkOjNEMTgzMTM2QTYyNTExRTZCOTk4QzMzQzU0NDIxN0E5Ii8+I
DwvcmRmOkRlc2NyaXB0aW9uPiA8L3JkZjpSREY+IDwveDp4bXBtZXRhPiA8P3hwYWNrZXQgZW5kPSJyIj8
+63rpIAAAA+9JREFUeNrsml9IU2EUwL3TLcfMzenUOWciiOYUp+IsCLKeivQpl/NFkPJPT1nSgz724IvRk
9hg/ZF6iIyIaFAPahKJEJQjXMkQZ811Zbk/zrl2d9V17i4Y2Mt37/2cEfdwuZyH87nz/XbOd875JuH3+9M
OW77nth26D5I0UUQQIggRhAhCBCGCEEGIIARJxj/u33HXoyPlxaxOk35P753wq7mUgujv7ydJktVzcnK6u
7sbGhpSD4ImA3sgpNrcY4+HvpR27IQiqUsNlUq1pweDwdHR0a2trdSDWDrd7yDOsk/0oytdqdBcu3gQH0S
gDF2Dg4PLy8tms7mt7UCmI8ShK7e3VW+9zvWP7/6iaO96ZHreN/KUWvIKAjE5OWmz2bh6IJPJ1Gp1dXV1a
2trYWGhcBCyYwVVK0/4Z5nH5yyxCDosa2treXxwPB5fS8r8/PzY2JjwwIl7fLuxuCRT9jm7ZXczir4w01B
aufAgXaMSWjXy8vKkUilN0+Pj43K5HN2D1dXVgYGBcDiMJ4V2E/GVtczKEqlWTXEBobrUzHB0k0L7CIIg8
vPzQQmFQpw8n5tjSh27Fk8R8a4z5aNYw2kVCyLy1oGhoYIKCm+u11ksCIPBgAvENuln6yiHvKgsgQeUjZe
z2EBwighvUkBpbGzE2FYwIIo4gMi+cALeO8HNyAy+iAgEAugewBkJb4VCUVVVhQ3E6s8kiDz0JVlnjEw4v
HifiG9jAAGFkO2s0D1wOp3wNplMGRnYGnk4LBkQOmQQBKE4ySTmhn0Oz9Cl0Wg4RUQikXC5XKDU19djbL2
oZTJ5RqgR7XN7WtLVR0HZml3AM3QVFBRwOiOmpqYiEWYiqKiowAnC5YEIV5yqMSam0VdtTn3a9oXwgNBqt
RDhi4uL7e3t6B5AW6lUKjGCAAqxBbe8vhy1yvhCoefvyKF72MZwoKDX691uN6I97L+pqclisWAfTODrBR
CBh2+8A3eZJisaS1B0Su8jampqAERzc3NnZyc7SkC7mfp5FBBobpjVXefgQWlGYWZ1ma7iBAEI7Hb7TFJQ
mtGysrLh4WHsIGJfv5GDtsJbXTB0IFwzEBJFJuaI0Ol0HR0dExMTMHSgVA2Kog4oKGCghufvPacrs/Y5gX
6FQwj/ERj2HI3uH4Ggj8J+H/GnWTxv0t+/CYrn8kj49QfeNvxBOBwOq9UKSl9fn9Fo5G0jEIThxzN23KBJ
v7PIzNuGT0PFCuwwmBR2q7xt8F2wEXhseF/nQzpgseEnniu36bUAjOQQ9kJs+KcGzFHwPUskkp6enrq6Ot4
2AlPjQGJL/I8ZQanx/4kIQgQhghBBiCBEEOjyW4ABALBhuPBNg6YbAAAAAElFTkSuQmCC) 0 0;}
.back_to_top_hover .in_box.back_to_top_cart{background-position:-44px 0;}
.back_to_top .in_box.back_to_top_cart span{display:inline-block;position: absolute;top:2px;right:4px;height:16px;width:16px;line-height:16px;text-align:center;
background: #cf000e;color:#fff;border-radius:8px;}.back_to_top_hover .in_box
.back_to_top_cart span{background:#fff;color:#cf000e;}.back_to_top_tip.top_tip_cart{width:auto;
margin-left:-80px;white-space:nowrap;}</style><style type="text/css">#JS_back_to_top 
.arrow-r-in,#JS_back_to_top .arrow-r-out{top:183px;}
</style>
<script type="text/javascript" async="" src="<%=basePath%>data/data_files/chatFloat.min.js"></script>
<style type="text/css">
.FC_hide{height:0px!important;}#Fchat1,#Fchat2{font-size:12px;z-index:1500;position:fixed;
_position:absolute;overflow:hidden}#Fchat1{width:100px;height:268px;right:5px;top:190px;
_top:expression(eval(document.documentElement.scrollTop+190))px;}
#Fchat1{background:url( http://image.meilele.com/images/201505/1431483773443.png) 0 0 no-repeat;
_background:url(http://image.meilele.com/images/201505/1431483763486.jpg) 0 0 no-repeat;}
.FC_btns{background-image:url(http://image.meilele.com/images/blank.gif);position:absolute;
cursor:pointer;z-index:1501;}#Fchat2{width:58px;height:127px;right:5px;top:190px;
_top:expression(eval(document.documentElement.scrollTop+190))px;;
background:url(http://image.meilele.com/images/201405/1401178094439.png) 0 0;
_background:url(http://image.meilele.com/images/201405/140117892382.gif) 0 0;cursor:pointer}
.FC_number{width:20px;height:20px;line-height:20px;text-align:center;color:#fff;
font-weight:bold;font-family:Arial;border-radius:12px;background:#ff9030;color:#f5e0ce;border:2px solid #f5e0ce;display:none;font-size:14px;}
.FC_number2{width:28px;}#FchatMsg{font-family:微软雅黑;display:none;z-index:1500;
width:109px;height:66px;border:1px solid #fac3c9;
border-radius:6px;background-color: #fff0f1;position: relative;padding:12px;
position:fixed;right:28px; top:90px;_position:absolute;
_top:expression(eval(document.documentElement.scrollTop+90))px;}
#FchatMsg a{font-family:微软雅黑;font-weight:bold;font-size:13px;
color:#e5134e}#FchatMsg a:hover{text-decoration:underline;}#FchatMsg
.FC_min_msg{right:3px; top:90px;_position:absolute;
_top:expression(eval(document.documentElement.scrollTop+90))px;}#FchatMsg 
.triangle{width:0px;height:0px;position: absolute;*zoom:1;}#FchatMsg 
.triangle_out{left:54px;top:90px;_top:96px;border-left:11px solid transparent;border-top:11px solid #fac3c9;_border-left-color:tomato;_filter:chroma(color=tomato)}#FchatMsg 
.triangle_in{left:54px;top:89px;_top:95px;border-left:10px solid transparent;
border-top:10px solid #fff0f1;_border-left-color:tomato; _filter:chroma(color=tomato)}#FchatMsg 
.msg_title{font-size:14px;color:#333;}#FchatMsg .msg_content{font-size:14px;color:#666;font-weight:bold;margin-top:6px;
width:119px;height:44px;overflow:hidden;}#FchatMsg .close_btn{float:right;font-size:14px;text-decoration:none;font-weight:normal;
margin-right:-6px;font-family:SimSun;color:#666;}#FchatMsg 
.close_btn:hover{color:#C9033B;}#FchatMsg .faq_list{list-style: none;
font-size: 12px;font-weight: normal;padding-bottom: 10px;line-height: 21px;margin-top: 0}
#FchatMsg .faq_item{width:119px;overflow:hidden;white-space:nowrap;text-overflow:ellipsis}
#FchatPoMsg {cursor: pointer;font-family: 微软雅黑;z-index: 1500;width: 108px;
border: 1px solid #fac3c9;border-radius: 6px;background-color: #fff0f1;position: relative;
padding: 12px;position: fixed;right: 116px;top: 302px;line-height: 20px;display:none;}#FchatPoMsg.FC_min_pomsg{top:246px;right:70px;}#FchatPoMsg 
.triangle { width: 0; height: 0; position: absolute;}#FchatPoMsg 
.triangle_out { right: -11px; top: 30px; _top: 96px; border-right: 11px solid transparent; 
border-top: 11px solid #fac3c9; _border-left-color: tomato; _filter: chroma(color=tomato);}#FchatPoMsg 
.triangle_in { right: -8px; top: 31px; _top: 96px; border-right: 10px solid transparent; 
border-top: 10px solid #fff0f1; _border-left-color: tomato; _filter: chroma(color=tomato);}#FchatPoMsg 
.expr-msg-close{position: absolute;top: -1px;right: -2px;font-size: 16px;display: inline-block;
width: 20px; height: 20px;cursor:pointer;}#FchatPoMsg .expr-msg-close:hover{text-decoration:none;}
</style>
</head>
<%
	UserBean user = (UserBean)session.getAttribute("user");
%>
<body style="">


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


<style>
    .page-header .ph-contenter .drcode-phone {top:-25px!important}
</style>



<div class="w mt10"><h1 class="fl_h1"> 付 款 </h1></div>
<div class="pre_box w">
	<a id="address_md" name="address_md"></a>
	<div id="JS_address_box__" class="currentBox">
		
		
		
		
	<div class="title clearfix">
		<div class="text Left">订单信息</div>
	</div>
	<div class="body">
		<div>
			<table id="JS_cart_table" class="cart_table">
				<tbody>
					<tr>
						<th colspan="2" class="first">商品</th>
						<th style="width:14%">数量</th>
						<th style="width:8%">折扣</th>
						<th style="width:8%">金额</th>
						<th style="width:8%">优惠</th>
						<th style="width:10%">配送方式</th>
						<th style="width:8%">状态</th>
					</tr>
				</tbody>
			
				<tbody id="JS_shop_list_7844" class="shop_list" data-shop_id="7844">
								<tr id="JS_goods_list_27542860" data-rec="27542860" class="goods_list" data-delivery_type="2" data-goods_id="243119" data-act_id="0" data-goods_type="0,6" data-auction_id="0">
					<td class="first" style="line-height:1.5;width:110px;text-align:center;padding-left:5px;">
						<a href="<%=basePath %>homeservlet?order=look&homeid=${dingdan.homeid }" target="_blank"><img class="img" src="<%=basePath%>${dingdan.tupian }" width="90" height="58"></a>
					</td>
					<td style="text-align:left;vertical-align:top" valign="top">
						<a style="line-height:18px" href="<%=basePath %>homeservlet?order=look&homeid=${dingdan.homeid }" target="_blank">${dingdan.name }</a>
					</td>
					<td class="yen"> <span class="goods_number">${dingdan.shuliang }</span> 个 </td>
					<td class="yen">¥${dingdan.youhui }</td>
					<td><div class="yen" id="goods_subtotal_27542860">¥<span class="show_price">${dingdan.money}</span></div><div class="goods_install_fee goods_install_end" style="display:none;"></div></td>
					<td><span class="discount">包邮</span></td>
					<td class=""><span class="goods_trans JS_goods_trans_7844" data-value="1">物流</span><div class="service_type" style="display: block;">（自提）</div>
					</td>
					<c:if test="${dingdan.effective==1}">
						<td>待付款</td>
					</c:if>
					<c:if test="${dingdan.effective==2}">
						<td>待发货</td>
					</c:if>
					<c:if test="${dingdan.effective==3}">
						<td>待收货</td>
					</c:if>
					<c:if test="${dingdan.effective==4}">
						<td>待评价</td>
					</c:if>
				</tr>
								
				<tr class="count-area">
					<td colspan="8">
						<ul class="count-list">
							<li class="clearfix">
								<div class="col-left">商品总价:</div>
								<div class="col-right"><span id="JS_total_7844" class="total red"><span class="yen">¥</span>${dingdan.price}</span></div>
							</li>
							<li class="clearfix">
								<div class="col-left">
								 <span>配送费用:	</span>
								</div>
								<div class="col-right">
									<span class="trans_fee_box_list" style="display:none;"></span>
									<span class="fee red" zfee="0"><span class="yen">¥</span>0.00</span>
								</div>
							</li>
							<li class="clearfix">
								<div class="col-left" data="">
									<span> 订单总金额:	</span>
									<ul class="goods_activity_gift" style="display: none;"></ul>
								</div>
								<div class="col-right"><span class="cut" zcut="0"><span class="yen">¥${dingdan.price}</div>
							</li>
							<li class="clearfix">
								<div class="col-left">应付款金额:	</div>
								<div class="col-right"><b id="JS_after_7844" class="red yen f16" data-total="2550"><span class="yen">¥</span>${dingdan.price}</b></div>
							</li>
						</ul>
					</td>
				</tr>
				</tbody>
		</table>
		</div>
	</div>
	
	<div class="title clearfix">
		<div class="text Left">订单信息</div>
	</div>
	<form action="<%=basePath %>dingdanservlet?order=mymoneyAdd&dingdanid=${dingdan.dingdanid }" method="post" name="form2">
		<div class="" style="padding-top:20px;">
		<span class="l_h25 fl"><font size="4">支付工具：</font></span>
			<input type="radio" id="input1" name="se" style="width:30px;height:30px" /><a href="javascript:void(0);" id="href2"><img src="<%=basePath %>images/a.png"/></a>&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="radio" id="input2" name="se" style="width:30px;height:30px"/><a href="javascript:void(0);" id="href3"><img src="<%=basePath %>images/b.png"/></a>
		
		</div>
		<br/><br/>
		<span class="l_h25 fl"><font size="4">&nbsp;支 付 金 额：</font></span>
			<input type="text" id="paymoney" readonly="readonly" name="paymoney" value="${dingdan.price }" style="width:180px;height:30px;border-width:1px;"/>
		
		<br/><br/>
		<span class="l_h25 fl"><font size="4">&nbsp;交 易 密 码：</font></span>
			<input type="password" id="paypassword" name="paypassword" style="width:180px;height:30px"/>
			<br/><br/>
			<span class="l_h25 fl"><font size="4">图片验证码：</font></span>
			<input type="text" name="code" id="code" style="width:180px;height:30px;border-width:1px;"/>&nbsp;&nbsp;&nbsp;&nbsp;
			<img src="<%=basePath %>data/enimg.jsp" id="codes" onclick="refresh();" width="90" height="35" title="看不清换一张" alt="验证码">
			<a onclick="refresh();" href="javascript:void(0);" style="margin-left: 7px;color:#0072ca">刷新验证码</a>
			<br/><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input id="form2" type="submit" value=" 付 款 " style="height: 44px; width: 180px; background-color: #ff0033 ;font-size: 25px;"/>
		</form>
</div>


<script src="<%=basePath%>data/data_files/json.min.js" type="text/javascript"></script>


<div class="height15"></div>
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
	<script type="text/javascript">
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
	</script>
	<script type="text/javascript">
		function refresh(){
			document.getElementById("codes").src= '<%=basePath %>data/enimg.jsp?'+Math.random();
		}
	</script>
</body>
<c:if test="${msg!=null}">
	<script type="text/javascript">
		alert("${msg}");
	</script>
</c:if>
</html>
