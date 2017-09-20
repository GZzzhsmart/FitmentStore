<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="pragma" content="no-cache" />
    <meta name="keywords" content="乐家具家具网（www.meilele.com），用户中心" />
    <meta name="description" content="网上家具商城，在线销售田园家具，韩式家具，美式家具，儿童家具，现代家具，中式家具，欧式家具，板式家具，实木家具，沙发，软床，衣柜，餐桌。" />
    <title>乐家具注册</title>
    <link rel="shortcut icon" href="http://image.meilele.com/favicon.ico" />
    <link rel="icon" href="http://image.meilele.com/favicon.ico" />
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/mll.common.new.min.css" />    
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/user3.min.css" />
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/ana.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/back_to_top.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/common.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/dc.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/jq.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/ld.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/ocl.invoke.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/recad.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/regist.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/x.js"></script>
<script>window.M = window.M || {};M.__IMG = 'http://image.meilele.com';if(window.$ && window.$.addToCart)M.addToCart = $.addToCart</script>
<script>if(/ipad_from=1/.test(location.search+location.hash+document.cookie)||window._ipad_from){window._ipad_from=true;window.__notAd=1;window._not_back_to_top=true;}window.getCookie=function(a){var e;if(document.cookie&&document.cookie!==""){var d=document.cookie.split(";");var f=d.length;for(var c=0;c<f;c++){var b=d[c].replace(/(^\s*)|(\s*$)/g,"");if(b.substring(0,a.length+1)==(a+"=")){e=decodeURIComponent(b.substring(a.length+1));break;}}}return e;};window.setCookie=function(a,e,d,c,g){d=d||365;g=g||"/";var b=location.host.split(".");if(b.length==3){b.shift();}c=c?";domain="+c:(";domain=."+(b.join(".")));var f=new Date();f.setTime(f.getTime()+parseInt(d,10)*24*60*60*1000);document.cookie=a+"="+encodeURIComponent(e)+(d=="session"?"":";expires="+f.toGMTString())+c+";path="+g;};window._mllga=function(a){var g=(Math.random()+"").replace("0.","").substr(0,9)-0;var e=parseInt(new Date()/1000);var d=(Math.random()+"").replace("0.","").substr(0,9)-0;var f={utmwv:"5.6.0dc",utms:1,utmn:g,utmhn:location.host,utme:"8(COOKIE)9("+document.cookie.replace(/[()]/g,"")+")11(2)",utmcs:"UTF-8",utmdt:"notset",utmhid:e,utmp:location.host+location.pathname+location.search,utmht:+new Date(),utmac:"UA-48396005-1",utmcc:"__utma=165027242."+d+"."+e+"."+e+"."+e+".1;+__utmz=165027242."+e+".1.1.utmcsr=(direct)|utmccn=(direct)|utmcmd=(none)"};for(var c in a){if(a[c]!==undefined){f[c]=a[c];}}var h=[];for(var c in f){h.push(c+"="+encodeURIComponent(f[c]));}var b=new Image();b.src="http://stats.g.doubleclick.net/__utm.gif?"+h.join("&");};(function(){window.onerror=function(e,d,b){window.onerror._root=window.onerror._root||{};var c=encodeURIComponent(e+"").replace(/\W/g,"");if(window.onerror._root[c]){return;}_mllga({utme:"8(COOKIE)9("+document.cookie.replace(/[()]/g,"")+")11(2)",utmdt:navigator.userAgent+"||"+e+"||"+d+"||"+b,utmac:"UA-48396005-1"});window.onerror._root[c]=true;};var a=function(){setTimeout(function(){window._gaq=window._gaq||[];window._ana=window._ana||[];if(_ana.push==Array.prototype.push){throw new Error("亲，_ana未初始！");}if(_gaq.push==Array.prototype.push){throw new Error("亲，_gaq未初始！");}},10000);};if(window.addEventListener){window.addEventListener("load",a,false);}else{if(window.attachEvent){window.attachEvent("onload",a);}}})();(function(){if(window.__notAd){return;}var c=document.createElement("script");c.type="text/javascript";c.async=true;var b=document.getElementsByTagName("script")[0];var a=new Date();c.src="http://image.meilele.com/js/recad.min.js?"+a.getFullYear()+a.getMonth()+a.getDate();b.parentNode.insertBefore(c,b);})();window._gaq=window._gaq||[];window.MLLgaq=window.MLLgaq||[];window._onReadyList=window._onReadyList||[];window._ana=window._ana||[];_ana.baseTime=_ana.baseTime;_gaq.push(["_setAccount","UA-10173353-1"]);_gaq.push(["_setDomainName","meilele.com"]);(function(i){if(getCookie("MLL_CID")){_gaq.push(["_setCustomVar",1,"CID",getCookie("MLL_CID"),2]);}var l=(location.search+"").replace("?","").split("&");var g={};for(var b=0,a=l.length;b<a;b++){var j=l[b].split("=");g[j[0]]=j[1];}var h=((location.hash+"").replace("#","")).split("#")[0].split("&");for(var b=0,a=h.length;b<a;b++){var j=h[b].split("=");h[j[0]]=j[1];}var f="";if(location.pathname.indexOf("/category-9999/")>=0&&g.keywords){f=g.keywords;}else{if(h.kw||g.kw){f=h.kw||g.kw;}}try{f=decodeURIComponent(f);}catch(c){}if(f&&window._ana){_ana.push(["trackEvent","siteSearch",f]);}})(window);(function(){if(window._IS_GET_TAG){return;}window._IS_GET_TAG=true;var b="utag";var a=18;if(/^\/article/i.test(location.pathname)){b="atag";}window._onReadyList=window._onReadyList||[];_onReadyList.push(function(){$.ajax({url:"/java_api/jmll/tag/getTag.do?u="+encodeURIComponent(location.pathname),cache:true,dataType:"json",success:function(o){var e=$.cookie(b)||"";var n=o||{};var h={},i=[],c=[],j=[];var m=function(k){k=k-0;k="00"+k.toString(36);return k.substr(k.length-2,2);};e=e.split("*");for(var g=0,d=e.length;g<d;g++){if(e[g]&&e[g].length==5){var l=e[g].substr(0,3);var f=parseInt(e[g].substr(3,2),36);h[l]={key:l,number:f};i.push(h[l]);}}for(var g in n){if(h[g]){h[g].number+=n[g];}else{h[g]={key:g,number:n[g]};}h[g].thisPage=true;c.push(h[g]);}c.sort(function(p,k){return k.number-p.number;});for(g=0,d=c.length;g<d;g++){j.push(c[g].key+m(c[g].number));}for(g=0,d=i.length;g<d;g++){if(!i[g].thisPage){j.push(i[g].key+m(i[g].number));}}if(j.length>a){j.length=a;}$.cookie(b,j.join("*"),{expires:90,domain:".meilele.com",path:"/"});window._SITETAGS={tags:h,thisPageTag:n};if(window._SITETAGSCALLBACK){_SITETAGSCALLBACK(_SITETAGS);}}});});})();(function(){if(!window.getCookie("MLL_CID")||!window.getCookie("MA_si")){new Image().src="/_b.gif?_="+new Date().getTime().toString(36);}var b=parseInt(window.getCookie("_SC_"))||0,a=parseInt(window.getCookie("_SD_"))||0;if(!window.getCookie("_SC_")){new Image().src="/_c.gif?_="+new Date().getTime().toString(36);}else{!a&&window.setCookie("_SC_",b+1,3650,".meilele.com");}window.setCookie("_SD_",a+1,"session",".meilele.com");})();
/*leihao:2016-11-21 17:46:13*//*laidezhong:2014-12-02 19:44:58*/</script>    <style>
        .fkcaptcha {
            margin-left: 6px;
            cursor: pointer;
            background: url('http://img001.mllres.com/themes/paipai/images/user/loading.gif') center center no-repeat;
        }
        .regist_title{
            position: relative;
            top: 20px;
            left: 18px;
            font-size: 24px;
            color: #333;
            font-family: '微软雅黑';
        }
    </style>
