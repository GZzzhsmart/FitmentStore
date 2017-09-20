<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="pragma" content="no-cache" />
<title>乐家具商城登录界面</title>
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
<link rel="shortcut icon" href="http://image.meilele.com/favicon.ico" />
<link rel="icon" href="http://image.meilele.com/favicon.ico" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/mll.common.new.min.css" /><style type="text/css">
    .inline_block{display:inline-block;*zoom=1}.yahei{font-family:"Microsoft YaHei","SimHei"}.clearfix:after{content:" ";display:block;clear:both;height:0}
.clearfix{zoom:1}.none{display:none}.user_header .nav{width:180px;padding-top:40px;text-align:right}header{position:relative;width:1190px;margin:0 auto;text-align:left}
.main{padding:72px 0;min-width:1190px}.bg-red{background:#cf000e}aside{position:relative;width:306px;min-height:400px;background:#fff;padding:27px}.main .content{margin:0 auto;width:1070px;position:relative}
.switch-type{position:relative;width:306px;overflow:hidden}.main .content aside .login-switch{position:relative;font-size:16px;font-weight:bold;color:#888;border-bottom:1px solid #d1d1d1;width:459px}
.main .content aside .login-switch li{position:relative;float:left;width:153px;text-align:center;padding:13px 0;cursor:pointer}.main .content aside .login-switch .i-new{position:absolute;top:4px}
.main .content aside .login-switch li.on{margin-bottom:-1px;color:#cf000e;border-bottom:2px solid #cf000e}.main .content aside .login-switch .switch-mobile{color:#333;text-align:left;margin-bottom:-1px;border-bottom:2px solid #fff}
.main .content aside .login-form{width:306px;overflow:hidden;position:relative}.main .content aside .login-form .login-type{position:relative;width:918px;left:-306px}
.main .content aside .login-form .login-weixin,.main .content aside .login-form .login-pwd,.main .content aside .login-form .login-mobile,.main .content aside .login-form .login-account,.main .content aside .login-form .login-quick{width:306px}
.main .content aside .login-form .login-weixin{height:298px;padding-top:53px;text-align:center}.main .content aside .login-form .qr-code{position:relative}
.main .content aside .login-form .qr-code .qr-mark{position:absolute;background:rgba(0,0,0,.5);width:174px;height:174px;left:66px;top:0}.main .content aside .login-form .qr-mark i{display:block;width:48px;height:48px;background:url('http://image.meilele.com/themes/paipai/images/allPuzzle.png') -123px -53px no-repeat;margin:63px auto 0}
.main .content aside .login-form .login-pwd{padding-top:25px}.main .content aside .login-form .login-pwd{padding-top:25px}.main .content aside .login-form .login-mobile{padding-top:12px}
.main .content aside .login-form .input-group{position:relative;height:40px;border:1px solid #ddd;overflow:hidden;line-height:40px}.main .content aside .login-form .input-group input{float:left;height:20px;font-size:13px;width:254px;border:0;padding:10px 0;margin:0}
.main .content aside .login-form .input-group .i-user{float:left;width:19px;height:19px;background:url('http://image.meilele.com/themes/paipai/images/allPuzzle.png') 0 -30px no-repeat;margin:10px}
.main .content aside .login-form .input-group .i-pwd{float:left;width:19px;height:19px;background:url('http://image.meilele.com/themes/paipai/images/allPuzzle.png') -21px -30px no-repeat;margin:10px}
.main .content aside .login-form .input-group .i-captcha{float:left;width:19px;height:19px;background:url('http://image.meilele.com/themes/paipai/images/allPuzzle.png') -42px -30px no-repeat;margin:10px}
.main .content aside .login-form .input-group .i-phone{float:left;width:19px;height:20px;background:url('http://image.meilele.com/themes/paipai/images/allPuzzle.png') -63px -30px no-repeat;margin:10px}
.main .content aside .login-form .input-group .refresh-btn{color:#4a92f5}.main .content aside .login-form .input-group .refresh-btn:hover{text-decoration:none;color:#4a92f5!important}
.login-pwd .checkbox-group{height:21px;line-height:21px}.login-pwd .checkbox-group .i-checkbox{float:left;width:21px;height:21px;background:url('http://image.meilele.com/themes/paipai/images/allPuzzle.png') -84px -30px no-repeat;margin-right:4px;cursor:pointer}
.login-pwd .checkbox-group .i-checkbox.checked{background-position:-107px -30px}.login-pwd .checkbox-group .remchk{display:none}.submit-btn{display:block;height:42px;line-height:42px;background-color:#cf000e;text-align:center;font-size:16px;font-weight:bold;color:#fff;border-radius:3px;margin:10px 0 0}
.submit-btn:hover{text-decoration:none;color:#fff!important}.regist-group{margin:20px 0 30px}.regist-group a:hover{text-decoration:none;color:#4a92f5!important}
.captcha-img{margin:5px}.checkbox-group{font-size:13px}.other-group .other-login{width:179px;border-right:1px solid #e6e6e6}.other-group .mobile-login{padding-left:20px;_padding-left:10px}
.other-group dt{margin-bottom:10px}.i-qq,.i-weibo,.i-weixin,.i-zhifubao,.i-taobao,.i-mobile{display:block;width:28px;height:28px;margin-right:5px;background:url('http://image.meilele.com/themes/paipai/images/allPuzzle.png') no-repeat}
.i-qq{background-position:0 0}.i-weibo{background-position:-28px 0}.i-weixin{background-position:-56px 0;cursor:pointer}.i-zhifubao{background-position:-86px 0}
.i-taobao{background-position:-114px 0}.i-mobile{background-position:-143px 0}.main .content aside .login-form .sms-btn{background:#f0f0f0;color:#333;height:34px;width:110px;text-align:center;line-height:34px;border-radius:3px;margin-top:3px}
.main .content aside .login-form .sms-btn:hover{color:#333!important;text-decoration:none}.main .content aside .login-form .sms-disabled{color:#999!important;cursor:default!important}
.main .content aside .login-form .sms-disabled:hover{color:#999!important}.input_error{background-color:#fff3f3;border-color:#c9033b!important;color:#c9033b}
.input_error input{border-color:#fff3f3!important;background-color:#fff3f3;color:#c9033b!important}.error_tip{font-size:12px;margin:5px 0 4px}.black{color:#333!important}
.gray{color:#b2b2b2}.select-username{position:relative}.select-username ul{box-sizing:border-box;position:absolute;background:#fff;width:306px;border:1px solid #ddd;border-top:0;left:-1px;top:40px;*top:41px;z-index:10}
.select-username ul li{padding:2px 5px;height:42px;line-height:40px;cursor:pointer}.select-username ul li:hover{background:#ededed}.select-icon{position:absolute;display:block;
overflow:hidden;background:url('http://image.meilele.com/images/login-select-icon.png');width:16px;height:9px;top:16px;right:11px;_right:41px;background-position-y:-9px;cursor:pointer}
#JS_username{_display:block}.icon-open{background-position-y:0}.third-party .content .bind-tips{text-align:center;font-size:14px;color:#555;margin-bottom:30px}
.third-party .content .bind-tips span{color:#e62318}.third-party .content aside{border:1px solid #ddd;min-height:398px;width:304px}.third-party .content{padding:0 75px;width:920px}
.third-party .content aside .login-switch{width:306px}.third-party .content aside .login-form .login-account{width:306px}.third-party .content aside .login-form .login-type{width:612px;left:0}
.third-party .content aside .login-form .login-account,.third-party .content aside .login-form .login-quick{padding-top:25px}.third-party .content aside .login-form .other-group{text-align:right;margin-top:20px}
.third-party .content aside .login-form .other-group span{color:#666}.third-party .content aside .login-form .other-group a{color:#4a92f5}.third-party .content aside .login-form .other-group a:hover{color:#4a92f5!important;text-decoration:none}
.third-party .content aside .third-party-header{font-size:16px;color:#666;font-weight:bold;padding:13px 0;border-bottom:1px solid #d1d1d1}.third-party .content aside .third-party-body 
.third-party-avatar{margin-top:90px;text-align:center}
.third-party .content aside .third-party-username{text-align:center;color:#333;margin:20px;font-size:14px}.third-party .content .arrow{position:relative;top:202px;left:64px;
width:72px;height:49px;background:url('http://image.meilele.com/themes/paipai/images/allPuzzle.png') 0 -50px no-repeat}
.third-party-header .t-logo{float:left;width:20px;height:20px;background:url('');margin-right:6px;margin-top:1px}.third-party-header .tl1{background-position:-20px 0}
.third-party-header .tl3{background-position:-60px 0}.third-party-header .tl4{background-position:-40px 0}.third-party-header .tl8{background-position:-80px 0}
/*jinzeze*227743:2016-09-01 18:30:49*/</style>


<style>
    .ipad_root,.c-mask {min-width: 1190px;}
</style>
<c:if test="${msg!=null}">
	<script type="text/javascript">
		alert("${msg}");
	</script>
</c:if>
<script type="text/javascript">
	function refresh(){
		document.getElementById("codes").src= '<%=basePath %>data/enimg.jsp?'+Math.random();
	}
	
</script>
</head>
<body>
<header class="login-header">
    <div id="" class="user_header clearfix" style="padding:15px 0px;">
	<div class="logo Left" style="background: url(<%=basePath %>images/face.png) 0 0 no-repeat;width:160px;height:52px"><a href="/" title="返回美乐乐首页"></a></div>
	<div id="" class="nav Right">
		<a href="<%=basePath %>data/face.jsp">返回首页</a>
		|
		<a href="/article_cat-4/article-656.html" target="_blank">帮助中心</a>
	</div>
</div></header>
<div class="main bg-red">
    <div class="content clearfix">
        <article class="Left">
            <a href="<%=basePath %>data/face.jsp" title="体验馆6周年庆" target="_blank">
                <img alt="体验馆6周年庆" src="<%=basePath %>images/1.png" style="background-color:transparent;" width="620" height="454"  />
            </a>
        </article>
        <c:if test="${msg!=null}">
		  	<script type="text/javascript">
		  		alert("${msg}");
		  	</script>
		</c:if>
        <aside class="Right" id="JS_loginForm">
            <form action="<%=basePath %>userservlet?order=login" method="post" name="form1" onsubmit="return btntest();">
            	<div class="yahei">
                <div class="switch-type">
                    <ul class="login-switch clearfix">
                        <li class="switch-acount JS_switch-key on" data-switch-index="1">账号登录</li>
                    </ul>
                </div>
                <div class="login-form">
                    <div class="login-type clearfix">
                        
                        <div class="login-weixin Left">
                            <div class="qr-code">
                                <img id="JS_QR_CODE" src="" alt="" width="174" height="174">
                            </div>
                        </div>
                        
                        <div id="JS_login_pwd" class="login-pwd Left">
                            <div class="input-group select-username" style="overflow:inherit">
                                <label class="i-user" for="username"></label>
                                <input class="yahei gray" id="username"name="username" type="text">
                            </div>
                            <p class="error_tip red">&nbsp;</p>
                            <div class="input-group">
                                <label class="i-pwd" for="password"></label>
                                <input class="yahei black" id="password" name="password" type="password" AutoComplete="off">
                            </div>
                            <p class="error_tip red">&nbsp;</p>
                            
                           <div class="input-group">
                                <label class="i-captcha" for="captcha"></label>
                                <input maxlength="4" class="Left yahei gray" name="code" id="code" type="text" style="width:150px">
                                <a class="Left" href="javascript:void(0);">
                                <img class="captcha-img" width="60" height="30"   src="<%=basePath %>data/enimg.jsp" id="codes" onclick="refresh();" title="看不清换一张" alt="验证码"/></a>
                                <a href="javascript:void(0);"><p onclick="refresh();">换一张</p></a>
                            </div>
                            <p class="error_tip red">&nbsp;</p>
							
                            <p class="error_tip red none">&nbsp;</p>

                            <div class="checkbox-group gray">
                                <input type="checkbox"><span>自动登录</span>
                            </div>
                            <input type="submit" style="margin-top:30px;width:300px" class="submit-btn" onclick="btntest();" tabindex="18" value="登录"></input>
                            <div class="regist-group clearfix">
                                <a class="gray Left" href="<%=basePath %>data/zhuce.jsp">注册</a><a class="gray Right" href="/user/?act=get_password">忘记密码?</a>
                            </div>
                            <div class="other-group gray">
                                <dl class="Left other-login">
                                    <dt>使用合作账号登录：</dt>
                                    <dd class="clearfix other-login">
                                        <a class="i-qq Left"></a>
                                        <a class="i-weibo Left"></a>
                                        <span class="i-weixin Left JS_switch-key J-weixin-request" data-switch-index="0"></span>
                                        <a class="i-zhifubao Left" ></a>
                                    </dd>
                                </dl>
                                <dl class="Left mobile-login">
                                    <dt>您还可以选择：</dt>
                                    <dd style="line-height:29px;cursor:pointer" class="JS_switch-key" data-switch-index="2">
                                        <a class="i-mobile Left" href="javascript:;"></a>手机快捷登录
                                    </dd>
                                </dl>
                            </div>
                        </div>
                        
                        <div id="JS_login_mobile" class="login-mobile Left">
                            <div class="input-group">
                                <label class="i-phone" for="mobile"></label>
                                <input class="yahei gray" name="username" type="text">
                            </div>
                            <p class="error_tip red">&nbsp;</p>
                            <div class="input-group">
                                <label class="i-pwd" for="captcha"></label>
                                <input maxlength="6" class="Left yahei gray" name="mobileCaptcha" type="text" style="width:150px">
                                <a class="Left sms-btn" href="javascript:void(0);">获取短信验证码</a>
                            </div>
                            <p class="error_tip red">&nbsp;</p>
                            <input type="hidden" name="captchaType" value="sendPwd">
                            <a style="margin-top:30px;" class="submit-btn" href="javascript:;">登录</a>
                            <div class="regist-group clearfix">
                                <a class="gray Right JS_switch-key" data-switch-index="1" href="javascript:;">返回账号登录>></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            </form>
        </aside>
    </div>
</div>
<div class="footer-box">

    <div class="footer">
        <div class="footer-icon">
            <div class="w"> 
                <a  target="_blank" title="网商+体验馆" rel="nofollow" class="icon-map">
	                <p class="icon-bg i1"></p>
	                <p class="icon-title">网商+体验馆</p></a>
	            <a  target="_blank" title="100%正品" rel="nofollow" class="icon-map">
	            	<p class="icon-bg i3"></p><p class="icon-title">100%正品</p></a>
	            <a  target="_blank" title="双重质检" rel="nofollow" class="icon-map"><p class="icon-bg i4"></p>
	            	<p class="icon-title">双重质检</p></a>
	            <a  target="_blank" title="全球化采购" rel="nofollow" class="icon-map"><p class="icon-bg i5"></p>
	         		<p class="icon-title">全球化采购</p></a>
	         	<a  target="_blank" title="无理由退货" rel="nofollow" class="icon-map">
	         		<p class="icon-bg i6"></p><p class="icon-title">无理由退货</p></a>
	         	<a  target="_blank" title="贵就赔" rel="nofollow" class="icon-map">
	         		<p class="icon-bg i7"></p><p class="icon-title">贵就赔</p></a>
	         	<a  target="_blank" title="万千口碑" rel="nofollow" class="icon-map">
	         		<p class="icon-bg i8"></p><p class="icon-title">万千口碑</p></a>
            </div>
        </div>
    </div>

    <div class="footer-copy">
        <div class="link-container">
                            <div class="w">
                    <div class="copy-index clearfix" style="padding-top:0">
                        <div class="fl">
                            <p>
                                 <a  target="_blank" title="装修效果图">装修效果图</a> | 
                                 <a  target="_blank" title="家具图片">家具图片</a> | 
                                 <a  target="_blank" title="家居资讯">家居资讯</a> | 
                                 <a  target="_blank" title="生活百科">生活百科</a> | 
                                 <a  target="_blank" title="家私导购">家私导购</a> | 
                                 <a  target="_blank" title="品牌展厅">品牌展厅</a> | 
                                 <a  target="_blank" title="装修论坛">装修论坛</a> | 
                                 <a  target="_blank" title="furniture store">furniture store</a> | 
                                 <a  target="_blank" title="客服中心" rel="nofollow">客服中心</a> | 
                                 <a  target="_blank" title="网站地图">网站地图</a> | 
                                 <a  target="_blank" title="友情链接" rel="nofollow">友情链接</a> |
                                 <a  target="_blank" title="更多">更多</a>
                            </p>
                            <p>
                                <span class="yen">&copy; 2017-2027 </span><span id="JS_footer_copyright">乐家具商城</span> 版权所有，并保留所有权利。<a href="/" target="_blank" class="gray" rel="nofollow">ICP备案证书号：赣ICP备08008334号</a>
                            </p>
                        </div>
                        <div class="fr credit">
                            <a target="_blank" ><span><i class="c1"></i>诚信网站示范企业</span></a>
                            <a target="_blank" ><span><i class="c2"></i>可信网站信用评价</span></a>
                            <span><i class="c3"></i>经营网站备案信息</span>
                        </div>
                    </div>
                </div>
        </div>
    </div>
</div>




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
            m.innerHTML = '体验馆<img src="' + M.__IMG + '${pageContext.request.contextPath}/images/hot2015.gif" style="position:absolute;background:none;right:0px;top:-5px;" />';
        } else if (py && m && is_vertual == 1) {
            m.setAttribute('href', '/topic/2014_zsjm01.html?from=nav');
            m.innerHTML = '招商加盟<img src="' + M.__IMG + '${pageContext.request.contextPath}/images/new2015.gif" style="position:absolute;background:none;right:0px;top:-5px;" />';
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
                     _html+='<a onclick="window._gaq.push([\'_trackEvent\',\'2016美乐乐搜索\',\'搜索历史记录\',\'click\']);" target="_blank" href="/category-9999/?keywords='+arr[i]+'">'+arr[i]+'</a>';
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
                            _html+='<a onclick="window._gaq.push([\'_trackEvent\',\'2016美乐乐搜索\',\'热门搜索\',\'click\']);" target="_blank" title="'+data[i].name+'" class="hot-product" href="'+data[i].url+'">'+cutName+'</a>'
                        }else{
                          _html+='<a onclick="window._gaq.push([\'_trackEvent\',\'2016美乐乐搜索\',\'热门搜索\',\'click\']);" target="_blank" title="'+data[i].name+'" class="hot-product" href="'+data[i].url+'">'+data[i].name+'</a>'  
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
   
</script><script type="text/javascript">
var img = new Image();
if(!/ECS_ID\=/.test(document.cookie) || /autoLogin\=/.test(document.cookie))img.src ='/ecsid_maker/?_='+(new Date()).getTime();
</script>

<div id="static_dynamic" name="static_dynamic" page_sn="user" rgn_id="" debug=""></div>
<script type="text/javascript">window.static_dynamic && static_dynamic();</script>
<div id="INIT_Fchat2" class="" style="display: none;width: 58px;height: 127px;right: 5px;top: 190px;_top: expression(eval(document.documentElement.scrollTop+190));
background: url(http://image.meilele.com/images/201405/1401178094439.png) 0 0
;_background: url(http://image.meilele.com/images/201405/140117892382.gif) 0 0;cursor: pointer;font-size: 12px;z-index: 1500;
position: fixed;_position: absolute;overflow: hidden;">
<div class="FC_btns FC_number" style="margin-left:24px;margin-top:-1px;" id="JS_FC_number2"></div></div>
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
</script>
<script type="text/javascript" src="<%=basePath %>js/jquery-1.4.1.js"></script>
<script type="text/javascript">
	$(function(){
		$("#password").bind("click",function(){
			var un=$("#username").val();
			if(un==""){
				alert("请输入账号");
				$("#username").focus();
				return;
			}
			if(isNaN(un)){
				alert("账号只能输入纯数字");
				$("#username").focus();
				return;
			}
		});
		$("#code").bind("click",function(){
			var un=$("#username").val();
			var pw=$("#password").val();
			if(un==""){
				alert("请输入账号");
				$("#username").focus();
				return;
			}
			if(isNaN(un)){
				alert("账号只能输入纯数字");
				$("#username").focus();
				return;
			}
			if(pw==""){
				alert("请输入密码");
				$("#password").focus();
				return;
			}
		});
		
	});
	function btntest(){
			var un=$("#username").val();
			var pw=$("#password").val();
			var code=$("#code").val();
			if(un==""){
				alert("请输入账号");
				$("#username").focus();
				return false;
			}
			if(isNaN(un)){
				alert("账号只能输入纯数字");
				$("#username").focus();
				return false;
			}
			if(pw==""){
				alert("请输入密码");
				$("#password").focus();
				return false;
			}
			if(code==""){
				alert("请输入验证码");
				$("#code").focus();
				return false;
			}
			return true;
	}
</script>

</body>
</html>