<c:if test="${msg!=null}">
	<script type="text/javascript">
		alert("${msg}");
	</script>
</c:if>
    <script>
        window.__redirectUrl = '';
        (function () {
            var backurl = (location.search + "").replace("?", "").split('&');
            for (var i = 0; i < backurl.length; i++) {
                var tmp = (backurl[i] + "").split("=");
                if (tmp[0].toLowerCase() == 'redirect_url') {
                    __redirectUrl = tmp[1];
                    __redirectUrl = __redirectUrl.replace("'", "").replace('"', "");
                    __redirectUrl = decodeURIComponent(__redirectUrl);
                    break;
                }
            }
        })();
		function refresh(){
			document.getElementById("codes").src= '${pageContext.request.contextPath }/data/enimg.jsp?'+Math.random();
		}
    </script>

</head>

<body class="root_body">
    <div id="" class="user_all w" style="position:relative;">
        <div id="" class="user_header clearfix" style="padding:30px 0px;">
            <div class="logo Left" style="background: url(<%=basePath %>images/face.png) 0 0 no-repeat;width:160px;height:52px">
                <a href="${pageContext.request.contextPath }/data/face.jsp" title="返回乐家具首页">
                    <img style="background:none" src="http://image.meilele.com/images/blank.gif" width="160" height="52" border="0" alt="乐家具"/>
                </a>
            </div>
            <div class="Left">
                <p class="regist_title">用户注册</p>
            </div>
            <div id="" class="nav Right">
                <a href="/">返回首页</a>
                |
                <a href="/article_cat-4/article-656.html" target="_blank">帮助中心</a>
            </div>
        </div>
        <div id="" class="user_content clearfix type_register">
            <div id="" class="user_login Left">
                <form id="JS_register_form" action="<%=basePath %>userservlet?order=add" method="post" name="from1">
                    <div id="" class="register_box">
                        <p>
                            <label class="tips"><span class="red">*</span>帐 户 名：</label>
                            <input type="text" name="username" class="register_input" id="register_username" autocomplete="off" tabindex="10"/><span id="register_username_s" class="success" style="display:none;"></span>
                        </p>
                        <div id="register_username_a" class="error" style="top:-22px;padding:5px;line-height:15px;height:30px;width:255px; text-indent:0;margin-top:-20px"></div>
                        <p>
                            <label class="tips"><span class="red">*</span>设置密码：</label>
                            <input type="password" name="password" class="register_input" autocomplete="off" id="register_password" tabindex="11"/><span id="register_pw_s" class="success" style="display:none;"></span>
                        </p>
                        <div id="register_password_a" class="error" style="top:-22px;padding:5px;line-height:15px;height:30px;width:255px; text-indent:0;margin-top:-20px"></div>
                        <p>
                            <label class="tips"><span class="red">*</span>确认密码：</label>
                            <input type="password" name="confirmpassword" autocomplete="off" class="register_input" id="register_confirm_password" tabindex="12"/><span id="register_rpw_s" class="success" style="display:none;"></span>
                        </p>
                        <div id="register_confirm_password_a" class="error" style="top:-22px;padding:5px;line-height:30px;height:30px;width:255px; text-indent:0;margin-top:-20px"></div>
                        <p>
                            <label class="tips"><span class="red">*</span>手机号码：</label>
                            <input type="text" name="mobilephone" autocomplete="off" class="register_input" id="register_mobile" tabindex="13"/><span id="register_mobile_s" class="success" style="display:none;"></span>
                        </p>
                        <div id="register_mobile_a" class="error" style="top:-22px;padding:5px;line-height:30px;height:30px;width:255px; text-indent:0;margin-top:-20px"></div>
                        
                        <p id="register_captcha_e">
                            <label class="tips"><span class="red">*</span>验证码：</label>
                            <input type="text" name="verification_code" class="register_input" id="register_captcha" tabindex="14" maxlength="4"/>
                            <a class="right" href="javascript:void(0);"><img class="captcha-img" width="60" height="30" src="<%=basePath %>data/enimg.jsp" id="codes" onclick="refresh();" title="看不清换一张" alt="验证码"/></a>
                            <span id="register_ver_s" class="success" style="top:-22px;padding:5px;line-height:30px;height:30px;width:255px; text-indent:0;margin-top:-20px"></span>
                        </p>
                        
                        
                        <div id="register_submit0" class="operate" style="padding-left:100px;">
                            <input type="submit" class="regi_btn white f16 yahei clearfix" id="JS_register" tabindex="18" value="注册"></input>
                        </div>
                    </div>
                </form>
            </div>
            <div id="" class="user_register Right" style="color:#555;">
                <div class="user_ok_register">
                    <span>已注册？</span><a href="${pageContext.request.contextPath }/data/login.jsp" onclick="addRedirect(this);" class="logintoreg users_submit users_submit2 white yahei" style="color:#fff!important;font-size: 14px;">登录</a>
                </div>

                <div class="login_api">
                    <div class="img_login2" style="position: relative;">
                        <img src="http://img004.mllres.com/themes/paipai/images/blank.gif" style="width: 120px;height: 120px;" id="JS_img_ewm"/>
                        <div id="JS_fixed_login_mc" style="width: 120px;height: 120px;position: absolute;top:89px;left:50px;background-color: rgba(0,0,0,.5);display: none;">
                            <p style="width: 48px;height: 48px;background: url(http://image.meilele.com/themes/paipai/images/allPuzzle.png) no-repeat;background-position: -123px -53px;position: absolute;top:36px;left:36px;"></p>
                        </div>
                        <p style="position: relative;top: 20px;font-size: 14px;line-height: 14px;color: #333;">微信扫一扫，快速登录</p>
                    </div>
                    <div class="share_login">
                        <span class="api_tips">使用合作账号登录：</span>
                        <br />
                        <span class="api_from">
                            <a href="/dubbo_api/user/login/thirdLogin/QQ" onclick="setWindowName('QQ',this);" class="qq" tabindex="9"></a>
                            <a href="/dubbo_api/user/login/thirdLogin/WEIBO" onclick="setWindowName('新浪微博',this);" class="sina" tabindex="9"></a>
                            <!-- <a href="javascript:;" class="weixin" tabindex="9"></a> -->
                            <a href="/dubbo_api/user/login/thirdLogin/ALIPAY" onclick="setWindowName('支付宝',this);" class="alipay" tabindex="9"></a>
                            <!-- <a href="/dubbo_api/user/login/thirdLogin/TAOBAO" onclick="setWindowName('淘宝',this);" class="taobao" tabindex="9"></a> -->
                        </span>
                    </div>
                </div>
                
            </div>
        </div>
    </div>
            <div class="footer-box">

    <div class="footer">
        <div class="footer-icon">
            <div class="w"> 
                <a href="/topic/article_diyipinpai.html#tab=o2o" target="_blank" title="网商+体验馆" rel="nofollow" class="icon-map"><p class="icon-bg i1"></p><p class="icon-title">网商+体验馆</p></a><a href="/topic/article_diyipinpai.html#tab=bso" target="_blank" title="100%正品" rel="nofollow" class="icon-map"><p class="icon-bg i3"></p><p class="icon-title">100%正品</p></a><a href="/topic/article_diyipinpai.html#tab=quality" target="_blank" title="双重质检" rel="nofollow" class="icon-map"><p class="icon-bg i4"></p><p class="icon-title">双重质检</p></a><a href="/topic/article_diyipinpai.html#tab=purchase" target="_blank" title="全球化采购" rel="nofollow" class="icon-map"><p class="icon-bg i5"></p><p class="icon-title">全球化采购</p></a><a href="/topic/article_diyipinpai.html#tab=returns" target="_blank" title="无理由退货" rel="nofollow" class="icon-map"><p class="icon-bg i6"></p><p class="icon-title">无理由退货</p></a><a href="/topic/article_diyipinpai.html#tab=postage" target="_blank" title="贵就赔" rel="nofollow" class="icon-map"><p class="icon-bg i7"></p><p class="icon-title">贵就赔</p></a><a href="/topic/article_diyipinpai.html#tab=mouth" target="_blank" title="万千口碑" rel="nofollow" class="icon-map"><p class="icon-bg i8"></p><p class="icon-title">万千口碑</p></a>
            </div>
        </div>
            </div>

    <div class="footer-copy">
        <div class="link-container">
                            <div class="w">
                    <div class="copy-index clearfix" style="padding-top:0">
                        <div class="fl">
                            <p>
                                 <a href="http://zx.meilele.com/albums/" target="_blank" title="装修效果图">装修效果图</a> | <a href="http://www.meilele.com/list/" target="_blank" title="家具图片">家具图片</a> | <a href="/article/" target="_blank" title="家居资讯">家居资讯</a> | <a href="/baike/" target="_blank" title="生活百科">生活百科</a> | <a href="/article_cat-1/" target="_blank" title="家私导购">家私导购</a> | <a href="/brand/" target="_blank" title="品牌展厅">品牌展厅</a> | <a href="http://club.meilele.com" target="_blank" title="装修论坛">装修论坛</a> | <a href="http://www.melodyhome.com/" target="_blank" title="furniture store">furniture store</a> | <a href="/article_cat-4/article-656.html" target="_blank" title="客服中心" rel="nofollow">客服中心</a> | <a href="/sitesmap.html" target="_blank" title="网站地图">网站地图</a> | <a href="/links.html" target="_blank" title="友情链接" rel="nofollow">友情链接</a> | <a href="/keywords/" target="_blank" title="更多">更多</a>
                            </p>
                            <p>
                                <span class="yen">&copy; 2005-2016 </span><span id="JS_footer_copyright">乐家具</span> 版权所有，并保留所有权利。<a href="http://www.miibeian.gov.cn/" target="_blank" class="gray" rel="nofollow">ICP备案证书号：粤ICP备08008334号</a>
                            </p>
                        </div>
                        <div class="fr credit">
                            <a target="_blank" href="https://search.szfw.org/cert/l/CX20141121005615005700"><span><i class="c1"></i>诚信网站示范企业</span></a>
                            <a target="_blank" href="https://ss.knet.cn/verifyseal.dll?sn=e12042051010018574308175&ct=df"><span><i class="c2"></i>可信网站信用评价</span></a>
                            <span><i class="c3"></i>经营网站备案信息</span>
                        </div>
                    </div>
                </div>
        </div>
    </div>
</div>


<script src="http://image.meilele.com/js/mll/jq.js?0419"></script> 
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

<script>window.M = window.M || {};if($.addToCart)M.addToCart = $.addToCart</script>
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
var isGoodsIndex = ('' || '') ? true : false;
if (!isGoodsIndex) {
	window.__showCart = Boolean('');//商品详情页购物车
	window.__QUIZ = false; 
	_LOAD_SCRIPT_($.__IMG + '/themes/paipai/js/back_to_top.min.js?20161124');
}
</script>


<script>    
    //此处必须用enter和leave！用hover或者mouseover和mouseout会重复触发产生垃圾对象或者销毁多余对象!
    $('#JS_hide_city_menu_11').on({
        'mouseenter': function() {
            $.cityLayer({from:'2016版首页',target:'JS_hide_city_menu_11',siteName:'DY_site_name'})
        },
        'mouseleave': function() {
            for(k in $.cityLayerPointer) {
                $.cityLayerPointer[k].removeCityLayer();
            }
        }
    })
</script>



<script>
    (function(f,e){var c=e.cookie("meilele_login")=="1"&&e.cookie("ECS[username]");if(c){e.ajax({type:"POST",url:"/dubbo_api/mll/stationMsg/getMsgCount",dataType:"json",success:function(d){if(d&&d.error==0){e(".JS_mes_num").text(d.count).show();
}else{e(".JS_mes_num").hide();}},error:function(){e(".JS_mes_num").hide();}});var g=e(".JS_login");e(".JS_login:eq(0)").after('<li class="fl banner"><a target="_blank" class="login-name" href="/user/" title="'+c+'">'+b(c,16)+'</a><a target="_blank" class="u-message" href="/user/?act=news">消息&nbsp;<i class="i-cyc JS_mes_num">'+0+'</i></a><a href="javascript:;" class="login-out" id="JS_login_out">[退出]</a></li>');
e(".JS_login").remove();}var a=new Image();if(!/ECS_ID\=/.test(document.cookie)||(/autoLogin\=/.test(document.cookie)&&!/meilele_login=1/.test(document.cookie))){a.src="/ecsid_maker/?_="+(new Date()).getTime();
}function b(m,h){if(!m){return"";}var j=0,d=[];for(var k=0,l=m.length;k<l;k++){var n=m.charAt(k);if(n.charCodeAt(0)>255){j+=2;}else{j++;}if(j<=h){d.push(n);
}else{return d.join("");}}return d.join("");}e("#JS_login_out").on("click",function(){jQuery.ajax({url:"/user/?act=logout",type:"get",cache:false,dataType:"json",success:function(d){if(d.error==0){window.location.reload();
return false;}else{jQuery.alert("注销失败，请重试！");}},error:function(){jQuery.alert("网络异常，请重试！");}});});})(document,jQuery);function shoucang(){window._gaq=window._gaq||[];
_gaq.push(["_trackEvent","headerAddFavorite",location.href]);var b=window.location.href;var a=document.title;try{window.external.addFavorite(b,a);}catch(c){try{window.sidebar.addPanel(a,b,"");
}catch(c){alert("对不起，您的浏览器不支持此操作！n请您使用菜单栏或Ctrl+D收藏本站。");}}}function exprCallBackNum(json){if(json&&json.html_content){try{eval("json.html_content="+json.html_content);
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
try{window.external.addFavorite(b,a);}catch(c){try{window.sidebar.addPanel(a,b,"");}catch(c){alert("对不起，您的浏览器不支持此操作！n请您使用菜单栏或Ctrl+D收藏本站。");}}}(function(a){jQuery.fn.menu=function(c){this.each(function(){b.call(this,c);
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
/*dengyun*239866:2016-11-17 18:11:17*/</script>

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
    (function($){
        var py = $.cookie('region_pinyin');
        if ( py ) {
            $('#JS_Header_Home_Link').attr('href', '/'+ py +'/');
            $('#JS_mll_head_menu_expr').attr('href', '/'+ py +'/expr.html');
        } else {
            $('#JS_Header_Home_Link').attr('href', '/');
            $('#JS_mll_head_menu_expr').attr('href', '/expr.html');
        }
    })(jQuery);
    
    function toggleExprName(d) {
        d = d || document;
        var m = d.getElementById('JS_n_head_menu_expr');
        var py = $.cookie('region_pinyin');
        var is_vertual = $.cookie('region_virtual');
        if (py) {
            var homeLink = d.getElementById('JS_Header_Home_Link'),
                logoLink = d.getElementById('JS_Header_Logo_link_home');
            homeLink && homeLink.setAttribute('href', '/' + py + '/');
            logoLink && logoLink.setAttribute('href', '/' + py + '/');
        }
        if (py && m && is_vertual != 1) {
            m.setAttribute('href', '/' + py + '/expr.html');
            m.innerHTML = '体验馆<img src="' + M.__IMG + '/images/hot2015.gif" style="position:absolute;background:none;right:0px;top:-5px;" />';
        } else if (py && m && is_vertual == 1) {
            m.setAttribute('href', '/topic/2014_zsjm01.html?from=nav');
            m.innerHTML = '招商加盟<img src="' + M.__IMG + '/images/new2015.gif" style="position:absolute;background:none;right:0px;top:-5px;" />';
        }
    }
    window._onReadyList = window._onReadyList || [];
    _onReadyList.push(toggleExprName, function () {
        var domain = $.hash().domainFrom;
        if (!/meilele\.com/.test(location.host) || domain) {
            var d = document.getElementById('JS_Header_Logo_link_home');
            d.setAttribute('href', 'http://' + (domain || location.host));
            d.setAttribute('target', '_top');
        }
    });
    
    $(function(){
        //初始化三级菜单
        $('.menu-panel').on({
            'mouseenter': function () {
                $('#JS_mll_menu_map').show();
            },
            'mouseleave': function () {
                $('#JS_mll_menu_map').hide();
            }
        })
        var globalMenu = $('#JS_mll_menu_map');
        globalMenu.menu({
            activate: function (item) {
                var _this = $(item);
                if (!_this.data('imgLoaded')) {
                    var img = _this.find('.sub img');
                    img.prop('src', img.attr('menu-lazy-src')).removeAttr('menu-lazy-src');
                    _this.data('imgLoaded', 1);
                }
                _this.addClass('hover').find('.sub').stop().animate({
                    'padding-left': '10px',
                    'opacity': '1'
                }, 200);

                var ie6 = !-[1, ] && !window.XMLHttpRequest;
                if (ie6) {
                    if (_this.hasClass('large-class')) {
                        globalMenu.css('width', '975px');
                    } else {
                        globalMenu.css('width', '845px');
                    }
                }
            },
            deactivate: function (item) {
                var _this = $(item);
                _this.removeClass('hover').find('.sub').stop().animate({
                    'padding-left': 0,
                    'opacity': '.8'
                }, 200);
            },
            rowSelector: 'li.map-item',
            exitMenu: function (menu) {
                var menu = $(menu);
                var cur = menu.find('.hover');
                var curSub = cur.find('.sub');
                cur.find('em').stop().animate({
                    'padding-left': 0,
                    'opacity': 0
                }, 200);
                cur.removeClass('hover');

                var ie6 = !-[1, ] && !window.XMLHttpRequest;
                if (ie6) {
                    globalMenu.css('width', '200px');
                }
            },
            firstDelay: 100
        });
    })
</script>

<script>
//热搜数据初始化
window.HOTSearchWordDATA;
    $(document).ready(function () {
        $('#JS_MLL_search_header_input').click(function () {
            historySearch('JS_MLL_search_header_input', 'JS_search_history');
             jQuery.searchKey('JS_MLL_search_header_input', 'JS_search_suggest','JS_search_history'); 
            $('#JS_MLL_search_header_input').unbind('click');
            $(this).addClass('search-input-focus');
            return false;
        });
        
        $('body').on('click',function(e){
            e=e || window.event;
            var target=e.target || e.srcElement;
            if ($(target).attr('data-target') != 'search') {
                $('#JS_search_history').hide();
            }
        });
    });
    
    function historySearch(inputId,showId){
        var inputDom = $('#'+inputId);
        var showDom = $('#'+showId);

        if (!inputDom.val()) {
            var data=$.cookie('search_h');
            var _html='<div data-target="search" class="Left h-search"><h6 data-target="search">最近搜过</h6>'
            if (data) {
                data=unescape(data);
                var arr=data.split('*#');
                arr=arr.reverse();
                for(var i=0;i<arr.length;i++){
                     _html+='<a onclick="window._gaq.push([\'_trackEvent\',\'2016乐家具搜索\',\'搜索历史记录\',\'click\']);" target="_blank" href="/category-9999/?keywords='+arr[i]+'">'+arr[i]+'</a>';
                 }
            }else{
                 _html+='<h1>还没有搜索记录！</h1>'
            }
            _html+='</div>';
              function renderHotSearch(data){
                _html+='<div data-target="search" class="Left hot-search"><h6 data-target="search">正在热搜中</h6><div data-target="search">'
                if (data) {
                    for(var i=0;i<data.length;i++){
                        //字数大于7个用省略号替换
                        if (data[i].name.length>7) {
                            var cutName=data[i].name.substring(0,6)+'...'
                            _html+='<a onclick="window._gaq.push([\'_trackEvent\',\'2016乐家具搜索\',\'热门搜索\',\'click\']);" target="_blank" title="'+data[i].name+'" class="hot-product" href="'+data[i].url+'">'+cutName+'</a>'
                        }else{
                          _html+='<a onclick="window._gaq.push([\'_trackEvent\',\'2016乐家具搜索\',\'热门搜索\',\'click\']);" target="_blank" title="'+data[i].name+'" class="hot-product" href="'+data[i].url+'">'+data[i].name+'</a>'  
                        }
                    }
                } 
                _html+='</div></div>'  
            } 
            if (window.HOTSearchWordDATA) {
                renderHotSearch(window.HOTSearchWordDATA);
            }else{
                 $.ajax({
                    url: '/solr_api/hotSearchWord/',
                    type: 'GET',
                    dataType: 'json',
                    async:false,
                    success: function(json) {
                        window.HOTSearchWordDATA=json.hotSearchWordList;
                         renderHotSearch(json.hotSearchWordList);
                    },
                    error: function() {

                    }
                });
            }


            showDom.append(_html);
            showDom.show();
        }
    }

    function addHistory(dom){
         var val = $(dom).text();
         var charVal=val;
        //搜索历史记录存cookie
         if (val && charVal.replace(/[^\x00-\xff]/g, "**").length<31) {
                    var cval = $.cookie('search_h');
                    if (cval) {
                        cval = unescape(cval);
                        cval = cval.split('*#');
                        cval = removeElement(cval, val);
                        if (cval.length > 9) {
                            cval.shift();
                        }
                        cval = cval.join('*#');
                        cval += '*#' + val
                    } else {
                        cval = val + '*#'
                    }
                    cval = escape(cval);
                    $.cookie('search_h', cval, {path: '/', expires: 365});
                }
    }
      //去除数组中的某个元素 
    function removeElement(arr, val) {
        var newarr = [];
        for (var i = 0; i < arr.length; i++) {
            if (arr[i] != val) {
                newarr.push(arr[i]);
            }
        }
        return newarr;
    }
</script>

<script>
    $(function () {
        //初始化购物车
        jQuery('#JS_cart,#JS_cart2').hover(function(){
                Cart.show(this)
           },function(){
                Cart.hide(this)
           });
        Cart.init();
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
   
</script>    <script type="text/javascript" src="http://image.meilele.com/js/mll/regist.min.js?160608"></script>
    <script type="text/javascript">
        (function(){
            var img_ewm = {
                init: function () {
                    this.ajaxLoad();
                    this.state = 1;
                },
                lisenLogin: function () {
                    var that = this;
                    setTimeout(function(){
                        $.ajax({
                            url: '/dubbo_api/user/newThird/isLogin?state='+that.state,
                            type:'get',
                            success: function (json) {
                                that.state = json.state;
                                if ( json.state == 3 ) {
                                    location.href = json.url;
                                } else if ( json.state == 0 ) {
                                    that.ajaxLoad();
                                } else {
                                    that.lisenLogin();
                                    if ( json.state == 2 ) {
                                        $('#JS_fixed_login_mc').fadeIn(100);
                                    }
                                }
                            }
                        });
                    },5000);
                }
            }
            img_ewm.init();
        })()

    </script>
    <script type="text/javascript">
        window.CAPTCHA_CHCEKED = false; // 验证码验证是否通过

        (function () {
            var advice_icon = $('#register_ver_s'),
                errorElem = $('#register_captcha_a');

            $.checkCaptcha($('#register_captcha'), {
                success: function () {
                    $('#register_captcha').removeClass('users_input_error');
                    advice_icon.removeClass('to_error');
                    advice_icon.css('display', 'inline-block');
                    window.CAPTCHA_CHCEKED = true;
                },
                error: function () {
                    errorElem.addClass('error2');
                    advice_icon.addClass('to_error')
                    advice_icon.css('display', 'inline-block');
                    window.CAPTCHA_CHCEKED = false;
                }
            });
        })();
        window.onload=function(){
            clickfun();
            jQuery('#JS_captcha').trigger('click');
            jQuery('#register_captcha').blur();
            jQuery('#register_ver_s').hide();
        }
        function clickfun(){
              //监听更改图片验证码点击事件
            $('#JS_captcha,#JS_captcha_tip').click(function () {
                UR.changeCaptcha($('#JS_captcha'), true);
            });

        }
        (function ($) {
            //初始化图形验证码
            $.getCaptcha($('#JS_captcha'));
            //注册按钮添加监听事件
            $('#JS_register').click(function () {
                /*
                 * username {obj} 用户名tip对象
                 * password {obj} 密码tip对象
                 * confirm_password {obj} 确认密码tip对象
                 * captcha {obj} 图形验证码tip对象
                 * state {boolean} 验证通过状态
                 */
                var username = $('#register_username_a'),
                    password = $('#register_password_a'),
                    mobile_num = $('#register_mobile_a'),
                    confirm_password = $('#register_confirm_password_a'),
                    captcha = $('#register_ver_s'),
                    sms_captcha = $('#sms_captcha');
                state = true;

                if ($('#register_username').val() == "") {
                    $('#register_username').addClass('users_input_error');
                    username.text("用户名可使用字母、汉字、数字、下划线或其组合，4～20个字符，且不能为纯数字").addClass('error error2').css('visibility', 'visible');
                    state = false;
                }
                if ($('#register_password').val() == "") {
                    $('#register_password').addClass('users_input_error');
                    password.text("6-20位，支持字母、数字或符号的组合，不可单独使用字母、数字或符号").addClass('error error2').css('visibility', 'visible');
                    state = false;
                }
                if ($('#register_confirm_password').val() == "" || $('#register_password').val() != $('#register_confirm_password').val()) {
                    $('#register_confirm_password').addClass('users_input_error');
                    confirm_password.text("两次输入的密码不一致").addClass('error error2').css('visibility', 'visible');
                    state = false;
                }
                if ($('#register_captcha').val() == "") {
                    $('#register_captcha').addClass('users_input_error');
                    captcha.addClass('to_error').css('display', 'inline-block');
                    state = false;
                }
                if ($('#register_mobile').val() != "") {
                    if ($('#sms_captcha').val() == "") {
                        state = false;
                    }
                    if($('#sms_captcha_s_a').css('visibility') == 'visible' ) {
                        state = false;
                    }
                }else{
                    $('#register_mobile').addClass('users_input_error');
                    mobile_num.text("请输入手机号码").addClass('error error2').css('visibility', 'visible');
                    state = false;
                }

                if (sms_captcha.val() == "") {
                    state = false;
                    $('#sms_captcha_e').show();
                    $('#sms_captcha').addClass('users_input_error');
                    $('#sms_captcha_s_a').addClass('error error2').html('请填写短信验证码').css('visibility','visible').show();
                }

                if ( $('#sms_checked_look').prop("checked") == false ) {
                    state = false;
                    $.alert('请阅读《乐家具用户注册协议》');
                }

                if ($('.wrong').length) {
                    return
                }
                if (CAPTCHA_CHCEKED && state) {
                    UR.formSubmit();
                }

            });

            //用户名验证
            new Check({
                required: true,
                elem: $('#register_username'), //target对象
                errorElem: $('#register_username_a'), //target错误tip
                successElem: $('#register_username_s'), //target通过tip
                defaultTip: '用户名可使用字母、汉字、数字、下划线或其组合，4～20个字符，且不能为纯数字', //初始化信息
                firstFocus: 1, //是否默认获取焦点
                minLength: 4, //最小length
                maxLength: 20, //最大length
                lengthError: '用户名可使用字母、汉字、数字、下划线或其组合，4～20个字符，且不能为纯数字', //长度错误tip
                pattent: /^[\u4e00-\u9fa5\w]+$/i, //验证正则
                ruleError: '用户名可使用字母、汉字、数字、下划线或其组合，4～20个字符，且不能为纯数字', //正则验证错误tip
                extendPattent: /^\d+$/, //辅助正则验证
                extendError: '用户名可使用字母、汉字、数字、下划线或其组合，4～20个字符，且不能为纯数字', //辅助正则验证错误tip
                extentRepOppose: true,
                checkOnline: true, //是否有ajax oninput验证
                ajaxUrl: '/dubbo_api/user/register/checkUserName', //ajax请求地址
                keyName: 'user_name'
            });

            //密码验证
            new Check({
                required: true,
                elem: $('#register_password'),
                errorElem: $('#register_password_a'),
                successElem: $('#register_pw_s'),
                defaultTip: '6-20位，支持字母、数字或符号的组合，不可单独使用字母、数字或符号',
                minLength: 6,
                maxLength: 20,
                lengthError: '6-20位，支持字母、数字或符号的组合，不可单独使用字母、数字或符号',
                pattent: /^[^\u4e00-\u9fa5\s]{1,}$/i,
                ruleError: '6-20位，支持字母、数字或符号的组合，不可单独使用字母、数字或符号',
                extendPattent: /^(([a-zA-Z]+)|([\d]+)|([\W_]+))$/i,
                extendError: '6-20位，支持字母、数字或符号的组合，不可单独使用字母、数字或符号',
                extentRepOppose: true,
                otherPattent: /(.)(\1){2}/,
                otherError: '密码不能是连续3个以上的相同字符',
                otherRepOppose: true,
                eventType: 'keyup',
                eventFunction: function () {
                    var param = {
                        elem: $('#register_password'),
                        errorElem: $('#register_password_a'),
                        msg: '6-20位，支持字母、数字或符号的组合，不可单独使用字母、数字或符号'
                    };
                    AuthPasswd(this.value, param);
                    $('#register_password_a').css({visibility:'visible'});
                },
                keyName: 'password'
            });

            //确认密码验证
            new Check({
                required: true,
                elem: $('#register_confirm_password'),
                errorElem: $('#register_confirm_password_a'),
                successElem: $('#register_rpw_s'),
                defaultTip: '请确保两次输入的密码一致',
                ruleError: '两次输入的密码不一致',
                pwElem: $('#register_password'),
                checkPassword: true,
                checkKey: 'confirm_password'
            });

            //手机验证
            new Check({
                elem: $('#register_mobile'),
                errorElem: $('#register_mobile_a'),
                successElem: $('#register_mobile_s'),
                defaultTip: '请输入手机号码',
                minLength: 11,
                maxLength: 11,
                lengthError: '请输入正确的手机号码',
                pattent: /^1\d{10}$/,
                ruleError: '请输入正确的手机号码',
                eventType: 'keyup',
                checkOnline: true,
                ajaxUrl: '/dubbo_api/user/register/checkMobile', //ajax请求地址
                keyName: 'mobile_phone',
                eventFunction: function () {
                    if(/^1\d{10}$/.test(this.value)){
                        $('#sms_captcha_s_a').css('display','');
                        $('#sms_captcha_e').show()
                    } else {
                        $('#sms_captcha_e').hide()
                        $('#sms_captcha_s_a').css('display','none');
                    }
                },
                blurFunction: function () {
                    //手机号为空，清空验证码，刷新图形验证码，隐藏success
                    if($('#register_mobile').val().length == 0) {
                        $('#register_captcha').val("")
                        $('#register_ver_s').css('display','none')
                        $.getCaptcha($('#JS_captcha'));
                    }
                }
            });

            //短信验证码验证
            new Check({
                elem: $('#sms_captcha'),
                errorElem: $('#sms_captcha_s_a'),
                successElem: $('#sms_captcha_s'),
                defaultTip: '短信验证码错误',
                minLength: 6,
                maxLength: 6,
                lengthError: '短信验证码错误',
                checkOnline: true,
                ajaxUrl: '/dubbo_api/user/register/checkSmsCode',
                extraData: function () {
                    return '&captcha_type=register&mobile_phone=' + $('#register_mobile').val();
                },
                keyName: 'sms_code'
            });

        })(jQuery);

        var img = new Image();
        if (!/ECS_ID\=/.test(document.cookie) || /autoLogin\=/.test(document.cookie)) img.src = '/ecsid_maker/?_=' + (new Date()).getTime();
    </script>
    <div id="static_dynamic" name="static_dynamic" page_sn="user" rgn_id="" debug=""></div>
    <script type="text/javascript">window.static_dynamic && static_dynamic();</script>    <div id="INIT_Fchat2" class="" style="display: none;width: 58px;height: 127px;right: 5px;top: 190px;_top: expression(eval(document.documentElement.scrollTop+190));background: url(http://image.meilele.com/images/201405/1401178094439.png) 0 0;_background: url(http://image.meilele.com/images/201405/140117892382.gif) 0 0;cursor: pointer;font-size: 12px;z-index: 1500;position: fixed;_position: absolute;overflow: hidden;"><div class="FC_btns FC_number" style="margin-left:24px;margin-top:-1px;" id="JS_FC_number2"></div></div>
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
</script>    <script src="http://image.meilele.com/js/ana.min.js?1121"></script>
<script>window._ana && _ana.push( ['trackView'] );</script>
<script>window._gaq=window._gaq||[];$(window).on("load",function(){window._gaq=window._gaq||[];window.MLLgaq=window.MLLgaq||[];for(var a=0;a<MLLgaq.length;a++){_gaq.push(MLLgaq[a]);}_gaq.push(["_setAccount","UA-10173353-1"]);_gaq.push(["_setDomainName","meilele.com"]);_gaq.push(["_trackPageview"]);var d=document.createElement("script"),b=new Date();d.type="text/javascript";d.async=true;d.defer=true;d.src=$.__IMG+"/zximages/js/dc.js?"+b.getFullYear()+(b.getMonth()+1)+(b.getDate()<10?"0"+b.getDate():b.getDate());var c=document.getElementsByTagName("script")[0];c.parentNode.insertBefore(d,c);});function parseGaData(){_gaq.push([arguments[0],arguments[1],arguments[2],arguments[3]]);}function gaSetActiveUser(b,a){if(!/isActiveUser=1/.test(document.cookie)&&!/ECSCP_ID=/.test(document.cookie)&&!/ECS_MLL_SE=/.test(document.cookie)){_gaq.push(["_trackEvent","ActiveUser",b+"",a+""]);if(window.$&&$.cookie){jQuery.cookie("isActiveUser","1",{domain:location.host,path:"/"});}}}window.bd_cpro_rtid="rHnLnHT";_LOAD_SCRIPT_("http://cpro.baidu.com/cpro/ui/rt.js");_LOAD_SCRIPT_("http://tajs.qq.com/stats?sId=11450600");_LOAD_SCRIPT_("http://tajs.qq.com/gdt.php?sId=23384945");_LOAD_SCRIPT_("http://tajs.qq.com/gdt.php?sId=21253825");_LOAD_SCRIPT_("http://tajs.qq.com/gdt.php?sId=26418742");_LOAD_SCRIPT_("http://tajs.qq.com/gdt.php?sId=43311811");window.goSpread=function(b){window._hmt=window._hmt||[];b=b||window.mllSpreadData||["_trackRTEvent",{data:{}}];var a=["_setAccount","d91942b1e6dd95baed4560c0c6d8071b"];window._hmt.push(a);window._hmt.push(b);return window._hmt;};if(!window.notGoSpread){goSpread();}window.gdt_tracker=window.gdt_tracker||[];window.goGdt=function(a){gdt_tracker.push(["set_source_id","132679"]);for(var b=0;b<a.length;b++){gdt_tracker.push(a[b]);}gdt_tracker.push(["send"]);_LOAD_SCRIPT_("http://qzs.qq.com/qzone/biz/res/gt.js");};(function(a){if(a.notJuXiao){return false;}a._mvq=a._mvq||[];_mvq.push(["$setAccount","m-22687-1"]);_mvq.push(["$logConversion"]);_LOAD_SCRIPT_("https:"==document.location.protocol?"https://static-ssl.mediav.com/mvl.js":"http://static.mediav.com/mvl.js");})(window);if(window.jQuery){jQuery(window).on("load",function(){jQuery.ajax({url:"http://cn-tags.vizury.com/analyze/pixel.php?account_id=VIZVRM1409",dataType:"script",async:true,cache:true,success:function(){window.pixel&&pixel.parse();}});});}(function(){if(Math.random()>0.1||!window.jQuery){return;}$(window).on("load",function(){var g;var c=function(i){var j=$(i);var h=j.parent("a");if(!h&&h.length!=1){return false;}var k=/\/category-.*\/goods-(\d+)\.html/.exec(h.prop("href"));if(k&&k[1]){i.__goodsId=k[1];i.__offsetTop=i._offsetTop||j.offset().top;return k[1];}else{return false;}};var d=function(h){h.__isSendGa=true;window._mllga&&window._mllga({utmac:"UA-53663717-1",utme:"5("+h.__goodsId+"*"+(h.getAttribute("data-src")||h.src)+")"});};var b=document.images;var f=[];for(var a=0,e=b.length;a<e;a++){if(c(b[a])){f.push(b[a]);}}scrollResponse=function(){if(g){clearTimeout(g);}g=setTimeout(function(){var i=window.pageYOffset||document.documentElement.scrollTop||document.body.scrollTop||0;for(var h in f){if(!f[h].__isSendGa&&i+document.documentElement.clientHeight>f[h].__offsetTop&&i<f[h].__offsetTop+(f[h].height||f[h].cilentHeight)){d(f[h]);}}},300);};scrollResponse();$(window).on("scroll",scrollResponse);});})();$(window).on("load",function(){if(!window._mllga){return;}var c=/thg=(.+)&adg=(.+)&adn=(.+)&ado=(.+)&adc=(\d+)/i;var a=function(e){var h=c.exec(e);if(h&&h.length==6){for(var g=1;g<=5;g++){if(h[g]){try{h[g]=decodeURIComponent(h[g].replace("*",""));}catch(f){}}}h.push(window.jQuery&&window.jQuery.cookie("region_name"));return h;}return false;};var d=function(e,f){if(!f){return;}var g="";if(window.getCookie&&getCookie("MLL_CID")){g="8(CID)9("+getCookie("MLL_CID")+")11(2)";}_mllga({utmac:"UA-52467404-2",utmt:"event",utme:"5("+e+"_"+f[1]+"*"+e+"_"+f[2]+"*"+e+"_"+f[3]+"_"+f[4]+"_"+f[6]+")"+g});};if(c.test(location.href)){var b=a(location.href);d("ad_click",b);window._ana&&window._ana.push(["trackEvent","ad_click",b[1],b[2],b[3],b[4],b[6]]);}setTimeout(function(){var j=document.links;var h=[],f;for(var e=0,l=j.length;e<l;e++){f=j[e].getAttribute("href");if(j[e]&&f&&c.test(f)){h.push(a(f));}}for(var g=0;g<h.length;g++){if(h[g]&&Math.random()<0.1){d("ad_show",h[g]);}}},5000);});$(window).on("load",function(){var c=location.search;if(c){c=c.replace("?","").split("&");for(var b=0;b<c.length;b++){if(c[b].indexOf("from=MT")===0){var a=new Image;a.src="/solr_api/mss/message/statistic.do?fromUrl="+encodeURIComponent(location.href);return;}}}});(function(){var a=window.google_tag_params||{ecomm_pagetype:"other"};var c=new Image();var d=[];for(var b in a){d.push("data."+b+"="+encodeURIComponent(a[b]));}var e="//googleads.g.doubleclick.net/pagead/viewthroughconversion/992307345/?value=0&label=_2h2CK-jsgQQkdGV2QM&guid=ON&script=0&"+d.join("&");if(window.jQuery){jQuery(window).on("load",function(){c.src=e;});}else{window.onload=function(){c.src=e;};}})();window.criteo_q=window.criteo_q||[];window.goCriteo=function(c){if(criteo_q.length==0){criteo_q=[{event:"viewHome"}];}var b=window.getCookie&&window.getCookie("ECS[email]");var a=[{event:"setAccount",account:17380},{event:"setCustomerId",id:b||""},{event:"setSiteType",type:"d"}];Array.prototype.push.apply(criteo_q,a);_LOAD_SCRIPT_("http://static.criteo.net/js/ld/ld.js",c);};if(!window.notGoCriteo){goCriteo();}
/*leihao:2017-03-13 17:00:12*/</script>
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





</body>
</html>
<!--
duanzheng*247512:2017-01-05 14:59:46
-->