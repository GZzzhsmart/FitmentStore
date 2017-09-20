<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="SQLBean.UserBean"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <title>乐家具商城主页</title>
    <link rel="icon" href="<%=basePath %>images/favicon.ico" />
    <link rel="stylesheet" href="<%=basePath %>/css/mll.common.new.min.css" /> 
      <style>@charset "utf-8";.fl,.Left{float:left}.fr,.Right{float:right}.r{text-align:right !important}.c{text-align:center !important}.l{text-align:left !important}a{text-decoration:none;color:#333}a:hover{color:#cf000e !important}a:hover img{text-decoration:none}.none{display:none}.clearfix:after{content:'.';display:block;height:0;clear:both;visibility:hidden}.clearfix{*zoom:1}.clear{clear:both}.w{width:1190px;margin-left:auto;margin-right:auto}img{overflow:hidden;vertical-align:top;background:#eee}.red,a.red{color:#cf000e !important}.gray,a.gray{color:#999}.orange,a.orange{color:#f60}.black,a.black{color:#333}.white,a.white{color:#fff}.bold{font-weight:bold}input{-webkit-appearance:none;border-radius:0}textarea{-webkit-appearance:none;border-radius:0}body{margin:0 auto;font-family:Microsoft YaHei,Arial;_font-family:Microsoft YaHei,宋体,Arial;font-size:12px}html,html body{_background-image:url(about:blank);_background-attachment:fixed}.navigator-index{margin-bottom:0;border-bottom:0}.navigator-index .menu-panel h2 span{display:none}.navigator-index .navigator li{position:relative;float:left;padding-left:35px}@keyframes fadeInR{from{left:-20px}to{opacity:1;left:0}}@keyframes fadeInL{from{right:160px}to{opacity:1;right:180px}}.fadeInR{-webkit-animation-name:fadeInR;animation-name:fadeInR;-webkit-animation-duration:1.5s;animation-duration:1.5s;-webkit-animation-iteration-count:1;animation-timing-function:linear;-webkit-animation-timing-function:linear}.fadeInL{-webkit-animation-name:fadeInL;animation-name:fadeInL;-webkit-animation-duration:1s;animation-duration:1s;-webkit-animation-iteration-count:1;animation-timing-function:linear;-webkit-animation-timing-function:linear}.scroll-banner{position:relative;z-index:0;overflow:hidden;height:460px}.scroll-banner .scroll-content{height:460px}.scroll-banner .scroll-content li{position:absolute;height:460px;width:100%}.scroll-banner .scroll-index{position:relative;filter:inherit;width:1190px;height:460px;margin:0 auto}.scroll-banner .scroll-item{position:absolute;width:100%;top:0;left:0;text-align:center;display:none}@media screen and (min-width:0){.scroll-banner .scroll-item .sc-big{position:relative}}.scroll-banner .scroll-item .sc-small{position:absolute;right:180px;top:0;background:0}.scroll-btn{position:absolute;overflow:hidden;bottom:22px;z-index:3;width:100%;text-align:center}.scroll-btn span{display:inline-block;width:10px;height:10px;border:2px solid #fff;opacity:.7;line-height:15px;text-align:center;border-radius:50%;margin:0 3px;cursor:pointer}.scroll-btn span.current{background:#fff;opacity:.9}.pr{position:relative;z-index:200}.expr-opacity,.expr-link{position:absolute;width:180px;height:400px;right:0;top:30px}.expr-opacity{z-index:199;background:#fff;opacity:.8;filter:alpha(opacity=70);*filter:alpha(opacity=80);_filter:alpha(opacity=80)}.expr-link{z-index:200}.expr-link .word{text-align:center;font-size:15px;margin-top:40px;margin-bottom:32px}.expr-link .word p{color:#333;font-size:14px}.expr-link .word span{color:#cf000e;font-size:20px}.expr-link .pavilio{background:url('http://image.meilele.com/images/common/site/site.png') -92px -237px no-repeat;_background:url('http://image.meilele.com/images/common/site/site.png') -92px -237px no-repeat;width:151px;height:151px;margin:0 auto 42px;text-align:center;font-size:15px}.expr-link .pavilio p{font-size:20px;font-weight:bold;padding-top:25px;color:#444;position:relative}.expr-link .set-bg{position:absolute;left:14px;top:120px;background:url('http://image.meilele.com/images/common/site/site_bg.png') no-repeat;_background:url('http://image.meilele.com/images/common/site/site_bg.gif') no-repeat;width:151px;height:151px;z-index:0}.expr-link .pavilio span{color:#444;font-size:14px}.expr-link .expr-btn{display:block;width:132px;height:30px;margin:0 auto;background:url('http://image.meilele.com/images/common/site/site.png') -92px -142px no-repeat;_background:url('http://image.meilele.com/images/common/site/site.gif') -92px -142px no-repeat}.expr-link .expr-btn:hover{background-position:-92px -172px}.expr-link .expr-word{width:136px;height:16px;
      background:url('http://image.meilele.com/images/common/site/site.png') -92px -107px no-repeat;_background:url('http://image.meilele.com/images/common/site/site.gif') -92px -107px no-repeat;margin:10px auto 0}.advert-img{margin-top:20px}.advert-img .img-item{position:relative;width:290px;height:150px;margin-right:10px;overflow:hidden}.advert-img .img-item.last{margin-right:0 !important}.advert-img .img-item .word{position:absolute;font-size:14px;left:20px;top:18px;z-index:2}.advert-img .img-item img{width:295px;height:184px;position:relative;right:0;transition:.2s ease-in-out;-webkit-transition:.2s ease-in-out;-moz-transition:.2s ease-in-out;-o-transition:.2s ease-in-out}.advert-img .img-item img:hover{right:5px}.advert-img .img-item .word p{font-size:22px}.floor{margin-top:48px}.floor img{opacity:0}.floor .floor-header{border-bottom:1px solid #333}.floor .floor-header h3{font-size:20px;font-weight:400;text-align:left;width:210px;line-height:16px;padding:4px 0 12px}.floor .floor-header h3 a{color:#000}.floor .floor-header .floor-nav li{line-height:14px;font-size:14px;border-bottom:2px solid #fff;margin-right:35px;padding:8px 3px;cursor:pointer;color:#666}.floor .floor-header .floor-nav li.hover{font-size:15px;font-weight:bold;border-bottom:2px solid #222;color:#222}.floor .floor-header .floor-tag a{line-height:32px;margin-right:24px;color:#666}.floor .floor-header .floor-tag a.last{margin-right:0 !important}.floor .floor-table{border-bottom:1px solid #eee;border-right:1px solid #eee;position:relative}.floor-left{position:relative;width:208px;height:610px;background:#fcfcfc;border-left:1px solid #eee;border-right:1px solid #eee}.floor-left .floor-img{width:100%;height:287px}.floor-left .aTag{padding:38px 0 0 30px;height:128px;overflow:hidden;_height:118px}.floor-left .aTag a{padding-right:18px;display:inline-block;width:65px;text-align:left;overflow:hidden;height:28px;line-height:28px;color:#666;font-size:13px}.floor-left .ad{text-align:center;padding:22px 0 14px}.floor-left .ad a{display:inline-block;border-right:1px solid #f5f5f5;border-bottom:1px solid #f5f5f5}.floor-left .ad a.last{border-right:none !important}.floor-left .ad a.second{border-bottom:0}.floor-left .ad img{width:94px;height:60px;background:#fff}.floor-left .aImg{position:relative;width:210px;margin-left:-1px;_width:208px}.floor-left .aImg .brand-title{position:absolute;font-size:22px;color:#fff;top:22px;left:20px}.floor-left .aImg .brand-subtitle{position:absolute;font-size:15px;color:#fff;top:52px;left:20px}.floor-left .aImg .brand-btn{position:absolute;font-size:12px;display:inline-block;color:#fff;top:80px;left:20px;border:1px solid #fff;padding:2px 7px}.floor-left .aImg .brand-i{font-family:'宋体'}.floor-right{height:610px;width:979px;position:absolute;right:0;top:0}.floor-right .scroll-bar{position:relative;width:505px;height:365px;border-right:1px solid #eee;border-bottom:1px solid #eee;overflow:hidden}.JS_ul_banner{width:505px;height:365px;position:relative}.JS_ul_banner li{position:absolute;width:505px}.JS_floor_banner .nav{position:absolute;width:100%;z-index:21;bottom:8px}.JS_floor_banner .JS_list_banner{margin:0 auto;width:60px}.JS_floor_banner .JS_list_banner a{width:10px;height:10px;border-radius:50%;opacity:.8;background:#fff;
      display:inline-block;margin:0 4px;opacity:.6}.JS_floor_banner .JS_list_banner a.last{margin-left:0}.JS_floor_banner .JS_list_banner a.hover{opacity:1}.floor-right .content{position:absolute;width:100%;z-index:20;bottom:32px}.floor-right .content-banner{text-align:center;margin:0 auto;width:245px;height:90px;background:#fff;background:rgba(255,255,255,.8);_background:#fff;filter:alpha(opacity=80)}.floor-right .content-banner .txt-l{display:inline-block;font-size:20px;color:#000;padding:16px 2px 4px;border-bottom:1px dotted #000}.floor-right .content-banner .txt-s{font-size:13px;color:#333;margin-top:4px}.floor-right .scroll-bar img{width:100%}.floor-right .floor-bar{position:relative;overflow:hidden}.floor-right .floor-bar img{position:relative;width:100%;background:#fff;right:0;transition:.2s ease-in-out;-webkit-transition:.2s ease-in-out;-moz-transition:.2s ease-in-out;-o-transition:.2s ease-in-out}.floor-right .floor-bar img:hover{right:5px}.floor-right .floor-bar.s1{width:236px;height:365px;border-bottom:1px solid #eee;border-right:1px solid #eee}.floor-right .floor-bar.s2{width:236px;height:182px;border-bottom:1px solid #eee}.floor-right .floor-bar.s4{width:252px;height:244px;border-right:1px solid #eee}.floor-right .floor-bar.t5{width:252px;height:244px;border-right:1px solid #eee}.floor-right .floor-bar.s5{width:252px;height:244px;border-right:1px solid #eee}.floor-right .floor-bar.t6{width:252px;height:244px;border-right:1px solid #eee}.floor-right .floor-bar.s6{width:236px;height:244px;border-right:1px solid #eee}.floor-right .floor-bar.t7{width:236px;height:244px;border-right:1px solid #eee}.floor-right .floor-bar.s7{width:236px;height:244px}.floor-right .floor-bar.t8{width:236px;height:244px}.floor-right .floor-bar ul{position:absolute;line-height:18px;left:20px;bottom:14px}.floor-right .floor-bar.s1 ul{bottom:12px}.floor-right .floor-bar ul li.name a,.floor-right .floor-bar ul li.prize a{font-size:13px;color:#222;display:block;width:100%}.floor-right .floor-bar ul li.tips a{font-size:12px;color:#aaa;line-height:18px;display:block;width:100%}.floor-right .floor-bar ul li.prize a{color:#666 !important}.floor-right .floor-bar:hover .name a{color:#cf000e !important}.floor-right .floor-bar ul li.name .activity{margin-left:5px;color:#cf000e;border:1px solid #cf000e;font-size:12px;padding:0 2px;display:inline-block;line-height:13px;position:relative;top:-1px}.ad-banner img{width:100%;margin:40px 0}.feed-index{border:1px solid #eee;padding:20px 30px 30px}.feed-index h5{font-weight:400;margin-bottom:20px;border-bottom:1px solid #eee}.feed-index h5 span{font-size:15px;border-bottom:1px solid #cf000e;line-height:15px;padding:10px 0;position:relative;color:#333;bottom:-1px}.feed-index h5 span.i{padding-right:20px}.feed-index h5 span i{overflow:hidden;position:absolute;right:0;_top:9px;width:15px;height:15px;background:url('http://image.meilele.com/images/common/site/site.png') -92px -62px no-repeat;_background:url('http://image.meilele.com/images/common/site/site.gif') -92px -62px no-repeat;cursor:pointer}.feed-index h5 a{font-size:12px;color:#aaa;line-height:36px}.feed-index .notice{width:361px}.feed-index .show{width:447px;margin:0 40px}.feed-index .query{width:240px}.feed-index .notice ul{margin-left:20px;line-height:26px}.feed-index .notice ul li a{color:#666}.feed-index .notice img{width:120px;height:160px}.feed-index .show img{width:100px;height:70px}.feed-index .show dl{margin-left:120px;width:327px}.feed-index .show dt{width:327px;font-size:13px;margin-bottom:8px;white-space:nowrap;text-overflow:ellipsis;overflow:hidden}.feed-index .show dd{line-height:20px;height:36px;overflow:hidden}.feed-index .show dd a{color:#aaa}.feed-index .query-form .query-input{margin-bottom:15px;position:relative}#JS_pic_captcha{cursor:pointer}.feed-index .query-form .query-input input{width:188px;height:32px;border:1px solid #e8e8e8;padding-left:10px;font-size:14px;font-family:'微软雅黑';line-height:32px}.feed-index .query-form .query-input input.w110{width:98px;margin-right:10px}.feed-index .query-form .query-btn{cursor:pointer;font-size:16px;display:block;margin-top:15px;width:200px;height:34px;color:#fff;background:#cf000e;text-align:center;line-height:34px;border:0;font-size:14px}.feed-index .query-form .query-btn:hover{color:#fff !important}.feed-index .query-form .modify-query{margin-left:6px;color:#cf000e}.feed-index .query-form .send-again{display:inline-block;padding:9px 0;width:80px;text-align:center;border:1px solid #e8e8e8;cursor:pointer;margin-right:6px}.feed-index .query-form .send-again:hover{color:#cf000e}.feed-index .query-form .sms-disabled{color:#ccc !important;cursor:default}.feed-index .query-form .sms-disabled:hover{color:#ccc !important}.feed-index .query-form .query-success{position:absolute;top:9px;right:18px;width:15px;height:15px;background:url('http://image.meilele.com/images/common/site/site.png') -92px -77px no-repeat;_background:url('http://image.meilele.com/images/common/site/site.gif') -92px -77px no-repeat;margin-left:5px}.feed-index .query-form .query-error{position:absolute;top:9px;right:18px;width:15px;height:15px;background:url('http://image.meilele.com/images/common/site/site.png') -92px -92px no-repeat;_background:url('http://image.meilele.com/images/common/site/site.gif') -92px -92px no-repeat;margin-left:5px}.expr-index{margin-top:30px}.expr-index .expr-title{font-size:18px;color:#333;font-weight:400}.expr-index .expr-title span{position:relative;padding-left:40px;font-size:14px;top:2px}.expr-index .expr-title i{overflow:hidden;left:19px;top:-1px;_top:0;position:absolute;width:17px;height:19px;background:url('http://image.meilele.com/images/common/site/site.png') -92px -123px no-repeat;_background:url('http://image.meilele.com/images/common/site/site.gif') -92px -123px no-repeat}.expr-index .expr-list{margin-top:14px;border:1px solid #eee;border-right:0;border-bottom:0}.expr-index .expr-list img{width:170px;height:107px;background:#fff}.expr-item{width:553px;border-right:1px solid #eee;border-bottom:1px solid #eee;float:left;padding:20px 20px 20px;height:107px}.expr-item .title{font-size:15px;color:#333;overflow:hidden;margin-bottom:10px}.expr-item .title a{position:relative;border:1px solid #cf000e;color:#cf000e;background:#fff;font-size:12px;padding:2px 5px 2px 20px}
      .expr-item .title a:hover{color:#fff !important;background:#cf000e}.expr-item .title .i-mobile{overflow:hidden;position:absolute;display:block;width:10px;height:13px;background:url('http://image.meilele.com/images/common/site/site.png') -92px -21px no-repeat;_background:url('http://image.meilele.com/images/common/site/site.gif') -92px -21px no-repeat;left:6px;top:4px}.expr-item .title .i-coord{overflow:hidden;position:absolute;display:block;width:11px;height:14px;background:url('http://image.meilele.com/images/common/site/site.png') -92px -34px no-repeat;_background:url('http://image.meilele.com/images/common/site/site.gif') -92px -34px no-repeat;left:5px;top:3px}.expr-item .expr-content{color:#777;margin-left:190px}.expr-item .expr-content .marquee{width:241px;height:72px;overflow:hidden}.expr-item .expr-content .marquee a{color:#777;line-height:18px}.expr-item .expr-content .extend{line-height:18px;min-height:18px;overflow:hidden}.expr-item .expr-content .extend dt{width:60px}.expr-item .expr-content .extend dd{width:283px}.expr-item .expr-content .extend dd a{color:#999}.expr-item .title a:hover .i-mobile{background-position:-280px -26px}.expr-item .title a:hover .i-coord{background-position:-104px -34px}.test{height:894px;background:#ddd}.default_stairs_w{width:100%;position:fixed;top:220px;left:0;_position:absolute;_top:expression(eval(document.documentElement.scrollTop+220))}.default_stairs{position:absolute;width:40px;font-size:12px;font-family:"微软雅黑";left:-40px;opacity:0;transform:scale(1.2);transition:all .3s ease;-moz-transition:all .3s ease;-webkit-transition:all .3s ease;-o-transition:all .3s ease}.default_stairs .stairs-cover{width:100%;height:100%;position:absolute;left:0;top:0;z-index:1}.default_stairs .stairs_nav{display:inline-block;width:40px;height:40px;text-align:center;line-height:40px;text-decoration:none;color:#cf000e;position:relative;text-decoration:none}.default_stairs .current{background:#fff}.default_stairs .hover{background:#cf000e !important;color:#fff !important}.default_stairs .stairs_nav .icon{display:inline-block;width:21px;height:21px;background:url('http://image.meilele.com/images/common/site/site.png') no-repeat 0 0;_background:url('http://image.meilele.com/images/common/site/site.gif') no-repeat 0 0;margin-top:11px}.default_stairs .hover .icon{display:none}.default_stairs .current .icon{display:none}.default_stairs .floor1 .icon{background-position:-50px -147px}.default_stairs .floor2 .icon{background-position:-50px -126px}.default_stairs .floor3 .icon{background-position:-50px -231px}
      .default_stairs .floor4 .icon{background-position:-50px -210px}.default_stairs .floor5 .icon{background-position:-50px -189px}.default_stairs .floor6 .icon{background-position:-50px -42px}.default_stairs .floor7 .icon{background-position:-50px -105px}.default_stairs .stairs_nav .name{visibility:visible;color:#cf000e;display:none;font-style:normal;line-height:14px;margin:6px auto}.default_stairs .current .name{display:block;color:#cf000e !important}.default_stairs .hover .name{display:block;color:#fff !important}.default_stairs .stairs_nav .stairs_line{display:block;width:18px;height:0;border-bottom:1px solid #e8e8e8;font-size:0;line-height:0;position:absolute;bottom:0;left:11px}.default_stairs .current .stairs_line{border-bottom:1px solid #e8e8e8}.default_stairs .hover .stairs_line{border-bottom:1px solid #cf000e}.default_stairs .floor_expr .stairs_line{border-bottom:0}.as-total-container{background:#cf000e;background:rgba(207,0,14,0.85);_background:#cf000e;filter:alpha(opacity=85);-webkit-transition:top .3s ease-out;-moz-transition:top .3s ease-out;-ms-transition:top .3s ease-out;-o-transition:top .3s ease-out;transition:top .3s ease-out;position:fixed;width:100%;z-index:290;top:-50px;_position:absolute;_bottom:auto}.as-total-container .attached-search-container{position:relative;z-index:290;height:50px}.as-total-container .attached-search-container em{width:123px;height:35px;float:left;background:url('http://image.meilele.com/images/common/site/site.png') -92px -202px no-repeat;_background:url('http://image.meilele.com/images/common/site/site.gif') -92px -202px no-repeat;margin-top:7px;margin-right:107px}.as-total-container .attached-search-container .search-form{height:32px;width:808px;background:#fff;float:left;margin-top:9px}.as-total-container .attached-search-container .search-form input{font-family:Microsoft YaHei,Arial}.as-total-container .attached-search-container .search-form .submit-btn{background:#b6000c;font-size:15px;color:#fff;border:0;height:32px;width:90px;text-align:center;cursor:pointer}.as-total-container .attached-search-container .search-form .search-input{outline:0;color:#333;height:18px;line-height:18px;padding:6px 10px;border:1px solid #fff;_height:14px;_line-height:14px;width:690px}.as-total-container .attached-search-container .search-hot{margin-top:5px}.as-total-container .attached-search-container .search-hot .hot-key{color:#999;font-size:14px;margin-right:12px}.as-total-container.show{top:0;_top:expression(eval(document.documentElement.scrollTop))}.as-total-suggest{position:absolute;width:100%;z-index:300}.fixed-suggest{width:786px;margin-left:230px;display:none;background:#fff;border:1px solid #d6d6d6;line-height:22px;z-index:10}.fixed-suggest a{display:block}.root-body .w{width:1460px}.root-body .as-total-container .attached-search-container .search-form{width:1008px}.root-body .page-header .search-form{width:711px;position:relative}.root-body .page-header .search-form .search-input{width:590px}.root-body .page-header .suggest{width:692px}.root-body .fixed-suggest{width:986px}.root-body .scroll-content{position:relative}.root-body .scroll-banner .scroll-item .sc-small{right:145px}.root-body .advert-img .img-item{position:relative;width:356px;height:184px;margin-right:12px}.root-body .advert-img .img-item img{width:361px}.root-body .floor-left .aImg{width:256px;_width:254px}.root-body .floor-left .floor-img{height:350px}.root-body .floor .floor-header h3{width:256px}.root-body .floor-left{height:750px;width:254px}.root-body .floor-right{height:750px;width:1203px}.root-body .floor-left .aTag{padding:35px 0 0 16px;height:182px;overflow:hidden;text-align:center}.root-body .floor-left .aTag a{padding-right:12px;width:65px;line-height:28px;overflow:hidden;height:28px}.root-body .floor-left .ad img{width:115px;height:74px}.root-body .floor-left .ad{padding:20px 0 12px;width:254px}.root-body .floor-right .scroll-bar{width:621px;height:449px}.root-body .JS_ul_banner{width:621px;height:449px}.root-body 
      .JS_ul_banner li{width:621px}.root-body .floor-right .floor-bar ul{bottom:18px}.root-body .floor-right .floor-bar.s1 ul{bottom:18px}.root-body .floor-right .floor-bar.s1{width:290px;height:449px}.root-body .floor-right .floor-bar.s2{width:290px;height:224px}.root-body .floor-right .floor-bar.s4{width:310px;height:300px}.root-body .floor-right .floor-bar.t5{width:310px;height:300px}.root-body .floor-right .floor-bar.s5{width:310px;height:300px}.root-body .floor-right .floor-bar.t6{width:310px;height:300px}.root-body .floor-right .floor-bar.s6{width:290px;height:300px}.root-body .floor-right .floor-bar.t7{width:290px;height:300px}.root-body .floor-right .floor-bar.s7{width:290px;height:300px}.root-body .floor-right .floor-bar.t8{width:290px;height:300px}.root-body .feed-index .notice{width:396px}.root-body .feed-index .show{width:582px}.root-body .expr-item{width:688px}.root-body .footer-icon .icon-map{width:182px}.root-body .footer-index .service{width:1055px}.root-body .footer-index .service dl{width:190px}.root-body .footer-index .service dl.fr{width:96px}.root-body .expr-item .expr-content .extend dd{width:417px}.root-body .JS_async_price{color:#666}.root-body .feed-index .query{width:240px}@media screen and (min-width:1460px){@keyframes fadeInL{from{opacity:0;right:125px}to{opacity:1;right:145px}}}.root-body .page-header .history{width:712px}.root-body .page-header .history .h-search{width:345px}.root-body .page-header .history .hot-search{width:345px}.as-total-suggest .history{width:806px;margin-left:230px;line-height:22px;border:1px solid #d6d6d6;z-index:100;background:#fff;display:none}.as-total-suggest .history .h-search{margin-left:10px;width:49%;min-height:192px;border-right:1px solid #eee}.as-total-suggest .history .hot-search{width:49%;margin-left:-1px;padding-bottom:10px;border-left:1px solid #eee}.as-total-suggest .hot-search .hot-product{display:inline-block;margin-left:10px;margin-top:6px;padding:1px 9px;border:1px solid #ddd;color:#000}.as-total-suggest .hot-search .hot-product:hover{color:#cf000e;border:1px solid #cf000e}.as-total-suggest .history h6{margin-top:4px;font-size:12px;color:#999;font-weight:normal}.as-total-suggest .history .hot-search h6{margin-left:10px}.as-total-suggest .history .h-search h1{margin:58px 0 0 65px;padding-bottom:86px;font-size:12px;color:#999;font-weight:normal}.as-total-suggest .history .h-search a{font-weight:bold;display:block;width:100% color:#000}.as-total-suggest .history .h-search a:hover{color:#cf000e}.root-body .as-total-suggest .history{width:1006px} 

</style>
</head>
<body style="min-width:1190px">
<%
	UserBean user = (UserBean)session.getAttribute("user");
%>
<div class="site-nav">
    <div class="w clearfix">
        <ul class="fl menu clearfix">
                        
            <li class="fl c-city city">
                <i class="i-coord"></i><span id="DY_site_name" class="red bold">全国站</span>
            </li>
            <li class="fl c-city" style="position:relative">
                <div id="JS_hide_city_menu_11" class="city-select cut_handdler">
                    <a href="<%=basePath %>userservlet?order=exit">[退出]</a>
                </div>
                <script>
                    (function (d) {
                        var length = document.cookie.indexOf('region_name');
                        var rn = decodeURI(document.cookie.substring(length).split(';')[0].split('=')[1]);

                        if (rn) {
                            var dd = d.getElementById('DY_site_name');
                            if (dd) dd.innerHTML = rn.slice(0, 4) + '站';
                        }
                    })(document);
                </script>
            </li>
             <li class="fl banner JS_login">
             	<c:if test="${user==null}">
             		<a target="_blank" href="<%=basePath %>data/login.jsp">登录</a>
             	</c:if>
             	<c:if test="${user!=null}">
             		<a target="_blank" href="<%=basePath %>data/handle.jsp"><font color="blue"><%=user.getUsername()%></font></a>
             	</c:if>
             </li>
            <li class="fl banner last JS_login"><a target="_blank" href="<%=basePath %>data/zhuce.jsp">注册</a>
            </li>
        </ul>
        
        
             	
        <ul class="fr menu clearfix">
        
        <c:if test="${user!=null}">
            <li class="fl fore">
                <a class="drop-title" href="<%=basePath %>userservlet?order=login2&username=${user.usermobile }" target="_blank">我的乐家具<i class="drop-arrow" target="_blank"></i></a>
                <ul class="dropdown mll-self">
                    <li><a href="/user/?act=order_list" target="_blank">我的订单</a>
                    </li>
                    <li><a href="/user/?act=coin_log" target="_blank">我的金币</a>
                    </li>
                    <li><a href="/user/?act=bonus" target="_blank">我的红包</a>
                    </li>
                    <li><a href="/user/?act=collection_list" target="_blank">我的收藏</a>
                    </li>
                    <li><a href="/user/?act=comment_list" target="_blank">我要评价</a>
                    </li>
                    <li><a href="/user/?act=insured_apply" target="_blank">申请保价</a>
                    </li>
                </ul>
            </li>
           </c:if>
                        <li id="JS_cart" class="phc-cart fl fore">
                <a class="drop-title" href="/flow/?step=cart&rel=header" target="_blank" onmouseenter="window._gaq.push(['_trackEvent','2016版首页','鼠标移入购物车区域','onMouseOver'])"><i class="i-cart"></i><span class="cart-word">购物车<span id="JS_cart_num" class="cart-count">0</span></span><i class="drop-arrow"></i></a>
                <div id="JS_cart_box" class="cart-box dropdown cart-self">
                    <ul id="JS_cart_list" class="cart-list" onclick="Cart.del(event);">
                    </ul>
                    <div id="JS_count_area" class="cart-count none shopcart-count">
                        <p class="count-area">共<span id="JS_cart_count">0</span>件商品，共计<strong id="JS_count_total" class="count-total red">&yen;00.00</strong>
                        </p>
                        <a class="count-btn" target="_blank" href="/flow/?step=cart&rel=header" target="_blank">去购物车结算</a>
                    </div>
                </div>
            </li>
                        <li class="fl fore">
                <a class="drop-title" href="/user/?act=index" target="_blank"><i class="i-scan"></i><span class="scan-word">关注乐家具</span><i class="drop-arrow"></i></a>
                <ul class="dropdown two-dimension">
                    <li>
                        <a href="javascript:;" class="JS_header_gaerCode" target="_blank">
                            <img src="http://img003.mllres.com/images/201704/dfad46af6bcae11c07c491b7c73d7bf3.jpg" width="132px" height="132px">
                        </a>
                        <span>扫码关注</span>
                        <img src="http://img002.mllres.com/images/201610/1476412218454787057.jpg">
                    </li>
                </ul>
            </li>
            <li class="fl fore">
                <a class="drop-title" href="/article_cat-4/article-656.html" target="_blank">帮助中心<i class="drop-arrow" target="_blank"></i></a>
                <ul class="dropdown help-center">
                    <li><a href="/article_cat-6/article-101.html" target="_blank">购买流程</a>
                    </li>
                    <li><a href="javascript:;" onclick="window.mchat&&window.mchat.openui&& window.mchat.openui()" rel="nofollow">在线帮助</a>
                    </li>
                    <li><a href="/page_buniess_purchase.html" target="_blank">企业采购</a>
                    </li>
                </ul>
            </li>
            <li class="fl banner">
                <a href="javascript:;" onclick="shoucang()">收藏本站</a>
            </li>
            <li class="fl banner last">
                <span class="blank" style="width:222px;height:24px;z-index:2"></span>
                <div id="JS_head_scoll_phone_527" class="JS_head_scoll_phone_527_active_br">
                    <div style="height:26px;line-height:26px;width:213px;padding:0 5px;padding-left:7px;overflow:hidden;"><span style="color: #999;">全国热线：</span><span class="hotLine">176-0797-5702</span>
                    </div>
                </div>
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
                <a target="_blank" class="hot-key" title="床" style="color:#999999;" href="http://www.meilele.com/category-chuang/?site_from=gjc" onclick="_clickHotSearch(this);">床</a><a target="_blank" class="hot-key" title="沙发" style="color:#999999;" href="http://www.meilele.com/category-shafa/?site_from=gjc" onclick="_clickHotSearch(this);">沙发</a><a target="_blank" class="hot-key" title="餐桌椅" style="color:#999999;" href="http://www.meilele.com/category-cantingtaozhuang/?site_from=gjc" onclick="_clickHotSearch(this);">餐桌椅</a><a target="_blank" class="hot-key" title="实木床" style="color:#999999;" href="http://www.meilele.com/keywords/shimuchuang/?site_from=gjc" onclick="_clickHotSearch(this);">实木床</a><a target="_blank" class="hot-key" title="床垫大促" style="color:#FF6600;" href="http://www.meilele.com/topic/2017_chuangdianzt.html?site_from=gjc" onclick="_clickHotSearch(this);">床垫大促</a><a target="_blank" class="hot-key" title="转角沙发" style="color:#999999;" href="http://www.meilele.com/category-shafa/list-71_19859/?site_from=gjc" onclick="_clickHotSearch(this);">转角沙发</a><a target="_blank" class="hot-key" title="灯饰" style="color:#999999;" href="http://www.meilele.com/category-dengshizhaoming/?site_from=gjc" onclick="_clickHotSearch(this);">灯饰</a>            </div>
        </div>
      
    </div>
</div>
<script>
    function _clickHotSearch(obj) {
        window._gaq && window._gaq.push(['_trackEvent', '热门搜索', '' + obj.innerHTML, '' + obj.href]);
        return true;
    }
    function _clickSearchAd() {
        window._gaq && window._gaq.push(['_trackEvent', 'ad_click_gaca', 'ad_click_gaco', 'ad_click_搜索框左侧广告图_1']);
        return true;
    } 
</script>


		<div class="navigator-index">
			<div class="w clearfix">
				<div class="menu-panel">
					<h2>
						商品分类
						<span class="jiantou"></span>
					</h2>
					<ul class="menu-map" id="JS_mll_menu_map">
						<li class="map-item large-class">
							<div class="sub clearfix">
								<div class="sub-l fl">
									<ul class="sub-group clearfix">
										<li class="fl sub-title">
											<a target="_blank"
												href="http://www.meilele.com/category-wofang/?site_from=zflcd1"><i
												class="i-t"></i>卧室</a>
										</li>
										<li class="fl sub-content">
											<a target="_blank"
												href="http://www.meilele.com/category-chuang/?site_from=zflcd1"
												style="">床</a>
											<a target="_blank"
												href="http://www.meilele.com/category-jinkouchuangdian/?site_from=zflcd1"
												style="color: #cf000e !important;">美国进口床垫</a>
											<a target="_blank"
												href="http://www.meilele.com/category-meiguichuang/?site_from=zflcd1"
												style="color: #cf000e !important;">美规床</a>
											<a target="_blank"
												href="http://www.meilele.com/category-chuangtougui/?site_from=zflcd1"
												style="">床头柜</a>
											<a target="_blank"
												href="http://www.meilele.com/category-chuangdian/?site_from=zflcd1"
												style="">床垫</a>
											<a target="_blank"
												href="http://www.meilele.com/category-yigui/?site_from=zflcd1"
												style="">衣柜</a>
											<a target="_blank"
												href="http://www.meilele.com/category-dougui/?site_from=zflcd1"
												style="">斗柜</a>
											<a target="_blank"
												href="http://www.meilele.com/category-zhuangtai/?site_from=zflcd1"
												style="">妆台镜/妆凳</a>
											<a target="_blank"
												href="http://www.meilele.com/category-chuanyijing/?site_from=zflcd1"
												style="">穿衣镜/衣帽架</a>
											<a target="_blank"
												href="http://www.meilele.com/category-guiyichuangweideng/?site_from=zflcd1"
												style="">床尾凳</a>
											<a target="_blank"
												href="http://www.meilele.com/category-woshitaofang/?site_from=zflcd1"
												style="">卧室套装</a>
										</li>
									</ul>
									<ul class="sub-group clearfix">
										<li class="fl sub-title">
											<a target="_blank"
												href="http://www.meilele.com/category-keting/?site_from=zflcd1"><i
												class="i-t"></i>客厅</a>
										</li>
										<li class="fl sub-content">
											<a target="_blank"
												href="http://www.meilele.com/category-shafa/?site_from=zflcd1"
												style="color: #cf000e !important;">沙发</a>
											<a target="_blank"
												href="http://www.meilele.com/category-chajihebianzhuo/?site_from=zflcd1"
												style="">茶几/边桌</a>
											<a target="_blank"
												href="http://www.meilele.com/category-dianshigui/?site_from=zflcd1"
												style="">电视柜</a>
											<a target="_blank"
												href="http://www.meilele.com/category-xiegui/?site_from=zflcd1"
												style="">鞋柜</a>
											<a target="_blank"
												href="http://www.meilele.com/category-duoyonggui/?site_from=zflcd1"
												style="">酒柜/装饰柜</a>
											<a target="_blank"
												href="http://www.meilele.com/category-pingfeng/?site_from=zflcd1"
												style="">屏风</a>
											<a target="_blank"
												href="http://www.meilele.com/category-denglei/?site_from=zflcd1"
												style="">休闲椅/凳</a>
											<a target="_blank"
												href="http://www.meilele.com/category-jiantinggui/?site_from=zflcd1"
												style="">间厅/玄关柜</a>
											<a target="_blank"
												href="http://www.meilele.com/category-huajia/?site_from=zflcd1"
												style="">花架/装饰架</a>
											<a target="_blank"
												href="http://www.meilele.com/category-ketingtaofang/?site_from=zflcd1"
												style="color: #cf000e !important;">客厅套装</a>
										</li>
									</ul>
									<ul class="sub-group clearfix">
										<li class="fl sub-title">
											<a target="_blank"
												href="http://www.meilele.com/category-canting/?site_from=zflcd1"><i
												class="i-t"></i>餐厅</a>
										</li>
										<li class="fl sub-content">
											<a target="_blank"
												href="http://www.meilele.com/category-canzhuo/?site_from=zflcd1"
												style="">餐桌</a>
											<a target="_blank"
												href="http://www.meilele.com/category-canyi/?site_from=zflcd1"
												style="">餐椅</a>
											<a target="_blank"
												href="http://www.meilele.com/category-canbiangui/?site_from=zflcd1"
												style="">餐边柜</a>
											<a target="_blank"
												href="http://www.meilele.com/category-cantingtaozhuang/?site_from=zflcd1"
												style="color: #cf000e !important;">餐厅套装</a>
										</li>
									</ul>
									<ul class="sub-group clearfix">
										<li class="fl sub-title">
											<a target="_blank"
												href="http://www.meilele.com/category-shufang/?site_from=zflcd1"><i
												class="i-t"></i>书房</a>
										</li>
										<li class="fl sub-content">
											<a target="_blank"
												href="http://www.meilele.com/category-shuzhuogongzuotai/?site_from=zflcd1"
												style="color: #cf000e !important;">书桌/书台</a>
											<a target="_blank"
												href="http://www.meilele.com/category-shugui/?site_from=zflcd1"
												style="">书柜/书架</a>
											<a target="_blank"
												href="http://www.meilele.com/category-gongzuoyi/?site_from=zflcd1"
												style="">书椅/转椅</a>
											<a target="_blank"
												href="http://www.meilele.com/category-shufangtaozhuang/?site_from=zflcd1"
												style="">书房套装</a>
										</li>
									</ul>
									<ul class="sub-group clearfix">
										<li class="fl sub-title">
											<a target="_blank"
												href="http://www.meilele.com/category-ertongfang/?site_from=zflcd1"><i
												class="i-t"></i>儿童房</a>
										</li>
										<li class="fl sub-content">
											<a target="_blank"
												href="http://www.meilele.com/category-ertongchuang/?site_from=zflcd1"
												style="">儿童床</a>
											<a target="_blank"
												href="http://www.meilele.com/category-ertongchuangdian/?site_from=zflcd1"
												style="color: #cf000e !important;">儿童床垫</a>
											<a target="_blank"
												href="http://www.meilele.com/category-ertongchuangtougui/?site_from=zflcd1"
												style="">儿童床头柜</a>
											<a target="_blank"
												href="http://www.meilele.com/category-ertongyigui/?site_from=zflcd1"
												style="">儿童衣柜</a>
											<a target="_blank"
												href="http://www.meilele.com/category-ertongshuzhuoertongdiannaotai/?site_from=zflcd1"
												style="">儿童桌</a>
											<a target="_blank"
												href="http://www.meilele.com/category-ertongyi/?site_from=zflcd1"
												style="">儿童椅</a>
											<a target="_blank"
												href="http://www.meilele.com/category-ertonggui/?site_from=zflcd1"
												style="">儿童柜类</a>
										</li>
									</ul>
									<ul class="sub-group clearfix">
										<li class="fl sub-title">
											<a target="_blank"
												href="http://www.meilele.com/category-huwaijiaju/?site_from=zflcd1"><i
												class="i-t"></i>户外/阳台</a>
										</li>
										<li class="fl sub-content">
											<a target="_blank"
												href="http://www.meilele.com/category-xiuxianzhuo/?site_from=zflcd1"
												style="">户外桌</a>
											<a target="_blank"
												href="http://www.meilele.com/category-xiuxianyi/?site_from=zflcd1"
												style="">户外椅</a>
											<a target="_blank"
												href="http://www.meilele.com/category-huwaitaozhuang/?site_from=zflcd1"
												style="color: #cf000e !important;">户外套装</a>
											<a target="_blank"
												href="http://www.meilele.com/category-diaolan/?site_from=zflcd1"
												style="">吊篮/吊椅</a>
											<a target="_blank"
												href="http://www.meilele.com/category-qiuqian/?site_from=zflcd1"
												style="">秋千</a>
											<a target="_blank"
												href="http://www.meilele.com/category-yaoyi/?site_from=zflcd1"
												style="">摇椅</a>
											<a target="_blank"
												href="http://www.meilele.com/category-zheyangsan/?site_from=zflcd1"
												style="">遮阳伞</a>
											<a target="_blank"
												href="http://www.meilele.com/category-yaoyitengyitangyi/?site_from=zflcd1"
												style="">藤艺家具</a>
											<a target="_blank"
												href="http://www.meilele.com/category-zhediechuang/?site_from=zflcd1"
												style="">折叠床</a>
										</li>
									</ul>
									<ul class="sub-group clearfix">
										<li class="fl sub-title">
											<a target="_blank"
												href="http://www.meilele.com/category-bangongjiaju/?site_from=zflcd1"><i
												class="i-t"></i>办公家具</a>
										</li>
										<li class="fl sub-content last">
											<a target="_blank"
												href="http://www.meilele.com/category-bangongshafa/?site_from=zflcd1"
												style="color: #cf000e !important;">办公沙发</a>
											<a target="_blank"
												href="http://www.meilele.com/category-bangongzhuo/?site_from=zflcd1"
												style="">办公桌</a>
											<a target="_blank"
												href="http://www.meilele.com/category-wenjiangui/?site_from=zflcd1"
												style="">文件柜</a>
											<a target="_blank"
												href="http://www.meilele.com/category-bangongyi/?site_from=zflcd1"
												style="">办公椅</a>
											<a target="_blank"
												href="http://www.meilele.com/category-baoxiangui/?site_from=zflcd1"
												style="">保险柜</a>
										</li>
									</ul>
								</div>
								<div class="sub-r fl">
									<h6>
										推荐品牌
									</h6>
									<div class="tag">
										<a target="_blank" href="/brand-241/?site_from=zflcd1"
											style="color: #cf000e !important">凯撒豪庭</a><a target="_blank"
											href="/brand-457/?site_from=zflcd1" style="">慕娅</a><a
											target="_blank" href="/brand-574/?site_from=zflcd1" style="">白金宫殿</a><a
											target="_blank" href="/brand-554/?site_from=zflcd1" style="">法兰西玫瑰</a><a
											target="_blank" href="/brand-111/?site_from=zflcd1" style="">韩菲尔</a><a
											target="_blank" href="/brand-212/?site_from=zflcd1" style="">卡富亚</a><a
											target="_blank" href="/brand-577/?site_from=zflcd1"
											style="color: #cf000e !important">Simmons</a><a
											target="_blank"
											href="/category-9999/?site_from=zflcd1&fl=q&keywords=%E8%93%9D%E9%AA%91"
											style="color: #cf000e !important">蓝骑家居</a><a target="_blank"
											href="/brand-357/?site_from=zflcd1" style="">青春城堡</a><a
											target="_blank" href="/brand-474/?site_from=zflcd1"
											style="color: #cf000e !important">喜临门</a><a target="_blank"
											href="/brand-283/?site_from=zflcd1" style="">木木原</a><a
											target="_blank" href="/brand-267/?site_from=zflcd1" style="">蒂美悦</a><a
											target="_blank" href="/brand-550/?site_from=zflcd1" style="">利豪</a><a
											target="_blank" href="/brand-284/?site_from=zflcd1" style="">小童舍</a><a
											target="_blank" href="/brand-1067/?site_from=zflcd1" style="">喜临门.红孩儿</a>
									</div>
									<a target="_blank"
										href="http://www.meilele.com/category-shafa/goods-56558.html?site_from=zflcd1"
										title="名匠手工雕花沙发"><img
											menu-lazy-src="http://img003.mllres.com/images/201603/1459276000034257693.jpg"
											src="http://image.meilele.com/images/blank.gif"
											alt="名匠手工雕花沙发" width="190" height="260"> </a>
								</div>
							</div>
							<i class="i-menu i0"></i><a target="_blank" class="txt"
								href="/jiaju/?site_from=zflcd1">家具</a>
						</li>
						<li class="map-item ">
							<div class="sub clearfix">
								<div class="sub-l fl">
									<ul class="sub-group clearfix">
										<li class="fl sub-title">
											<a target="_blank" href="/category-wofang/?site_from=cflcd1"><i
												class="i-t"></i>卧室</a>
										</li>
										<li class="fl sub-content">
											<a target="_blank" href="/category-chuang/?site_from=cflcd1"
												style="color: #cf000e !important">床</a>
											<a target="_blank"
												href="/category-chuangdian/?site_from=cflcd1" style="">床垫</a>
											<a target="_blank"
												href="/category-meiguichuang/?site_from=cflcd1" style="">美规床</a>
											<a target="_blank"
												href="/category-jinkouchuangdian/?site_from=cflcd1" style="">美国进口床垫</a>
											<a target="_blank"
												href="/category-chuangtougui/?site_from=cflcd1" style="">床头柜</a>
											<a target="_blank" href="/category-yigui/?site_from=cflcd1"
												style="">衣柜</a>
											<a target="_blank" href="/category-dougui/?site_from=cflcd1"
												style="">斗柜</a>
											<a target="_blank"
												href="/category-zhuangtai/?site_from=cflcd1" style="">妆台镜/妆凳</a>
											<a target="_blank"
												href="/category-chuanyijing/?site_from=cflcd1" style="">穿衣镜/衣帽架</a>
											<a target="_blank"
												href="/category-guiyichuangweideng/?site_from=cflcd1"
												style="">床尾凳</a>
											<a target="_blank"
												href="/category-woshitaofang/?site_from=cflcd1"
												style="color: #cf000e !important">卧室套装</a>
										</li>
									</ul>
									<ul class="sub-group clearfix">
										<li class="fl sub-title">
											<a target="_blank" href=""><i class="i-t"></i>热门搜索</a>
										</li>
										<li class="fl sub-content last">
											<a target="_blank"
												href="/keywords/shimuchuang/?site_from=cflcd1"
												style="color: #cf000e !important">实木床</a>
											<a target="_blank"
												href="/keywords/buyichuang/?site_from=cflcd1" style="">布艺床</a>
											<a target="_blank"
												href="/keywords/rujiaochuangdian/?site_from=cflcd1" style="">乳胶床垫</a>
											<a target="_blank"
												href="/category-jinkouchuangdian/?site_from=cflcd1" style="">进口床垫</a>
											<a target="_blank"
												href="/category-chuang/list-s932/?site_from=cflcd1"
												style="color: #cf000e !important">简美床</a>
											<a target="_blank"
												href="/keywords/oushichuang/?site_from=cflcd1" style="">欧式床</a>
											<a target="_blank"
												href="/keywords/meishichuang/?site_from=cflcd1" style="">美式床</a>
											<a target="_blank"
												href="/keywords/tatamichuang/?site_from=cflcd1" style="">榻榻米床</a>
											<a target="_blank"
												href="/keywords/gaoxiangchuang/?site_from=cflcd1" style="">高箱床</a>
											<a target="_blank"
												href="/keywords/chuangbanchuang/?site_from=cflcd1" style="">床板床</a>
											<a target="_blank"
												href="/category-chuang/list-44_19637/?site_from=cflcd1"
												style="">排骨架床</a>
											<a target="_blank"
												href="/keywords/zhenpichuang/?site_from=cflcd1" style="">真皮床</a>
											<a target="_blank"
												href="/keywords/tangmenyigui/?site_from=cflcd1"
												style="color: #cf000e !important">趟门衣柜</a>
											<a target="_blank"
												href="/keywords/lamenyigui/?site_from=cflcd1" style="">拉门衣柜</a>
											<a target="_blank"
												href="/keywords/simenyigui/?site_from=cflcd1" style="">四门衣柜</a>
										</li>
									</ul>
								</div>
								<div class="sub-r fl">
									<h6>
										推荐品牌
									</h6>
									<div class="tag">
										<a target="_blank" href="/brand-111/?site_from=cflcd1"
											style="">韩菲尔</a><a target="_blank"
											href="/brand-212/?site_from=cflcd1"
											style="color: #cf000e !important">卡富亚</a><a target="_blank"
											href="/brand-474/?site_from=cflcd1" style="">喜临门</a><a
											target="_blank" href="/brand-457/?site_from=cflcd1" style="">慕娅</a><a
											target="_blank" href="/brand-577/?site_from=cflcd1" style="">Simmons</a><a
											target="_blank" href="/brand-583/?site_from=cflcd1" style="">奥普悦</a><a
											target="_blank" href="/brand-352/?site_from=cflcd1" style="">艾玛诗</a><a
											target="_blank" href="/brand-1358/?site_from=cflcd1"
											style="color: #cf000e !important">美宜经典</a><a target="_blank"
											href="/brand-355/?site_from=cflcd1" style="">彼岸阳光</a><a
											target="_blank" href="/brand-601/?site_from=cflcd1" style="">苏美尔</a><a
											target="_blank" href="/brand-568/?site_from=cflcd1" style="">迪诺迪奥</a><a
											target="_blank" href="/brand-637/?site_from=cflcd1" style="">凤凰天</a>
									</div>
									<a target="_blank"
										href="http://www.meilele.com/category-chuang/goods-58688.html?site_from=cflcd1"
										title="臻贵桃花芯木床"><img
											menu-lazy-src="http://img003.mllres.com/images/201603/1459277421555846685.jpg"
											src="http://image.meilele.com/images/blank.gif" alt="臻贵桃花芯木床"
											width="190" height="260"> </a>
								</div>
							</div>
							<i class="i-menu i1"></i><a target="_blank" class="txt"
								href="/category-wofang/?site_from=cflcd1">卧室</a><a
								target="_blank" class="txt"
								href="/category-chuang/?site_from=cflcd1">床</a><a
								target="_blank" class="txt"
								href="/category-chuangdian/?site_from=cflcd1">床垫</a><a
								target="_blank" class="txt"
								href="/category-yigui/?site_from=cflcd1">衣柜</a>
						</li>
						<li class="map-item ">
							<div class="sub clearfix">
								<div class="sub-l fl">
									<ul class="sub-group clearfix">
										<li class="fl sub-title">
											<a target="_blank" href="/category-keting/?site_from=cflcd2"><i
												class="i-t"></i>客厅</a>
										</li>
										<li class="fl sub-content">
											<a target="_blank" href="/category-shafa/?site_from=cflcd2"
												style="color: #cf000e !important">沙发</a>
											<a target="_blank"
												href="/category-dianshigui/?site_from=cflcd2" style="">电视柜</a>
											<a target="_blank"
												href="/category-chajihebianzhuo/?site_from=cflcd2" style="">茶几/边桌</a>
											<a target="_blank"
												href="/category-duoyonggui/?site_from=cflcd2" style="">酒柜/装饰柜</a>
											<a target="_blank" href="/category-xiegui/?site_from=cflcd2"
												style="">鞋柜</a>
											<a target="_blank" href="/category-denglei/?site_from=cflcd2"
												style="">休闲椅/凳</a>
											<a target="_blank"
												href="/category-pingfeng/?site_from=cflcd2" style="">屏风</a>
											<a target="_blank"
												href="/category-ketingtaofang/?site_from=cflcd2"
												style="color: #cf000e !important">客厅套装</a>
											<a target="_blank" href="/category-huajia/?site_from=cflcd2"
												style="">花架/装饰架</a>
											<a target="_blank"
												href="/category-jiantinggui/?site_from=cflcd2" style="">间厅/玄关柜</a>
										</li>
									</ul>
									<ul class="sub-group clearfix">
										<li class="fl sub-title">
											<a target="_blank" href=""><i class="i-t"></i>热门搜索</a>
										</li>
										<li class="fl sub-content last">
											<a target="_blank"
												href="/keywords/shimushafa/?site_from=cflcd2" style="">实木沙发</a>
											<a target="_blank"
												href="/keywords/buyishafa/?site_from=cflcd2" style="">布艺沙发</a>
											<a target="_blank"
												href="/keywords/zhuanjiaoshafa/?site_from=cflcd2"
												style="color: #cf000e !important">转角沙发</a>
											<a target="_blank"
												href="/keywords/oushishafa/?site_from=cflcd2" style="">欧式沙发</a>
											<a target="_blank"
												href="/category-shafa/list-m354/?site_from=cflcd2" style="">真皮沙发</a>
											<a target="_blank"
												href="/category-shafa/list-s302/?site_from=cflcd2" style="">中式沙发</a>
											<a target="_blank"
												href="/keywords/gongnengshafa/?site_from=cflcd2" style="">功能沙发</a>
											<a target="_blank"
												href="/keywords/meishishafa/?site_from=cflcd2" style="">美式沙发</a>
											<a target="_blank"
												href="/keywords/shafachuang/?site_from=cflcd2" style="">沙发床</a>
											<a target="_blank"
												href="/keywords/shimuchaji/?site_from=cflcd2"
												style="color: #cf000e !important">实木茶几</a>
											<a target="_blank" href="/keywords/osktdsg/?site_from=cflcd2"
												style="">欧式电视柜</a>
											<a target="_blank"
												href="/keywords/ketingdianshigui/?site_from=cflcd2" style="">客厅电视柜</a>
											<a target="_blank" href="/keywords/jgzsg/?site_from=cflcd2"
												style="">酒柜装饰柜</a>
											<a target="_blank" href="/keywords/ktxgxg/?site_from=cflcd2"
												style="">玄关鞋柜</a>
											<a target="_blank"
												href="/keywords/lanrenshafa/?site_from=cflcd2" style="">懒人沙发</a>
											<a target="_blank"
												href="/category-shafa/list-b1340/?site_from=cflcd2"
												style="color: #cf000e !important">蓝骑沙发</a>
										</li>
									</ul>
								</div>
								<div class="sub-r fl">
									<h6>
										推荐品牌
									</h6>
									<div class="tag">
										<a target="_blank" href="/brand-241/?site_from=cflcd2"
											style="color: #cf000e !important">凯撒豪庭</a><a target="_blank"
											href="/brand-574/?site_from=cflcd2" style="">白金宫殿</a><a
											target="_blank" href="/brand-550/?site_from=cflcd2" style="">利豪</a><a
											target="_blank" href="/brand-267/?site_from=cflcd2"
											style="color: #cf000e !important">蒂美悦</a><a target="_blank"
											href="/brand-668/?site_from=cflcd2" style="">纳德威</a><a
											target="_blank"
											href="/category-9999/?site_from=cflcd2&fl=q&keywords=%E8%93%9D%E9%AA%91"
											style="color: #cf000e !important">蓝骑家居</a><a target="_blank"
											href="/brand-655/?site_from=cflcd2" style="">恩嘉依</a><a
											target="_blank" href="/brand-1090/?site_from=cflcd2" style="">百合雅居</a><a
											target="_blank" href="/brand-1337/?site_from=cflcd2"
											style="color: #cf000e !important">良品LIFE</a><a
											target="_blank" href="/brand-728/?site_from=cflcd2" style="">各色</a><a
											target="_blank" href="/brand-554/?site_from=cflcd2" style="">法兰西玫瑰</a><a
											target="_blank" href="/brand-873/?site_from=cflcd2" style="">木言木语</a><a
											target="_blank" href="/brand-632/?site_from=cflcd2" style="">广岛之恋</a><a
											target="_blank" href="/brand-859?site_from=cflcd2" style="">叹世界</a><a
											target="_blank" href="/brand-730/?site_from=cflcd2" style="">维木维斯</a>
									</div>
									<a target="_blank"
										href="http://www.meilele.com/category-shafa/goods-84289.html?site_from=cflcd2"
										title="典藏级尊座沙发"><img
											menu-lazy-src="http://img001.mllres.com/images/201603/1459277508760209931.jpg"
											src="http://image.meilele.com/images/blank.gif" alt="典藏级尊座沙发"
											width="190" height="260"> </a>
								</div>
							</div>
							<i class="i-menu i2"></i><a target="_blank" class="txt"
								href="/category-keting/?site_from=cflcd2">客厅</a><a
								target="_blank" class="txt"
								href="/category-shafa/?site_from=cflcd2">沙发</a><a
								target="_blank" class="txt"
								href="/category-dianshigui/?site_from=cflcd2">电视柜</a>
						</li>
						<li class="map-item ">
							<div class="sub clearfix">
								<div class="sub-l fl">
									<ul class="sub-group clearfix">
										<li class="fl sub-title">
											<a target="_blank" href="/category-canting/?site_from=cflcd3"><i
												class="i-t"></i>餐厅</a>
										</li>
										<li class="fl sub-content">
											<a target="_blank" href="/category-canzhuo/?site_from=cflcd3"
												style="">餐桌</a>
											<a target="_blank" href="/category-canyi/?site_from=cflcd3"
												style="">餐椅</a>
											<a target="_blank"
												href="/category-canbiangui/?site_from=cflcd3" style="">餐边柜</a>
											<a target="_blank"
												href="/category-cantingtaozhuang/?site_from=cflcd3"
												style="color: #cf000e !important">餐厅套装</a>
										</li>
									</ul>
									<ul class="sub-group clearfix">
										<li class="fl sub-title">
											<a target="_blank" href=""><i class="i-t"></i>热门搜索</a>
										</li>
										<li class="fl sub-content last">
											<a target="_blank"
												href="/keywords/cantingjiaju/?site_from=cflcd3" style="">餐厅家具</a>
											<a target="_blank"
												href="/keywords/zhediezhuoyi/?site_from=cflcd3"
												style="color: #cf000e !important">折叠餐桌</a>
											<a target="_blank"
												href="/keywords/canzhuoyizuhe/?site_from=cflcd3" style="">餐桌椅组合</a>
											<a target="_blank"
												href="/category-canting/list-b1340/?site_from=cflcd3"
												style="color: #cf000e !important">蓝骑餐桌椅</a>
											<a target="_blank"
												href="/keywords/changcanzhuo/?site_from=cflcd3" style="">长餐桌</a>
											<a target="_blank"
												href="/keywords/yuancanzhuo/?site_from=cflcd3" style="">圆餐桌</a>
											<a target="_blank" href="/keywords/trdlscz/?site_from=cflcd3"
												style="">大理石餐桌</a>
											<a target="_blank"
												href="/keywords/shimucanzhuocanyi/?site_from=cflcd3"
												style="color: #cf000e !important">实木餐桌</a>
											<a target="_blank"
												href="/keywords/xiandaicanzhuoyi/?site_from=cflcd3" style="">现代餐桌</a>
											<a target="_blank"
												href="/keywords/bolicanzhuoyi/?site_from=cflcd3" style="">玻璃餐桌椅</a>
											<a target="_blank" href="/keywords/dzhczy/?site_from=cflcd3"
												style="">地中海餐桌</a>
											<a target="_blank"
												href="/keywords/fushoucanyi/?site_from=cflcd3" style="">扶手餐椅</a>
											<a target="_blank"
												href="/keywords/wufushoucanyi/?site_from=cflcd3" style="">无扶手餐椅</a>
											<a target="_blank"
												href="/keywords/meishicanbiangui/?site_from=cflcd3" style="">美式餐边柜</a>
											<a target="_blank"
												href="/keywords/shimucanbiangui/?site_from=cflcd3" style="">实木餐边柜</a>
										</li>
									</ul>
								</div>
								<div class="sub-r fl">
									<h6>
										推荐品牌
									</h6>
									<div class="tag">
										<a target="_blank" href="/brand-283/?site_from=cflcd3"
											style="">木木原</a><a target="_blank"
											href="/brand-267/?site_from=cflcd3" style="">蒂美悦</a><a
											target="_blank" href="/brand-1055/?site_from=cflcd3" style="">百合馨香</a><a
											target="_blank" href="/brand-713/?site_from=cflcd3" style="">普罗旺斯</a><a
											target="_blank" href="/brand-563/?site_from=cflcd3"
											style="color: #cf000e !important">曲美</a><a target="_blank"
											href="/brand-1100/?site_from=cflcd3" style="">瑞丽凯撒</a><a
											target="_blank" href="/brand-859/?site_from=cflcd3" style="">叹世界</a><a
											target="_blank"
											href="/category-canting/list-b1184-o1/?site_from=cflcd3"
											style="">浅山</a><a target="_blank"
											href="/brand-227/?site_from=cflcd3" style="">帝匠家具</a><a
											target="_blank" href="/brand-1149/?site_from=cflcd3" style="">阳光海岸</a><a
											target="_blank" href="/brand-1114/?site_from=cflcd3"
											style="color: #cf000e !important">华洛思</a><a target="_blank"
											href="/brand-784/?site_from=cflcd3" style="">卡伦美家</a><a
											target="_blank" href="/brand-722/?site_from=cflcd3" style="">玫瑰尊典</a><a
											target="_blank" href="/brand-683/?site_from=cflcd3" style="">韩木居</a>
									</div>
									<a target="_blank"
										href="http://www.meilele.com/category-cantingtaozhuang/goods-22187.html?site_from=cflcd3"
										title="高雅欧式田园餐桌"><img
											menu-lazy-src="http://img004.mllres.com/images/201603/1459277717813693756.jpg"
											src="http://image.meilele.com/images/blank.gif"
											alt="高雅欧式田园餐桌" width="190" height="260"> </a>
								</div>
							</div>
							<i class="i-menu i3"></i><a target="_blank" class="txt"
								href="/category-canting/?site_from=cflcd3">餐厅</a><a
								target="_blank" class="txt"
								href="/category-canzhuo/?site_from=cflcd3">餐桌</a><a
								target="_blank" class="txt"
								href="/category-canyi/?site_from=cflcd3">餐椅</a>
						</li>
						<li class="map-item ">
							<div class="sub clearfix">
								<div class="sub-l fl">
									<ul class="sub-group clearfix">
										<li class="fl sub-title">
											<a target="_blank" href="/category-shufang/?site_from=cflcd4"><i
												class="i-t"></i>书房</a>
										</li>
										<li class="fl sub-content">
											<a target="_blank"
												href="/category-shuzhuogongzuotai/?site_from=cflcd4"
												style="color: #cf000e !important">书桌/工作台</a>
											<a target="_blank" href="/category-shugui/?site_from=cflcd4"
												style="">书柜</a>
											<a target="_blank"
												href="/category-gongzuoyi/?site_from=cflcd4" style="">书椅/转椅</a>
											<a target="_blank"
												href="/category-shufangtaozhuang/?site_from=cflcd4" style="">书房套装</a>
										</li>
									</ul>
									<ul class="sub-group clearfix">
										<li class="fl sub-title">
											<a target="_blank" href=""><i class="i-t"></i>热门搜索</a>
										</li>
										<li class="fl sub-content last">
											<a target="_blank"
												href="/keywords/shimushuzhuo/?site_from=cflcd4" style="">实木书桌</a>
											<a target="_blank"
												href="/keywords/zhongshishufangjiaju/?site_from=cflcd4"
												style="">中式书桌</a>
											<a target="_blank"
												href="/keywords/tianyuanshufangjiaju/?site_from=cflcd4"
												style="">田园书桌</a>
											<a target="_blank"
												href="/keywords/bangongzhuo/?site_from=cflcd4" style="">办公桌</a>
											<a target="_blank"
												href="/keywords/diannaozhuo/?site_from=cflcd4"
												style="color: #cf000e !important">电脑桌</a>
											<a target="_blank"
												href="/keywords/xueshengshuzhuo/?site_from=cflcd4" style="">学生书桌</a>
											<a target="_blank"
												href="/keywords/jianyueshufangjiaju/?site_from=cflcd4"
												style="">简约书桌柜</a>
											<a target="_blank"
												href="/keywords/sanmenshugui/?site_from=cflcd4" style="">三门书柜</a>
											<a target="_blank"
												href="/keywords/simenshugui/?site_from=cflcd4" style="">四门书柜</a>
											<a target="_blank"
												href="/keywords/oushishugui/?site_from=cflcd4" style="">欧式书柜</a>
											<a target="_blank"
												href="/keywords/shuguidiannaozhuo/?site_from=cflcd4"
												style="">书柜电脑桌</a>
											<a target="_blank"
												href="/keywords/diannaoyi/?site_from=cflcd4" style="">电脑椅</a>
											<a target="_blank"
												href="/keywords/bangongzhuanyi/?site_from=cflcd4" style="">办公转椅</a>
											<a target="_blank" href="/keywords/shuchu/?site_from=cflcd4"
												style="color: #cf000e !important">书橱</a>
										</li>
									</ul>
								</div>
								<div class="sub-r fl">
									<h6>
										推荐品牌
									</h6>
									<div class="tag">
										<a target="_blank" href="/brand-241/?site_from=cflcd4"
											style="">凯撒豪庭</a><a target="_blank"
											href="/brand-111/?site_from=cflcd4"
											style="color: #cf000e !important">韩菲尔</a><a target="_blank"
											href="/brand-267/?site_from=cflcd4" style="">蒂美悦</a><a
											target="_blank" href="/brand-283/?site_from=cflcd4" style="">木木原</a><a
											target="_blank" href="/brand-601/?site_from=cflcd4" style="">苏美尔</a><a
											target="_blank" href="/brand-1149/?site_from=cflcd4" style="">阳光海岸</a><a
											target="_blank" href="/brand-1177/?site_from=cflcd4" style="">达美风情</a><a
											target="_blank" href="/brand-227/?site_from=cflcd4" style="">帝匠家具</a><a
											target="_blank" href="/brand-457/?site_from=cflcd4"
											style="color: #cf000e !important">慕娅</a><a target="_blank"
											href="/brand-826/?site_from=cflcd4" style="">掌心铭居</a><a
											target="_blank" href="/brand-896/?site_from=cflcd4" style="">圣欧顿</a><a
											target="_blank" href="/brand-871/?site_from=cflcd4" style="">槿秀家园</a><a
											target="_blank" href="/brand-923/?site_from=cflcd4" style="">逸品</a><a
											target="_blank" href="/brand-813/?site_from=cflcd4" style="">爱迪</a>
									</div>
									<a target="_blank"
										href="http://www.meilele.com/category-shugui/goods-22011.html?site_from=cflcd4"
										title="法式浪漫轻奢书柜"><img
											menu-lazy-src="http://img002.mllres.com/images/201603/1459277798944333843.jpg"
											src="http://image.meilele.com/images/blank.gif"
											alt="法式浪漫轻奢书柜" width="190" height="260"> </a>
								</div>
							</div>
							<i class="i-menu i4"></i><a target="_blank" class="txt"
								href="/category-shufang/?site_from=cflcd4">书房</a><a
								target="_blank" class="txt"
								href="/category-shuzhuogongzuotai/?site_from=cflcd4">书桌</a><a
								target="_blank" class="txt"
								href="/category-shugui/?site_from=cflcd4">书柜</a>
						</li>
						<li class="map-item ">
							<div class="sub clearfix">
								<div class="sub-l fl">
									<ul class="sub-group clearfix">
										<li class="fl sub-title">
											<a target="_blank"
												href="/category-ertongfang/?site_from=cflcd5"><i
												class="i-t"></i>儿童房</a>
										</li>
										<li class="fl sub-content">
											<a target="_blank"
												href="/category-ertongchuang/?site_from=cflcd5" style="">儿童床</a>
											<a target="_blank"
												href="/category-ertongchuangdian/?site_from=cflcd5"
												style="color: #cf000e !important">儿童床垫</a>
											<a target="_blank"
												href="/category-ertongchuangtougui/?site_from=cflcd5"
												style="">儿童床头柜</a>
											<a target="_blank"
												href="/category-ertongyigui/?site_from=cflcd5" style="">儿童衣柜</a>
											<a target="_blank"
												href="/category-ertongshuzhuoertongdiannaotai/?site_from=cflcd5"
												style="">儿童桌</a>
											<a target="_blank"
												href="/category-ertongyi/?site_from=cflcd5" style="">儿童椅</a>
											<a target="_blank"
												href="/category-ertonggui/?site_from=cflcd5" style="">儿童柜类</a>
										</li>
									</ul>
									<ul class="sub-group clearfix">
										<li class="fl sub-title">
											<a target="_blank" href=""><i class="i-t"></i>热门搜索</a>
										</li>
										<li class="fl sub-content last">
											<a target="_blank"
												href="/keywords/tianyuanertongchuang/?site_from=cflcd5"
												style="">田园儿童床</a>
											<a target="_blank"
												href="/keywords/shangxiachuang/?site_from=cflcd5"
												style="color: #cf000e !important">上下床</a>
											<a target="_blank"
												href="/keywords/gaodichuang/?site_from=cflcd5" style="">高低床</a>
											<a target="_blank"
												href="/keywords/shuangcengchuang/?site_from=cflcd5" style="">双层床</a>
											<a target="_blank" href="/keywords/etzmc/?site_from=cflcd5"
												style="">儿童母子床</a>
											<a target="_blank"
												href="/category-ertongchuangdian/list-79_20150/?site_from=cflcd5"
												style="">儿童棕垫</a>
											<a target="_blank"
												href="/category-ertongchuangdian/list-79_20153/?site_from=cflcd5"
												style="">弹簧床垫</a>
											<a target="_blank"
												href="/category-ertongchuangdian/list-79_20149/?site_from=cflcd5"
												style="">乳胶垫</a>
											<a target="_blank"
												href="/category-ertongyigui/list-79_21120/?site_from=cflcd5"
												style="">拉门衣柜</a>
											<a target="_blank"
												href="/category-ertongyigui/list-78_21113/?site_from=cflcd5"
												style="">两门衣柜</a>
											<a target="_blank"
												href="/keywords/ertongshutai/?site_from=cflcd5"
												style="color: #cf000e !important">儿童书台</a>
											<a target="_blank"
												href="/keywords/xueshengzhuo/?site_from=cflcd5" style="">学生桌</a>
											<a target="_blank"
												href="/keywords/ertongshugui/?site_from=cflcd5" style="">儿童书柜</a>
											<a target="_blank"
												href="/keywords/ertongjiaju/?site_from=cflcd5" style="">儿童家具</a>
											<a target="_blank"
												href="/keywords/ertongzuoyi/?site_from=cflcd5" style="">儿童座椅</a>
											<a target="_blank"
												href="/keywords/tongchuang/?site_from=cflcd5" style="">童床</a>
										</li>
									</ul>
								</div>
								<div class="sub-r fl">
									<h6>
										推荐品牌
									</h6>
									<div class="tag">
										<a target="_blank" href="/brand-357/?site_from=cflcd5"
											style="">青春城堡</a><a target="_blank"
											href="/brand-284/?site_from=cflcd5"
											style="color: #cf000e !important">小童舍</a><a target="_blank"
											href="/category-ertongfang/list-b653/?site_from=cflcd5"
											style="">木彩</a><a target="_blank"
											href="/brand-1067/?site_from=cflcd5" style="">喜临门•红孩儿</a><a
											target="_blank" href="/brand-684/?site_from=cflcd5" style="">爱尔森</a><a
											target="_blank" href="/brand-638/?site_from=cflcd5"
											style="color: #cf000e !important">Caladoll卡乐多</a><a
											target="_blank" href="/brand-932/?site_from=cflcd5" style="">牧童人生</a><a
											target="_blank" href="/brand-1128/?site_from=cflcd5" style="">创想家</a><a
											target="_blank" href="/brand-601/?site_from=cflcd5" style="">苏美尔</a><a
											target="_blank" href="/brand-871/?site_from=cflcd5" style="">槿秀家园</a><a
											target="_blank" href="/brand-667/?site_from=cflcd5" style="">路易•伯登</a><a
											target="_blank" href="/brand-631/?site_from=cflcd5" style="">喜临门•呼噜噜</a><a
											target="_blank" href="/brand-896/?site_from=cflcd5" style="">圣欧顿</a><a
											target="_blank"
											href="/category-ertongfang/list-b992/?site_from=cflcd5"
											style="">欧奇朵</a>
									</div>
									<a target="_blank"
										href="http://www.meilele.com/category-ertongchuang/goods-26854.html?site_from=cflcd5"
										title="双层实木童床"><img
											menu-lazy-src="http://img004.mllres.com/images/201603/1459278022227398145.jpg"
											src="http://image.meilele.com/images/blank.gif" alt="双层实木童床"
											width="190" height="260"> </a>
								</div>
							</div>
							<i class="i-menu i5"></i><a target="_blank" class="txt"
								href="/category-ertongfang/?site_from=cflcd5">儿童房</a><a
								target="_blank" class="txt"
								href="/category-ertongchuang/?site_from=cflcd5">儿童床</a><a
								target="_blank" class="txt"
								href="/category-ertongshuzhuoertongdiannaotai/?site_from=cflcd5">儿童桌</a>
						</li>
						<li class="map-item large-class">
							<div class="sub clearfix">
								<div class="sub-l fl">
									<ul class="sub-group clearfix">
										<li class="fl sub-title">
											<a target="_blank"
												href="http://www.meilele.com/category-dengshizhaoming/?site_from=zflcd2"><i
												class="i-t"></i>灯饰照明</a>
										</li>
										<li class="fl sub-content">
											<a target="_blank"
												href="http://www.meilele.com/category-diaodeng/?site_from=zflcd2"
												style="color: #cf000e !important;">吊灯</a>
											<a target="_blank"
												href="http://www.meilele.com/category-xidingdeng/?site_from=zflcd2"
												style="color: #cf000e !important;">吸顶灯</a>
											<a target="_blank"
												href="http://www.meilele.com/category-luodideng/?site_from=zflcd2"
												style="">落地灯</a>
											<a target="_blank"
												href="http://www.meilele.com/category-taideng/?site_from=zflcd2"
												style="">台灯</a>
											<a target="_blank"
												href="http://www.meilele.com/category-bideng/?site_from=zflcd2"
												style="">壁灯</a>
											<a target="_blank"
												href="http://www.meilele.com/category-dengjutaozhuang/?site_from=zflcd2"
												style="">灯具套装</a>
											<a target="_blank"
												href="http://www.meilele.com/category-dengguangyuan/?site_from=zflcd2"
												style="">LED灯/光源</a>
										</li>
									</ul>
									<ul class="sub-group clearfix">
										<li class="fl sub-title">
											<a target="_blank"
												href="http://www.meilele.com/category-chufangyongpin/?site_from=zflcd2"><i
												class="i-t"></i>厨房用品</a>
										</li>
										<li class="fl sub-content">
											<a target="_blank"
												href="http://www.meilele.com/category-chufanglongtou/?site_from=zflcd2"
												style="">厨房龙头</a>
											<a target="_blank"
												href="http://www.meilele.com/category-jiaofa/?site_from=zflcd2"
												style="">角阀</a>
											<a target="_blank"
												href="http://www.meilele.com/category-chupenshuicao/?site_from=zflcd2"
												style="color: #cf000e !important;">厨盆/水槽</a>
											<a target="_blank"
												href="http://www.meilele.com/category-chufangguajian/?site_from=zflcd2"
												style="">厨房挂件</a>
											<a target="_blank"
												href="http://www.meilele.com/category-lishuilan/?site_from=zflcd2"
												style="">沥水篮</a>
											<a target="_blank"
												href="http://www.meilele.com/category-qitapeijian/?site_from=zflcd2"
												style="">其他厨房配件</a>
											<a target="_blank"
												href="http://www.meilele.com/category-dingzhichugui/?site_from=zflcd2"
												style="">定制橱柜</a>
										</li>
									</ul>
									<ul class="sub-group clearfix">
										<li class="fl sub-title">
											<a target="_blank"
												href="http://www.meilele.com/category-chuweizhuangxiu/?site_from=zflcd2"><i
												class="i-t"></i>卫浴用品</a>
										</li>
										<li class="fl sub-content">
											<a target="_blank"
												href="http://www.meilele.com/category-anmoyugang/?site_from=zflcd2"
												style="">浴缸</a>
											<a target="_blank"
												href="http://www.meilele.com/category-yushigui/?site_from=zflcd2"
												style="color: #cf000e !important;">浴室柜</a>
											<a target="_blank"
												href="http://www.meilele.com/category-zuobianqi/?site_from=zflcd2"
												style="">座便器</a>
											<a target="_blank"
												href="http://www.meilele.com/category-linyufang/?site_from=zflcd2"
												style="">淋浴房</a>
											<a target="_blank"
												href="http://www.meilele.com/category-huasa/?site_from=zflcd2"
												style="">花洒</a>
											<a target="_blank"
												href="http://www.meilele.com/category-shuilongtou/?site_from=zflcd2"
												style="">卫浴龙头</a>
											<a target="_blank"
												href="http://www.meilele.com/category-weiyuguajian/?site_from=zflcd2"
												style="">卫浴挂件</a>
											<a target="_blank"
												href="http://www.meilele.com/category-dilou/?site_from=zflcd2"
												style="">地漏</a>
											<a target="_blank"
												href="http://www.meilele.com/category-xilianpen/?site_from=zflcd2"
												style="">洗面盆</a>
											<a target="_blank"
												href="http://www.meilele.com/category-dunbianqi/?site_from=zflcd2"
												style="">蹲便器</a>
											<a target="_blank"
												href="http://www.meilele.com/category-zuobianqigaiban/?site_from=zflcd2"
												style="">座便器盖板</a>
											<a target="_blank"
												href="http://www.meilele.com/category-muyutong/?site_from=zflcd2"
												style="">沐浴桶/沐浴盆</a>
											<a target="_blank"
												href="http://www.meilele.com/category-weiyutaozhuang/?site_from=zflcd2"
												style="">卫浴套装</a>
											<a target="_blank"
												href="http://www.meilele.com/category-qitaweiyupeijian/?site_from=zflcd2"
												style="">其他卫浴配件</a>
											<a target="_blank"
												href="http://www.meilele.com/category-yuba/?site_from=zflcd2"
												style="">浴霸</a>
											<a target="_blank"
												href="http://www.meilele.com/category-diaoding/?site_from=zflcd2"
												style="color: #cf000e !important;">吊顶</a>
											<a target="_blank"
												href="http://www.meilele.com/category-chongshuixiang/?site_from=zflcd2"
												style="">冲水箱</a>
											<a target="_blank"
												href="http://www.meilele.com/category-yushijing/?site_from=zflcd2"
												style="">浴室镜</a>
										</li>
									</ul>
									<ul class="sub-group clearfix">
										<li class="fl sub-title">
											<a target="_blank"
												href="http://www.meilele.com/category-wujindianqi/?site_from=zflcd2"><i
												class="i-t"></i>家装五金</a>
										</li>
										<li class="fl sub-content">
											<a target="_blank"
												href="http://www.meilele.com/category-kaiguanchazuo/?site_from=zflcd2"
												style="color: #cf000e !important;">开关插座 </a>
											<a target="_blank"
												href="http://www.meilele.com/category-suoju/?site_from=zflcd2"
												style="">锁具</a>
											<a target="_blank"
												href="http://www.meilele.com/category-menxi/?site_from=zflcd2"
												style="">门吸</a>
											<a target="_blank"
												href="http://www.meilele.com/category-heye/?site_from=zflcd2"
												style="">合页</a>
											<a target="_blank"
												href="http://www.meilele.com/keywords/dianxian/#kw=%E7%94%B5%E7%BA%BF?site_from=zflcd2"
												style="">电线</a>
											<a target="_blank"
												href="http://www.meilele.com/category-lashou/?site_from=zflcd2"
												style="">拉手</a>
											<a target="_blank"
												href="http://www.meilele.com/category-peidianxiang/?site_from=zflcd2"
												style="">配电箱</a>
										</li>
									</ul>
									<ul class="sub-group clearfix">
										<li class="fl sub-title">
											<a target="_blank"
												href="http://www.meilele.com/category-qiangdimiancailiao/?site_from=zflcd2"><i
												class="i-t"></i>墙地面</a>
										</li>
										<li class="fl sub-content">
											<a target="_blank"
												href="http://www.meilele.com/category-youqi/?site_from=zflcd2"
												style="">油漆</a>
											<a target="_blank"
												href="http://www.meilele.com/category-diban/?site_from=zflcd2"
												style="color: #cf000e !important;">地板</a>
											<a target="_blank"
												href="http://www.meilele.com/category-cizhuan/?site_from=zflcd2"
												style="">瓷砖</a>
											<a target="_blank"
												href="http://www.meilele.com/category-qiangzhi/?site_from=zflcd2"
												style="">墙纸</a>
											<a target="_blank"
												href="http://www.meilele.com/category-men/?site_from=zflcd2"
												style="color: #cf000e !important;">门</a>
											<a target="_blank"
												href="http://www.meilele.com/category-louti/?site_from=zflcd2"
												style="">楼梯</a>
											<a target="_blank"
												href="http://www.meilele.com/category-qiangbu/?site_from=zflcd2"
												style="">墙布</a>
											<a target="_blank"
												href="http://www.meilele.com/category-chuanghu/?site_from=zflcd2"
												style="">窗户</a>
											<a target="_blank"
												href="http://www.meilele.com/category-jiancaifuliao/?site_from=zflcd2"
												style="">辅助材料</a>
										</li>
									</ul>
									<ul class="sub-group clearfix">
										<li class="fl sub-title">
											<a target="_blank"
												href="http://www.meilele.com/category-shenghuodianqi/?site_from=zflcd2"><i
												class="i-t"></i>生活电器</a>
										</li>
										<li class="fl sub-content last">
											<a target="_blank"
												href="http://www.meilele.com/category-dianshi/?site_from=zflcd2"
												style="color: #cf000e !important;">电视</a>
											<a target="_blank"
												href="http://www.meilele.com/category-bingxiang/?site_from=zflcd2"
												style="">冰箱</a>
											<a target="_blank"
												href="http://www.meilele.com/category-xiyiji/?site_from=zflcd2"
												style="color: #cf000e !important;">洗衣机</a>
											<a target="_blank"
												href="http://www.meilele.com/category-kongdiao/?site_from=zflcd2"
												style="">空调</a>
											<a target="_blank"
												href="http://www.meilele.com/category-yinxiang/?site_from=zflcd2"
												style="">音响</a>
											<a target="_blank"
												href="http://www.meilele.com/category-yinshuiji/?site_from=zflcd2"
												style="">饮水机</a>
											<a target="_blank"
												href="http://www.meilele.com/category-reshuiqi/?site_from=zflcd2"
												style="">热水器</a>
											<a target="_blank"
												href="http://www.meilele.com/category-xiyouyanji/?site_from=zflcd2"
												style="">吸油烟机</a>
											<a target="_blank"
												href="http://www.meilele.com/category-ranqizao/?site_from=zflcd2"
												style="">燃气灶</a>
											<a target="_blank"
												href="http://www.meilele.com/category-diankaolu/?site_from=zflcd2"
												style="">电烤炉</a>
											<a target="_blank"
												href="http://www.meilele.com/category-qunuandianqi/?site_from=zflcd2"
												style="">取暖电器</a>
											<a target="_blank"
												href="http://www.meilele.com/category-paiqisanhehuanqisan/?site_from=zflcd2"
												style="">排气/换气扇</a>
											<a target="_blank"
												href="http://www.meilele.com/category-jinghuaqi/?site_from=zflcd2"
												style="color: #cf000e !important;">净化器</a>
											<a target="_blank"
												href="http://www.meilele.com/category-jingshuiqi/?site_from=zflcd2"
												style="">净水设备</a>
											<a target="_blank"
												href="http://www.meilele.com/category-xichenqi/?site_from=zflcd2"
												style="">吸尘器</a>
											<a target="_blank"
												href="http://www.meilele.com/category-jiashiqi/?site_from=zflcd2"
												style="color: #cf000e !important;">加湿器</a>
											<a target="_blank"
												href="http://www.meilele.com/category-liaolizhazhiji/?site_from=zflcd2"
												style="">料理/榨汁机</a>
											<a target="_blank"
												href="http://www.meilele.com/category-mianbaoji/?site_from=zflcd2"
												style="">面包机</a>
											<a target="_blank"
												href="http://www.meilele.com/category-dianshuihureshuiping/?site_from=zflcd2"
												style="">电水壶/热水瓶</a>
											<a target="_blank"
												href="http://www.meilele.com/category-dianzhuguo/?site_from=zflcd2"
												style="">电煮锅</a>
											<a target="_blank"
												href="http://www.meilele.com/category-dianfengshan/?site_from=zflcd2"
												style="">电风扇</a>
											<a target="_blank"
												href="http://www.meilele.com/category-dianfanbao/?site_from=zflcd2"
												style="">电饭煲</a>
											<a target="_blank"
												href="http://www.meilele.com/category-xiaodugui/?site_from=zflcd2&from=cat_sect"
												style="">消毒柜/洗碗机</a>
											<a target="_blank"
												href="http://www.meilele.com/category-chushiji/?site_from=zflcd2&from=cat_sect"
												style="">除湿机</a>
											<a target="_blank"
												href="http://www.meilele.com/category-diancilu/?site_from=zflcd2&from=cat_sect"
												style="">电磁炉</a>
											<a target="_blank"
												href="http://www.meilele.com/category-dianyaliguo/?site_from=zflcd2&from=cat_sect"
												style="">电压力锅</a>
											<a target="_blank"
												href="http://www.meilele.com/category-diandou/?site_from=zflcd2&from=cat_sect"
												style="">电熨斗</a>
										</li>
									</ul>
								</div>
								<div class="sub-r fl">
									<h6>
										推荐品牌
									</h6>
									<div class="tag">
										<a target="_blank" href="/brand-358/?site_from=zflcd2"
											style="color: #cf000e !important">赛朵</a><a target="_blank"
											href="/brand-936/?site_from=zflcd2" style="">波塞冬</a><a
											target="_blank"
											href="/category-dengshizhaoming/list-b1043/?site_from=zflcd2"
											style="">灯域</a><a target="_blank"
											href="/brand-1200/?site_from=zflcd2" style="">提尔</a><a
											target="_blank" href="/brand-451/?site_from=zflcd2" style="">雷士</a><a
											target="_blank" href="/brand-455/?site_from=zflcd2" style="">欧英仕</a><a
											target="_blank" href="/brand-393/?site_from=zflcd2"
											style="color: #cf000e !important">鸥达</a><a target="_blank"
											href="/brand-458/?site_from=zflcd2"
											style="color: #cf000e !important">JOMOO九牧</a><a
											target="_blank" href="/brand-572/?site_from=zflcd2" style="">摩恩</a><a
											target="_blank" href="/brand-426/?site_from=zflcd2" style="">潜水艇</a><a
											target="_blank" href="/brand-395/?site_from=zflcd2" style="">希朗</a><a
											target="_blank" href="/brand-610/?site_from=zflcd2" style="">摩普</a><a
											target="_blank" href="/brand-303/?site_from=zflcd2" style="">欧琳</a>
									</div>
									<a target="_blank"
										href="http://www.meilele.com/category-yushigui/goods-51658.html?site_from=zflcd2"
										title="坚实防潮橡木浴室柜"><img
											menu-lazy-src="http://img002.mllres.com/images/201603/1459277094986530669.jpg"
											src="http://image.meilele.com/images/blank.gif"
											alt="坚实防潮橡木浴室柜" width="190" height="260"> </a>
								</div>
							</div>
							<i class="i-menu i6"></i><a target="_blank" class="txt"
								href="/jiancai/?site_from=zflcd2">建材灯饰</a>
						</li>
						<li class="map-item ">
							<div class="sub clearfix">
								<div class="sub-l fl">
									<ul class="sub-group clearfix">
										<li class="fl sub-title">
											<a target="_blank"
												href="/category-dengshizhaoming/?site_from=cflcd6"><i
												class="i-t"></i>灯饰照明</a>
										</li>
										<li class="fl sub-content">
											<a target="_blank"
												href="/category-diaodeng/?site_from=cflcd6"
												style="color: #cf000e !important">吊灯</a>
											<a target="_blank" href="/category-bideng/?site_from=cflcd6"
												style="">壁灯</a>
											<a target="_blank"
												href="/category-xidingdeng/?site_from=cflcd6"
												style="color: #cf000e !important">吸顶灯</a>
											<a target="_blank" href="/category-taideng/?site_from=cflcd6"
												style="">台灯</a>
											<a target="_blank"
												href="/category-luodideng/?site_from=cflcd6" style="">落地灯</a>
											<a target="_blank"
												href="/category-dengguangyuan/?site_from=cflcd6" style="">LED灯/光源</a>
											<a target="_blank"
												href="/category-dengjutaozhuang/ ?site_from=cflcd6" style="">灯具套装</a>
										</li>
									</ul>
									<ul class="sub-group clearfix">
										<li class="fl sub-title">
											<a target="_blank" href=""><i class="i-t"></i>热门搜索</a>
										</li>
										<li class="fl sub-content last">
											<a target="_blank"
												href="/keywords/ketingdeng/?site_from=cflcd6"
												style="color: #cf000e !important">客厅灯</a>
											<a target="_blank"
												href="/keywords/woshideng/?site_from=cflcd6" style="">卧室灯</a>
											<a target="_blank"
												href="/keywords/cantingdeng/?site_from=cflcd6" style="">餐厅灯</a>
											<a target="_blank"
												href="/keywords/shuijingdeng/?site_from=cflcd6" style="">水晶灯</a>
											<a target="_blank"
												href="/keywords/jienengdeng/?site_from=cflcd6" style="">节能灯</a>
											<a target="_blank"
												href="/keywords/buyitaideng/?site_from=cflcd6" style="">布艺台灯</a>
											<a target="_blank"
												href="/keywords/ketingdiaodeng/?site_from=cflcd6" style="">客厅吊灯</a>
											<a target="_blank"
												href="/keywords/chuangtoudeng/?site_from=cflcd6"
												style="color: #cf000e !important">床头灯</a>
											<a target="_blank"
												href="/keywords/bolideng/?site_from=cflcd6" style="">玻璃灯</a>
											<a target="_blank"
												href="/keywords/yakelixidingdeng/?site_from=cflcd6" style="">亚克力吸顶灯</a>
											<a target="_blank" href="/keywords/leddd/?site_from=cflcd6"
												style="">LED吊灯</a>
											<a target="_blank"
												href="/keywords/jingqiandeng/?site_from=cflcd6" style="">镜前灯</a>
											<a target="_blank"
												href="/keywords/ketingluodideng/?site_from=cflcd6" style="">客厅落地灯</a>
											<a target="_blank" href="/keywords/ssdd/?site_from=cflcd6"
												style="">时尚吊灯</a>
											<a target="_blank" href="/keywords/shedeng/?site_from=cflcd6"
												style="">射灯</a>
										</li>
									</ul>
								</div>
								<div class="sub-r fl">
									<h6>
										推荐品牌
									</h6>
									<div class="tag">
										<a target="_blank" href="/brand-358/?site_from=cflcd6"
											style="color: #cf000e !important">赛朵</a><a target="_blank"
											href="/brand-936/?site_from=cflcd6" style="">波塞冬</a><a
											target="_blank"
											href="/category-dengshizhaoming/list-b1043/?site_from=cflcd6"
											style="">灯域</a><a target="_blank"
											href="/brand-1200/?site_from=cflcd6" style="">提尔</a><a
											target="_blank" href="/brand-435/?site_from=cflcd6" style="">杰雷诺</a><a
											target="_blank" href="/brand-1035/?site_from=cflcd6" style="">花田美屋</a><a
											target="_blank" href="/brand-1010/?site_from=cflcd6" style="">尊阁</a><a
											target="_blank" href="/brand-451/?site_from=cflcd6" style="">雷士</a><a
											target="_blank" href="/brand-1068/?site_from=cflcd6"
											style="color: #cf000e !important">MDZG</a><a target="_blank"
											href="/brand-424/?site_from=cflcd6" style="">光之梦</a><a
											target="_blank" href="/brand-455/?site_from=cflcd6" style="">欧英仕</a><a
											target="_blank" href="/brand-978/?site_from=cflcd6" style="">艺雅阁</a><a
											target="_blank" href="/brand-1044/?site_from=cflcd6" style="">莱骏</a><a
											target="_blank" href="/brand-411/?site_from=cflcd6" style="">英伦欧堡</a><a
											target="_blank" href="/brand-1058/?site_from=cflcd6" style="">异朵</a>
									</div>
									<a target="_blank"
										href="http://www.meilele.com/category-diaodeng/goods-39099.html?site_from=cflcd6"
										title="进口树脂雕花吊灯"><img
											menu-lazy-src="http://img002.mllres.com/images/201603/1459278098218174551.jpg"
											src="http://image.meilele.com/images/blank.gif"
											alt="进口树脂雕花吊灯" width="190" height="260"> </a>
								</div>
							</div>
							<i class="i-menu i7"></i><a target="_blank" class="txt"
								href="/category-dengshizhaoming/?site_from=cflcd6">灯饰照明</a><a
								target="_blank" class="txt"
								href="/category-diaodeng/?site_from=cflcd6">吊灯</a><a
								target="_blank" class="txt"
								href="/category-xidingdeng/?site_from=cflcd6">吸顶灯</a>
						</li>
						<li class="map-item ">
							<div class="sub clearfix">
								<div class="sub-l fl">
									<ul class="sub-group clearfix">
										<li class="fl sub-title">
											<a target="_blank"
												href="/category-chuweizhuangxiu/?site_from=cflcd7"><i
												class="i-t"></i>卫浴</a>
										</li>
										<li class="fl sub-content">
											<a target="_blank"
												href="/category-yushigui/?site_from=cflcd7"
												style="color: #cf000e !important">浴室柜</a>
											<a target="_blank"
												href="/category-anmoyugang/?site_from=cflcd7" style="">浴缸</a>
											<a target="_blank"
												href="/category-linyufang/?site_from=cflcd7" style="">淋浴房</a>
											<a target="_blank" href="/category-huasa/?site_from=cflcd7"
												style="">花洒</a>
											<a target="_blank"
												href="/category-zuobianqi/?site_from=cflcd7" style="">座便器</a>
											<a target="_blank"
												href="/category-weiyuguajian/?site_from=cflcd7" style="">卫浴挂件</a>
											<a target="_blank"
												href="/category-shuilongtou/?site_from=cflcd7"
												style="color: #cf000e !important">卫浴龙头</a>
											<a target="_blank"
												href="/category-diaoding/?site_from=cflcd7" style="">吊顶</a>
											<a target="_blank" href="/category-dilou/?site_from=cflcd7"
												style="">地漏</a>
											<a target="_blank"
												href="/category-xilianpen/?site_from=cflcd7" style="">洗面盆</a>
											<a target="_blank" href="/category-yuba/?site_from=cflcd7"
												style="">浴霸</a>
											<a target="_blank"
												href="/category-dunbianqi/?site_from=cflcd7" style="">蹲便器</a>
											<a target="_blank"
												href="/category-chongshuixiang/?site_from=cflcd7" style="">冲水箱</a>
											<a target="_blank"
												href="/category-zuobianqigaiban/?site_from=cflcd7" style="">座便器盖板</a>
											<a target="_blank"
												href="/category-muyutong/?site_from=cflcd7" style="">浴桶浴盆</a>
											<a target="_blank"
												href="/category-weiyutaozhuang/?site_from=cflcd7" style="">卫浴套装</a>
											<a target="_blank"
												href="/category-yushijing/?site_from=cflcd7" style="">浴室镜</a>
										</li>
									</ul>
									<ul class="sub-group clearfix">
										<li class="fl sub-title">
											<a target="_blank" href=""><i class="i-t"></i>热门搜索</a>
										</li>
										<li class="fl sub-content last">
											<a target="_blank"
												href="/keywords/yushitaozhuang/?site_from=cflcd7" style="">浴室套装</a>
											<a target="_blank"
												href="/keywords/oushiyushigui/?site_from=cflcd7"
												style="color: #cf000e !important">欧式浴室柜</a>
											<a target="_blank"
												href="/keywords/shuangrenyugang/?site_from=cflcd7" style="">双人浴缸</a>
											<a target="_blank" href="/keywords/sswy/?site_from=cflcd7"
												style="">时尚卫浴</a>
											<a target="_blank"
												href="/keywords/linyuhuasa/?site_from=cflcd7" style="">淋浴花洒</a>
											<a target="_blank" href="/keywords/dgnhs/?site_from=cflcd7"
												style="">多功能花洒</a>
											<a target="_blank"
												href="/keywords/shuilongtou/?site_from=cflcd7" style="">水龙头</a>
											<a target="_blank"
												href="/keywords/weiyujieju/?site_from=cflcd7" style="">卫浴洁具</a>
											<a target="_blank"
												href="/keywords/fengnuanyuba/?site_from=cflcd7" style="">风暖浴霸</a>
											<a target="_blank" href="/keywords/jcddyb/?site_from=cflcd7"
												style="">集成吊顶</a>
											<a target="_blank"
												href="/category-yushigui/list-37_19466/?site_from=cflcd7"
												style="">落地浴室柜</a>
											<a target="_blank"
												href="/category-yushigui/list-s303/?site_from=cflcd7"
												style="">现代浴室柜</a>
											<a target="_blank"
												href="/category-zuobianqi/list-13_19190/?site_from=cflcd7"
												style="color: #cf000e !important">虹吸座便器</a>
											<a target="_blank"
												href="/keywords/zhinengzuobianqi/?site_from=cflcd7" style="">智能座便器</a>
											<a target="_blank" href="/keywords/wywjt/?site_from=cflcd7"
												style="">卫浴五件套</a>
										</li>
									</ul>
								</div>
								<div class="sub-r fl">
									<h6>
										推荐品牌
									</h6>
									<div class="tag">
										<a target="_blank" href="/brand-393/?site_from=cflcd7"
											style="">鸥达</a><a target="_blank"
											href="/brand-336/?site_from=cflcd7" style="">卓美欧</a><a
											target="_blank" href="/brand-458/?site_from=cflcd7"
											style="color: #cf000e !important">JOMOO九牧</a><a
											target="_blank" href="/brand-572/?site_from=cflcd7" style="">摩恩</a><a
											target="_blank" href="/brand-426/?site_from=cflcd7"
											style="color: #cf000e !important">潜水艇</a><a target="_blank"
											href="/brand-395/?site_from=cflcd7" style="">希朗</a><a
											target="_blank"
											href="/category-chuweizhuangxiu/list-b408/?site_from=cflcd7"
											style="">卫浴无限</a><a target="_blank"
											href="/brand-610/?site_from=cflcd7" style="">摩普</a><a
											target="_blank" href="/brand-552/?site_from=cflcd7" style="">艺美家</a><a
											target="_blank" href="/brand-303/?site_from=cflcd7"
											style="color: #cf000e !important">欧琳</a><a target="_blank"
											href="/brand-370/?site_from=cflcd7" style="">皇姿</a><a
											target="_blank" href="/brand-391/?site_from=cflcd7" style="">川浴卫浴</a><a
											target="_blank" href="/brand-571/?site_from=cflcd7" style="">法瑞达</a><a
											target="_blank" href="/brand-951/?site_from=cflcd7" style="">奥普</a>
									</div>
									<a target="_blank"
										href="http://www.meilele.com/category-zuobianqi/goods-184477.html?site_from=cflcd7"
										title="超强喷射虹吸"><img
											menu-lazy-src="http://img003.mllres.com/images/201603/1459278260457957838.jpg"
											src="http://image.meilele.com/images/blank.gif" alt="超强喷射虹吸"
											width="190" height="260"> </a>
								</div>
							</div>
							<i class="i-menu i8"></i><a target="_blank" class="txt"
								href="/category-chuweizhuangxiu/?site_from=cflcd7">卫浴</a><a
								target="_blank" class="txt"
								href="/category-yushigui/?site_from=cflcd7">浴室柜</a><a
								target="_blank" class="txt"
								href="/category-zuobianqi/?site_from=cflcd7">座便器</a>
						</li>
						<li class="map-item large-class">
							<div class="sub clearfix">
								<div class="sub-l fl">
									<ul class="sub-group clearfix">
										<li class="fl sub-title">
											<a target="_blank"
												href="http://www.meilele.com/category-chuangshangyongpin/?site_from=zflcd3"><i
												class="i-t"></i>床上用品</a>
										</li>
										<li class="fl sub-content">
											<a target="_blank"
												href="http://www.meilele.com/category-chuangpintaojian/?site_from=zflcd3"
												style="color: #cf000e !important;">床品套件</a>
											<a target="_blank"
												href="http://www.meilele.com/category-zhenxin/?site_from=zflcd3&from=b&qq-pf-to=pcqq.c2c"
												style="">枕芯</a>
											<a target="_blank"
												href="http://www.meilele.com/category-chuangman/?site_from=zflcd3"
												style="">床幔/蚊帐</a>
											<a target="_blank"
												href="http://www.meilele.com/category-beixin/?site_from=zflcd3"
												style="color: #cf000e !important;">被芯</a>
											<a target="_blank"
												href="http://www.meilele.com/category-maotan/?site_from=zflcd3"
												style="color: #cf000e !important;">毛毯</a>
											<a target="_blank"
												href="http://www.meilele.com/category-chuangru/?site_from=zflcd3"
												style="">床褥</a>
											<a target="_blank"
												href="http://www.meilele.com/category-beitao/?site_from=zflcd3"
												style="">被套</a>
											<a target="_blank"
												href="http://www.meilele.com/category-chuangli/?site_from=zflcd3"
												style="">床笠</a>
											<a target="_blank"
												href="http://www.meilele.com/category-zhentao/?site_from=zflcd3"
												style="">枕套</a>
											<a target="_blank"
												href="http://www.meilele.com/category-chuangqun/?site_from=zflcd3"
												style="">床裙</a>
											<a target="_blank"
												href="http://www.meilele.com/category-liangxi/?site_from=zflcd3"
												style="">凉席</a>
											<a target="_blank"
												href="http://www.meilele.com/category-hunqingjiafang/?site_from=zflcd3"
												style="">婚庆家纺</a>
											<a target="_blank"
												href="http://www.meilele.com/category-xialiangbei/?site_from=zflcd3"
												style="">夏凉被</a>
											<a target="_blank"
												href="http://www.meilele.com/category-chuangdan/?site_from=zflcd3"
												style="">床单</a>
										</li>
									</ul>
									<ul class="sub-group clearfix">
										<li class="fl sub-title">
											<a target="_blank"
												href="http://www.meilele.com/category-jiajujiazhuang/?site_from=zflcd3"><i
												class="i-t"></i>居家日用</a>
										</li>
										<li class="fl sub-content">
											<a target="_blank"
												href="http://www.meilele.com/category-xiyilan/?site_from=zflcd3"
												style="">洗衣篮</a>
											<a target="_blank"
												href="http://www.meilele.com/category-liangshaijia/?site_from=zflcd3"
												style="">晾晒架</a>
											<a target="_blank"
												href="http://www.meilele.com/category-shounagui/?site_from=zflcd3"
												style="">收纳柜</a>
											<a target="_blank"
												href="http://www.meilele.com/category-zhiwujia/?site_from=zflcd3"
												style="color: #cf000e !important;">置物架</a>
											<a target="_blank"
												href="http://www.meilele.com/category-zhijinhe/?site_from=zflcd3"
												style="">纸巾盒</a>
											<a target="_blank"
												href="http://www.meilele.com/category-chuangyijiaju/?site_from=zflcd3"
												style="">简易电脑桌</a>
											<a target="_blank"
												href="http://www.meilele.com/category-yijiaguagou/?site_from=zflcd3"
												style="">衣架</a>
											<a target="_blank"
												href="http://www.meilele.com/category-jinghuachuwei/?site_from=zflcd3"
												style="">净化除味</a>
											<a target="_blank"
												href="http://www.meilele.com/category-qingjieyongpin/?site_from=zflcd3"
												style="">清洁用品</a>
											<a target="_blank"
												href="http://www.meilele.com/category-shounadai/?site_from=zflcd3"
												style="">收纳箱/袋</a>
											<a target="_blank"
												href="http://www.meilele.com/category-xishuyongpin/?site_from=zflcd3"
												style="">洗漱用品</a>
											<a target="_blank"
												href="http://www.meilele.com/category-xiaojianshouna/list-o1/?site_from=zflcd3&qq-pf-to=pcqq.c2c"
												style="color: #cf000e !important;">家居收纳</a>
											<a target="_blank"
												href="http://www.meilele.com/category-guagou/?site_from=zflcd3"
												style="">挂钩</a>
											<a target="_blank"
												href="http://www.meilele.com/category-tangyiban/?site_from=zflcd3"
												style="">烫衣板</a>
											<a target="_blank"
												href="http://www.meilele.com/category-jianyiyigui/?site_from=zflcd3"
												style="">简易衣柜</a>
											<a target="_blank"
												href="http://www.meilele.com/category-zhuangshijinghuazhuangjing/?site_from=zflcd3"
												style="">装饰镜/化妆镜</a>
											<a target="_blank"
												href="http://www.meilele.com/category-lajitong/?site_from=zflcd3"
												style="">垃圾桶</a>
										</li>
									</ul>
									<ul class="sub-group clearfix">
										<li class="fl sub-title">
											<a target="_blank"
												href="http://www.meilele.com/category-buyizhiwu/?site_from=zflcd3"><i
												class="i-t"></i>布艺织物</a>
										</li>
										<li class="fl sub-content">
											<a target="_blank"
												href="http://www.meilele.com/category-chuanglianfuliao/?site_from=zflcd3"
												style="">窗帘辅料/配件</a>
											<a target="_blank"
												href="http://www.meilele.com/category-chuanglian/?site_from=zflcd3"
												style="color: #cf000e !important;">窗帘</a>
											<a target="_blank"
												href="http://www.meilele.com/category-ditan/?site_from=zflcd3"
												style="">地毯/地垫</a>
											<a target="_blank"
												href="http://www.meilele.com/category-shafatao/?site_from=zflcd3"
												style="">沙发套/垫</a>
											<a target="_blank"
												href="http://www.meilele.com/category-maojin/?site_from=zflcd3"
												style="">毛巾家纺</a>
											<a target="_blank"
												href="http://www.meilele.com/category-zuodiankaodian/?site_from=zflcd3"
												style="">坐垫/靠垫</a>
											<a target="_blank"
												href="http://www.meilele.com/category-fangchenzhao/?site_from=zflcd3"
												style="">防尘罩</a>
											<a target="_blank"
												href="http://www.meilele.com/category-guidaoluomagan/?site_from=zflcd3"
												style="">轨道/罗马杆</a>
											<a target="_blank"
												href="http://www.meilele.com/category-maorongbuyiwanju/?site_from=zflcd3"
												style="">布艺玩具</a>
											<a target="_blank"
												href="http://www.meilele.com/category-baozhen/?site_from=zflcd3"
												style="color: #cf000e !important;">抱枕</a>
											<a target="_blank"
												href="http://www.meilele.com/category-zhuobu/?site_from=zflcd3"
												style="">桌布</a>
											<a target="_blank"
												href="http://www.meilele.com/category-zhuoqi/?site_from=zflcd3"
												style="">桌旗</a>
										</li>
									</ul>
									<ul class="sub-group clearfix">
										<li class="fl sub-title">
											<a target="_blank"
												href="http://www.meilele.com/category-gongyishipin/?site_from=zflcd3"><i
												class="i-t"></i>家居饰品</a>
										</li>
										<li class="fl sub-content">
											<a target="_blank"
												href="http://www.meilele.com/category-youhua/#kw=%E6%B2%B9%E7%94%BB?site_from=zflcd3"
												style="color: #cf000e !important;">油画</a>
											<a target="_blank"
												href="http://www.meilele.com/category-zhuangshihua/?site_from=zflcd3"
												style="">装饰画</a>
											<a target="_blank"
												href="http://www.meilele.com/category-baijianjiqita/?site_from=zflcd3"
												style="color: #cf000e !important;">装饰摆件</a>
											<a target="_blank"
												href="http://www.meilele.com/category-fengshuibaijian/?site_from=zflcd3"
												style="">风水摆件</a>
											<a target="_blank"
												href="http://www.meilele.com/category-zhong/?site_from=zflcd3"
												style="">钟</a>
											<a target="_blank"
												href="http://www.meilele.com/category-baoxiangzhuangshi/?site_from=zflcd3"
												style="">电表箱装饰</a>
											<a target="_blank"
												href="http://www.meilele.com/category-dianhuaji/?site_from=zflcd3"
												style="">电话机</a>
											<a target="_blank"
												href="http://www.meilele.com/category-fangzhenhua/?site_from=zflcd3"
												style="">仿真花</a>
											<a target="_blank"
												href="http://www.meilele.com/category-huaping/?site_from=zflcd3"
												style="">花瓶/花盆</a>
											<a target="_blank"
												href="http://www.meilele.com/category-hongjiujia/?site_from=zflcd3"
												style="">红酒架</a>
											<a target="_blank"
												href="http://www.meilele.com/category-zhaopianqiang/?site_from=zflcd3"
												style="color: #cf000e !important;">相框/照片墙</a>
											<a target="_blank"
												href="http://www.meilele.com/category-tieshi/?site_from=zflcd3"
												style="">壁饰/贴饰</a>
											<a target="_blank"
												href="http://www.meilele.com/category-zhuangshihuajia/?site_from=zflcd3"
												style="">装饰花架</a>
											<a target="_blank"
												href="http://www.meilele.com/category-zhutai/?site_from=zflcd3"
												style="">烛台/蜡烛</a>
											<a target="_blank"
												href="http://www.meilele.com/category-yanhuigang/?site_from=zflcd3"
												style="">烟灰缸</a>
											<a target="_blank"
												href="http://www.meilele.com/category-shoushihe/?site_from=zflcd3"
												style="">首饰盒</a>
											<a target="_blank"
												href="http://www.meilele.com/category-chuangyigongzai/?site_from=zflcd3"
												style="">创意公仔</a>
											<a target="_blank"
												href="http://www.meilele.com/category-xiangxunyongpin/?site_from=zflcd3"
												style="">香薰用品</a>
											<a target="_blank"
												href="http://www.meilele.com/category-chuangyishipin/?site_from=zflcd3"
												style="">创意饰品</a>
											<a target="_blank"
												href="http://www.meilele.com/category-zhuangshituopan/?site_from=zflcd3"
												style="">装饰托盘/底盘</a>
											<a target="_blank"
												href="http://www.meilele.com/category-hunlishipin/?site_from=zflcd3"
												style="">婚礼饰品</a>
										</li>
									</ul>
									<ul class="sub-group clearfix">
										<li class="fl sub-title">
											<a target="_blank"
												href="http://www.meilele.com/category-chufangcanyin/?site_from=zflcd3"><i
												class="i-t"></i>厨房餐饮</a>
										</li>
										<li class="fl sub-content last">
											<a target="_blank"
												href="http://www.meilele.com/category-canju/?site_from=zflcd3"
												style="color: #cf000e !important;">餐具</a>
											<a target="_blank"
												href="http://www.meilele.com/category-chufangzajian/?site_from=zflcd3"
												style="">厨用收纳</a>
											<a target="_blank"
												href="http://www.meilele.com/category-chajukafeiju/?site_from=zflcd3"
												style="color: #cf000e !important;">茶具/咖啡具</a>
											<a target="_blank"
												href="http://www.meilele.com/category-guopantuowupan/?site_from=zflcd3"
												style="">果盘/托物盘</a>
											<a target="_blank"
												href="http://www.meilele.com/category-pengrenguoju/?site_from=zflcd3"
												style="">烹饪锅具</a>
											<a target="_blank"
												href="http://www.meilele.com/category-caiban/?site_from=zflcd3"
												style="">刀具菜板</a>
											<a target="_blank"
												href="http://www.meilele.com/category-beizi/?site_from=zflcd3"
												style="">杯子</a>
											<a target="_blank"
												href="http://www.meilele.com/category-chanshao/?site_from=zflcd3"
												style="">铲勺</a>
											<a target="_blank"
												href="http://www.meilele.com/category-canjincandian/?site_from=zflcd3"
												style="">餐巾/餐垫</a>
											<a target="_blank"
												href="http://www.meilele.com/category-jiuju/?site_from=zflcd3"
												style="">酒具</a>
											<a target="_blank"
												href="http://www.meilele.com/category-baowenbei/?site_from=zflcd3"
												style="">保温杯</a>
											<a target="_blank"
												href="http://www.meilele.com/category-baoxianhe/?site_from=zflcd3"
												style="">保鲜盒</a>
										</li>
									</ul>
								</div>
								<div class="sub-r fl">
									<h6>
										推荐品牌
									</h6>
									<div class="tag">
										<a target="_blank" href="/brand-278/?site_from=zflcd3"
											style="">馨美艺饰品</a><a target="_blank"
											href="/brand-588/?site_from=zflcd3"
											style="color: #cf000e !important">博洋家纺</a><a target="_blank"
											href="/brand-318/?site_from=zflcd3" style="">优曼之家</a><a
											target="_blank" href="/brand-335/?site_from=zflcd3" style="">芬缇</a><a
											target="_blank" href="/brand-526/?site_from=zflcd3" style="">布莱丝盾</a><a
											target="_blank" href="/brand-831/?site_from=zflcd3" style="">明超</a><a
											target="_blank" href="/brand-1133/?site_from=zflcd3" style="">紫兰玉</a><a
											target="_blank" href="/brand-999/?site_from=zflcd3" style="">邵氏家纺</a><a
											target="_blank" href="/brand-536/?site_from=zflcd3" style="">傲居</a><a
											target="_blank" href="/brand-540/?site_from=zflcd3"
											style="color: #cf000e !important">悦邻家居</a><a target="_blank"
											href="/brand-450/?site_from=zflcd3" style="">小日子</a><a
											target="_blank" href="/brand-585/?site_from=zflcd3" style="">皇室家居</a><a
											target="_blank" href="/brand-1046/?site_from=zflcd3" style="">摩力克</a><a
											target="_blank" href="/brand-360/?site_from=zflcd3"
											style="color: #cf000e !important">馨视觉</a><a target="_blank"
											href="/brand-411/?site_from=zflcd3" style="">英伦欧堡</a>
									</div>
									<a target="_blank"
										href="http://www.meilele.com/category-baijianjiqita/goods-230927.html?site_from=zflcd3"
										title="精致天鹅摆件"><img
											menu-lazy-src="http://img002.mllres.com/images/201603/1459277192725320443.jpg"
											src="http://image.meilele.com/images/blank.gif" alt="精致天鹅摆件"
											width="190" height="260"> </a>
								</div>
							</div>
							<i class="i-menu i9"></i><a target="_blank" class="txt"
								href="/shipin/?site_from=zflcd3">家居家饰</a>
						</li>
						<li class="map-item ">
							<div class="sub clearfix">
								<div class="sub-l fl">
									<ul class="sub-group clearfix">
										<li class="fl sub-title">
											<a target="_blank"
												href="/category-chuangshangyongpin/?site_from=cflcd8"><i
												class="i-t"></i>床品/家纺</a>
										</li>
										<li class="fl sub-content">
											<a target="_blank" href="/category-beixin/?site_from=cflcd8"
												style="color: #cf000e !important">被芯</a>
											<a target="_blank" href="/category-zhenxin/?site_from=cflcd8"
												style="">枕芯</a>
											<a target="_blank"
												href="/category-chuangpintaojian/?site_from=cflcd8"
												style="color: #cf000e !important">床品套件</a>
											<a target="_blank" href="/category-maotan/?site_from=cflcd8"
												style="">毛毯</a>
											<a target="_blank"
												href="/category-hunqingjiafang/?site_from=cflcd8" style="">婚庆家纺</a>
											<a target="_blank"
												href="/category-chuangru/?site_from=cflcd8" style="">床褥</a>
											<a target="_blank"
												href="/category-chuangli/?site_from=cflcd8" style="">床笠</a>
											<a target="_blank"
												href="/category-chuangqun/?site_from=cflcd8" style="">床裙</a>
											<a target="_blank"
												href="/category-chuangdan/?site_from=cflcd8" style="">床单</a>
											<a target="_blank" href="/category-beitao/?site_from=cflcd8"
												style="">被套</a>
											<a target="_blank" href="/category-zhentao/?site_from=cflcd8"
												style="">枕套</a>
											<a target="_blank"
												href="/category-chuangman/?site_from=cflcd8" style="">床幔/蚊帐</a>
											<a target="_blank" href="/category-liangxi/?site_from=cflcd8"
												style="">凉席</a>
											<a target="_blank"
												href="/category-xialiangbei/?site_from=cflcd8" style="">夏凉被</a>
											<a target="_blank"
												href="/category-chuanglian/?site_from=cflcd8"
												style="color: #cf000e !important">窗帘</a>
											<a target="_blank" href="/category-ditan/?site_from=cflcd8"
												style="">地毯</a>
											<a target="_blank"
												href="/category-zuodiankaodian/?site_from=cflcd8" style="">坐垫/靠垫</a>
											<a target="_blank"
												href="/category-shafatao/?site_from=cflcd8" style="">沙发套/垫</a>
											<a target="_blank" href="/category-baozhen/?site_from=cflcd8"
												style="">抱枕</a>
											<a target="_blank" href="/category-zhuobu/?site_from=cflcd8"
												style="">桌布</a>
											<a target="_blank" href="/category-zhuoqi/?site_from=cflcd8"
												style="">桌旗</a>
											<a target="_blank" href="/category-maojin/?site_from=cflcd8"
												style="">毛巾家纺</a>
											<a target="_blank"
												href="/category-fangchenzhao/?site_from=cflcd8" style="">防尘罩</a>
											<a target="_blank"
												href="/category-maorongbuyiwanju/?site_from=cflcd8" style="">布艺玩具</a>
										</li>
									</ul>
									<ul class="sub-group clearfix">
										<li class="fl sub-title">
											<a target="_blank" href=""><i class="i-t"></i>热门搜索</a>
										</li>
										<li class="fl sub-content last">
											<a target="_blank" href="/keywords/sjtcsyp/?site_from=cflcd8"
												style="">床品套件</a>
											<a target="_blank" href="/keywords/cmsjt/?site_from=cflcd8"
												style="">纯棉四件套</a>
											<a target="_blank"
												href="/keywords/hunqingsijiantao/?site_from=cflcd8"
												style="color: #cf000e !important">婚庆四件套</a>
											<a target="_blank"
												href="/keywords/ertongchuangpin/?site_from=cflcd8" style="">儿童床品</a>
											<a target="_blank" href="/keywords/xwbx/?site_from=cflcd8"
												style="">纤维被</a>
											<a target="_blank" href="/keywords/scsbx/?site_from=cflcd8"
												style="color: #cf000e !important">蚕丝被</a>
											<a target="_blank" href="/keywords/tanzi/?site_from=cflcd8"
												style="">毛毯</a>
											<a target="_blank"
												href="/keywords/rujiaozheng/?site_from=cflcd8"
												style="color: #cf000e !important">乳胶枕</a>
											<a target="_blank"
												href="/keywords/jiyizhen/?site_from=cflcd8" style="">记忆枕</a>
											<a target="_blank"
												href="/keywords/buyichuanglian/?site_from=cflcd8" style="">布艺窗帘</a>
											<a target="_blank"
												href="/keywords/oushichuanglian/?site_from=cflcd8" style="">欧式窗帘</a>
											<a target="_blank"
												href="/keywords/quanzheguangchuanglian/?site_from=cflcd8"
												style="">遮光窗帘</a>
											<a target="_blank"
												href="/keywords/shafazuodian/?site_from=cflcd8" style="">坐垫</a>
											<a target="_blank"
												href="/keywords/jiayongditan/?site_from=cflcd8"
												style="color: #cf000e !important">家用地毯</a>
											<a target="_blank"
												href="/keywords/baozheng/?site_from=cflcd8" style="">抱枕</a>
										</li>
									</ul>
								</div>
								<div class="sub-r fl">
									<h6>
										推荐品牌
									</h6>
									<div class="tag">
										<a target="_blank" href="/brand-588/?site_from=cflcd8"
											style="color: #cf000e !important">博洋家纺</a><a target="_blank"
											href="/brand-318/?site_from=cflcd8" style="">优曼之家</a><a
											target="_blank" href="/brand-333/?site_from=cflcd8" style="">唯萨</a><a
											target="_blank" href="/brand-335/?site_from=cflcd8" style="">芬缇</a><a
											target="_blank" href="/brand-526/?site_from=cflcd8" style="">布莱丝盾</a><a
											target="_blank" href="/brand-990/?site_from=cflcd8" style="">睡眠易</a><a
											target="_blank"
											href="/category-chuangshangyongpin/list-b1070/?site_from=cflcd8"
											style="color: #cf000e !important">凯黎舍</a><a target="_blank"
											href="/brand-999/?site_from=cflcd8" style="">邵氏家纺</a><a
											target="_blank" href="/brand-1141/?site_from=cflcd8" style="">梦巢</a><a
											target="_blank" href="/brand-540/?site_from=cflcd8"
											style="color: #cf000e !important">悦邻家居</a><a target="_blank"
											href="/brand-450/?site_from=cflcd8" style="">小日子</a><a
											target="_blank" href="/brand-585/?site_from=cflcd8" style="">皇室家居</a>
									</div>
									<a target="_blank"
										href="http://www.meilele.com/category-beixin/goods-229431.html?site_from=cflcd8"
										title="100%桑蚕丝"><img
											menu-lazy-src="http://img003.mllres.com/images/201603/1459278327041023273.jpg"
											src="http://image.meilele.com/images/blank.gif" alt="100%桑蚕丝"
											width="190" height="260"> </a>
								</div>
							</div>
							<i class="i-menu i10"></i><a target="_blank" class="txt"
								href="/category-chuangshangyongpin/?site_from=cflcd8">床上用品</a><a
								target="_blank" class="txt"
								href="/category-buyizhiwu/?site_from=cflcd8">布艺织物</a>
						</li>
						<li class="map-item ">
							<div class="sub clearfix">
								<div class="sub-l fl">
									<ul class="sub-group clearfix">
										<li class="fl sub-title">
											<a target="_blank"
												href="/category-gongyishipin/?site_from=cflcd9"><i
												class="i-t"></i>家居用品</a>
										</li>
										<li class="fl sub-content">
											<a target="_blank" href="/category-youhua/?site_from=cflcd9"
												style="color: #cf000e !important">油画</a>
											<a target="_blank"
												href="/category-zhuangshihua/?site_from=cflcd9" style="">装饰画</a>
											<a target="_blank"
												href="/category-zhaopianqiang/?site_from=cflcd9" style="">相框/照片墙</a>
											<a target="_blank"
												href="/category-fangzhenhua/?site_from=cflcd9" style="">仿真花</a>
											<a target="_blank"
												href="/category-dianhuaji/?site_from=cflcd9" style="">电话机</a>
											<a target="_blank"
												href="/category-yanhuigang/?site_from=cflcd9" style="">烟灰缸</a>
											<a target="_blank" href="/category-tieshi/?site_from=cflcd9"
												style="">壁饰/贴饰</a>
											<a target="_blank" href="/category-zhong/?site_from=cflcd9"
												style="">钟</a>
											<a target="_blank"
												href="/category-baijianjiqita/?site_from=cflcd9"
												style="color: #cf000e !important">装饰摆件</a>
											<a target="_blank"
												href="/category-xiangxunyongpin/?site_from=cflcd9" style="">香薰用品</a>
											<a target="_blank"
												href="/category-hunlishipin/?site_from=cflcd9" style="">婚礼饰品</a>
											<a target="_blank"
												href="/category-baoxiangzhuangshi/?site_from=cflcd9"
												style="">电表箱装饰</a>
											<a target="_blank"
												href="/category-zhuangshituopan/?site_from=cflcd9" style="">装饰托盘/座盘</a>
											<a target="_blank"
												href="/category-chuangyishipin/?site_from=cflcd9" style="">创意饰品</a>
											<a target="_blank"
												href="/category-fengshuibaijian/?site_from=cflcd9" style="">风水摆件</a>
											<a target="_blank"
												href="/category-chuangyigongzai/?site_from=cflcd9" style="">创意公仔</a>
											<a target="_blank"
												href="/category-hongjiujia/?site_from=cflcd9" style="">红酒架</a>
											<a target="_blank"
												href="/category-shoushihe/?site_from=cflcd9" style="">首饰盒</a>
											<a target="_blank" href="/category-huaping/?site_from=cflcd9"
												style="color: #cf000e !important">花瓶/花盆</a>
											<a target="_blank" href="/category-zhutai/?site_from=cflcd9"
												style="">烛台/蜡烛</a>
											<a target="_blank"
												href="/category-zhuangshihuajia/?site_from=cflcd9" style="">装饰花架</a>
										</li>
									</ul>
									<ul class="sub-group clearfix">
										<li class="fl sub-title">
											<a target="_blank" href=""><i class="i-t"></i>热门搜索</a>
										</li>
										<li class="fl sub-content last">
											<a target="_blank" href="/keywords/youhua/?site_from=cflcd9"
												style="">创意油画</a>
											<a target="_blank"
												href="/keywords/wukuanghua/?site_from=cflcd9"
												style="color: #cf000e !important">无框画</a>
											<a target="_blank"
												href="/keywords/youkuanghua/?site_from=cflcd9" style="">有框画</a>
											<a target="_blank" href="/keywords/guahua/?site_from=cflcd9"
												style="">挂画</a>
											<a target="_blank"
												href="/keywords/ketingzhuangshihua/?site_from=cflcd9"
												style="">客厅装饰画</a>
											<a target="_blank"
												href="/keywords/xiandaizhuangshihua/?site_from=cflcd9"
												style="">现代装饰画</a>
											<a target="_blank"
												href="/keywords/zhaopianxiangkuang/?site_from=cflcd9"
												style="">照片相框</a>
											<a target="_blank"
												href="/keywords/gongyibaijian/?site_from=cflcd9" style="">工艺摆件</a>
											<a target="_blank"
												href="/keywords/jiajubaijian/?site_from=cflcd9" style="">家居摆件</a>
											<a target="_blank"
												href="/keywords/chuangyihongjiujia/?site_from=cflcd9"
												style="">红酒架</a>
											<a target="_blank" href="/keywords/fzhf/?site_from=cflcd9"
												style="color: #cf000e !important">仿真花</a>
											<a target="_blank"
												href="/keywords/qiangtie/?site_from=cflcd9" style="">墙贴</a>
											<a target="_blank" href="/keywords/zbssh/?site_from=cflcd9"
												style="">首饰盒</a>
											<a target="_blank"
												href="/keywords/hunqingbaijian/?site_from=cflcd9" style="">婚庆摆件</a>
											<a target="_blank"
												href="/keywords/oushidianhuaji/?site_from=cflcd9" style="">欧式电话机</a>
										</li>
									</ul>
								</div>
								<div class="sub-r fl">
									<h6>
										推荐品牌
									</h6>
									<div class="tag">
										<a target="_blank" href="/brand-278/?site_from=cflcd9"
											style="color: #cf000e !important">馨美艺饰品</a><a target="_blank"
											href="/brand-360/?site_from=cflcd9" style="">馨视觉</a><a
											target="_blank" href="/brand-467/?site_from=cflcd9" style="">琪特</a><a
											target="_blank" href="/brand-411/?site_from=cflcd9" style="">英伦欧堡</a><a
											target="_blank" href="/brand-372/?site_from=cflcd9" style="">莎芮Saree</a><a
											target="_blank" href="/brand-405/?site_from=cflcd9" style="">宜生活</a><a
											target="_blank" href="/brand-491/?site_from=cflcd9" style="">梵莎奇</a><a
											target="_blank" href="/brand-379/?site_from=cflcd9" style="">迎丰人家</a><a
											target="_blank" href="/brand-537/?site_from=cflcd9" style="">朵兰舍</a><a
											target="_blank" href="/brand-833/?site_from=cflcd9" style="">奇居良品</a><a
											target="_blank" href="/brand-431/?site_from=cflcd9" style="">三南</a><a
											target="_blank" href="/brand-840/?site_from=cflcd9" style="">墨菲</a><a
											target="_blank" href="/brand-530/?site_from=cflcd9" style="">七欧</a><a
											target="_blank" href="/brand-743/?site_from=cflcd9" style="">那澜多好</a><a
											target="_blank" href="/brand-1192/?site_from=cflcd9" style="">格瑞家饰</a>
									</div>
									<a target="_blank"
										href="http://www.meilele.com/category-chuanglian/goods-173805.html?site_from=cflcd9"
										title="水溶绣花工艺窗帘"><img
											menu-lazy-src="http://image.meilele.com/images/201603/1459278409269108574.jpg"
											src="http://image.meilele.com/images/blank.gif"
											alt="水溶绣花工艺窗帘" width="190" height="260"> </a>
								</div>
							</div>
							<i class="i-menu i11"></i><a target="_blank" class="txt"
								href="/category-gongyishipin/?site_from=cflcd9">家居饰品</a><a
								target="_blank" class="txt"
								href="/category-jiajujiazhuang/?site_from=cflcd9">居家日用</a>
						</li>
					</ul>
				</div>
				<ul class="navigator">

					<li>
						<a target="_blank" href="/jiaju/" title="家具城">家具城</a>
					</li>
					<li>
						<a target="_blank" href="/jiancai/" title="建材城">建材城</a>
					</li>
					<li id="JS_mll_head_menu_jiashi">
						<a target="_blank" href="/shipin/" title="家居家饰">家居家饰</a>
					</li>
					<li>
						<a target="_blank" href="/tuangou/" title="团购">团购</a>
					</li>
					<li>
						<a id="JS_mll_head_menu_expr" target="_blank" href="/expr.html"
							title="体验馆">体验馆<img
								src="http://image.meilele.com/images/common/site/hot.gif">
						</a>
					</li>
					<li>
						<a target="_blank" href="/xspace/" title="客户晒家">晒家</a>
					</li>
					<li>
						<a target="_blank" target="_blank" href="http://zx.meilele.com/"
							title="装修网">装修网</a>
					</li>
					<li>
						<a target="_blank" href="/tljj/" title="图览家居">图览家居</a>
					</li>
				</ul>
			</div>
		</div>
		<script type="text/javascript">
        if(data.html_content == 272) {
            document.getElementById('JS_mll_head_menu_jiashi').style.display = "block";
        }
    } 
</script>


		<div class="scroll-banner" id="JS_mll_scroll_bar"
			style="background: #38005e">
			<div class="w pr">
				<div class="expr-opacity"></div>
				<div class="expr-link">
					<div class="word">
						<p>
							<span>88325</span>个
						</p>
						<p>
							赣州宁都家庭选择了乐家具
						</p>
					</div>
					<a href="javascript:;"
						onclick="$.codeSms('',{click : '201412首页_首屏_南昌', 'postionCode':'mll_shouye1'});window._gaq.push(['_trackEvent','2016版首页','点击焦点图找身边的体验馆','click']);return!1">
						<div class="pavilio">
							<p>
								赣州2家
							</p>
							<span>全国298家体验馆</span>
						</div> </a>
					<div>
						<a target="_blank" class="expr-btn" href="javascript:;"
							onclick="$.codeSms('',{click : '201412首页_首屏_南昌', 'postionCode':'mll_shouye1'});window._gaq.push(['_trackEvent','2016版首页','点击焦点图找身边的体验馆','click']);return!1"></a>
						<p class="expr-word"></p>
					</div>
				</div>
			</div>


			<ul class="scroll-content">
				<li class="scroll-item" style="background: #38005e"
					data-imgLoaded="1" style="display:block">
					<div class="scroll-index">
						<a href="http://www.meilele.com/topic/201703_znqdc.html?site_from=sy_jdt1" target="_blank" title="体验馆6周年大促"> <img class="sc-big fadeInR" src="http://img003.mllres.com/images/201703/1489943594795568398.jpg" alt="体验馆6周年大促"> <img class="sc-small fadeInL" src="http://img003.mllres.com/images/201703/1489943719055327637.png" alt="体验馆6周年大促"></a>
					</div>
				</li>
				<li class="scroll-item" style="background: #909294">
					<div class="scroll-index">
						<a
							href="http://www.meilele.com/topic/2017_chuangdianzt.html?site_from=sy_jdt2"
							target="_blank" title="床垫大促"> <img class="sc-big fadeInR"
								src="http://image.meilele.com/images/blank.gif" alt="床垫大促"
								lazy-src="http://img004.mllres.com/images/201703/1490558064679988279.jpg">
							<img class="sc-small fadeInL"
								src="http://image.meilele.com/images/blank.gif" alt="床垫大促"
								lazy-src="http://img002.mllres.com/images/201703/1490558098090081696.png">
						</a>
					</div>
				</li>
				<li class="scroll-item" style="background: #87c8f7">
					<div class="scroll-index">
						<a
							href="http://www.meilele.com/topic/201703_lanqi.html?site_from=sy_jdt3"
							target="_blank" title="蓝骑新品专场"> <img class="sc-big fadeInR"
								src="http://image.meilele.com/images/blank.gif" alt="蓝骑新品专场"
								lazy-src="http://img002.mllres.com/images/201703/1490896261119470555.jpg">
							<img class="sc-small fadeInL"
								src="http://image.meilele.com/images/blank.gif" alt="蓝骑新品专场"
								lazy-src="http://img002.mllres.com/images/201703/1490896197528326354.png">
						</a>
					</div>
				</li>
				<li class="scroll-item" style="background: #9b0003">
					<div class="scroll-index">
						<a
							href="http://www.meilele.com/topic/201703_yh30thznq.html?site_from=sy_jdt4"
							target="_blank" title="宜华30周年大促"> <img class="sc-big fadeInR"
								src="http://image.meilele.com/images/blank.gif" alt="宜华30周年大促"
								lazy-src="http://img001.mllres.com/images/201703/1489944028370706157.jpg">
							<img class="sc-small fadeInL"
								src="http://image.meilele.com/images/blank.gif" alt="宜华30周年大促"
								lazy-src="http://image.meilele.com/images/201703/1489943945318334281.png">
						</a>
					</div>
				</li>
				<li class="scroll-item" style="background: #fb7e00">
					<div class="scroll-index">
						<a
							href="http://www.meilele.com/topic/201703_zyqjppdc.html?site_from=sy_jdt5"
							target="_blank" title="自营旗舰品牌大促"> <img class="sc-big fadeInR"
								src="http://image.meilele.com/images/blank.gif" alt="自营旗舰品牌大促"
								lazy-src="http://img001.mllres.com/images/201703/1489944248300055303.jpg">
							<img class="sc-small fadeInL"
								src="http://image.meilele.com/images/blank.gif" alt="自营旗舰品牌大促"
								lazy-src="http://img002.mllres.com/images/201703/1489945749124676191.png">
						</a>
					</div>
				</li>
			</ul>
			<div class="scroll-btn">
				<span></span>
				<span></span>
				<span></span>
				<span></span>
				<span></span>
			</div>

		</div>



		<div id="jsWebFestivalDressUp" class="w" style="position: relative;">
		</div>
		<script type="text/javascript">
window._onReadyList = window._onReadyList || [];
_onReadyList.push(function(){
	$(window).on('load', function(){
		var vw = window.LOAD ? 1190 : 980, sw = window.screen.width, iw = (sw - vw - 19) / 2, dressBox = $('#jsWebFestivalDressUp');

		/*dressBox.find('.dress').css({'width': iw + 'px', 'top': window._pageConfig_.dressUpAdTop});*/
		dressBox.find('.dress').css({'width': iw + 'px'});
		dressBox.find('.dress-left').css({'left': (0 - iw) + 'px'}).show();
		dressBox.find('.dress-right').css({'right': (0 - iw) + 'px'}).show();
	});
});
</script>    <script>
        //左右广告位window.screen.width>=1280 不用window.LOAD判断
        window.onload = function() {
            var ti = setTimeout(function(){
                var new_vw = window.screen.width>=1280 ? 1190 : 980;
                sw = window.screen.width;
                iw = (sw - new_vw - 19) / 2; 
                dressBox = $('#jsWebFestivalDressUp');
                dressBox.find('.dress').css({'width': iw + 'px'});
                dressBox.find('.dress-left').css({'left': (0 - iw) + 'px'}).show();
                dressBox.find('.dress-right').css({'right': (0 - iw) + 'px'}).show();
            }, 100)             
        }

    </script>
    
    
    
    <div class="advert-img">
        <div class="w clearfix">
                        <div class="fl img-item ">
                <div class="word">
                    <p><a target="_blank" href="http://www.meilele.com/tuangou/?site_from=sy_banner1" title="底价成团 限时限量" style="color:#001a3f">团购</a></p>
                    <span><a target="_blank" href="http://www.meilele.com/tuangou/?site_from=sy_banner1" title="底价成团 限时限量" style="color:#001a3f">底价成团 限时限量</a></span>
                </div>
                <a target="_blank" href="http://www.meilele.com/tuangou/?site_from=sy_banner1" title="底价成团 限时限量"><img src="http://img001.mllres.com/images/201608/1472607539856561898.jpg" alt=""></a>
            </div>
                        <div class="fl img-item ">
                <div class="word">
                    <p><a target="_blank" href="http://www.meilele.com/miaosha/?site_from=sy_banner2" title="1元开秒 抢不停歇" style="color:##2f2c27">秒杀</a></p>
                    <span><a target="_blank" href="http://www.meilele.com/miaosha/?site_from=sy_banner2" title="1元开秒 抢不停歇" style="color:##2f2c27">1元开秒 抢不停歇</a></span>
                </div>
                <a target="_blank" href="http://www.meilele.com/miaosha/?site_from=sy_banner2" title="1元开秒 抢不停歇"><img src="http://img001.mllres.com/images/201609/1472694713423897890.jpg" alt=""></a>
            </div>
                        <div class="fl img-item ">
                <div class="word">
                    <p><a target="_blank" href="http://www.meilele.com/new_products.html?site_from=sy_banner3" title="新品特惠 每周更新
" style="color:##2f2a27">新品</a></p>
                    <span><a target="_blank" href="http://www.meilele.com/new_products.html?site_from=sy_banner3" title="新品特惠 每周更新
" style="color:##2f2a27">新品特惠 每周更新</a></span>
                </div>
                <a target="_blank" href="http://www.meilele.com/new_products.html?site_from=sy_banner3" title="新品特惠 每周更新
"><img src="http://img001.mllres.com/images/201608/1472607585803918580.jpg" alt=""></a>
            </div>
                        <div class="fl img-item last">
                <div class="word">
                    <p><a target="_blank" href="http://www.meilele.com/topic/201703_lanqi.html?site_from=sy_banner4" title="品牌家居 爆款热卖
" style="color:#003629">简美</a></p>
                    <span><a target="_blank" href="http://www.meilele.com/topic/201703_lanqi.html?site_from=sy_banner4" title="品牌家居 爆款热卖
" style="color:#003629">品牌家居 爆款热卖</a></span>
                </div>
                <a target="_blank" href="http://www.meilele.com/topic/201703_lanqi.html?site_from=sy_banner4" title="品牌家居 爆款热卖
"><img src="http://img002.mllres.com/images/201609/1472694727214614689.jpg" alt=""></a>
            </div>
                   </div>
    </div>
    
    
    
    
        <div class="floor default_floor_show">
        <div class="w">
            <div class="floor-header clearfix">
                <h3 class="fl"><a target="_blank" href="/category-wofang/?site_from=sy_lc_ws">1F 卧室</a></h3>
                <ul id="JS_floor_nav_1" class="floor-nav fl clearfix">
                    <li class="fl hover" data-index="0">精品推荐</li>
                    <li class="fl" data-index="1">新品上架</li>                </ul>
                <div class="floor-tag fr">
                    <a  href="/category-chuang/?site_from=sy_lc_ws" target="_blank">床</a><a  href="/category-chuangdian/?site_from=sy_lc_ws" target="_blank">床垫</a><a  href="/category-meiguichuang/?site_from=sy_lc_ws" target="_blank">美规床</a><a  href="/category-jinkouchuangdian/?site_from=sy_lc_ws" target="_blank">美国进口床垫</a><a  href="/category-chuangtougui/?site_from=sy_lc_ws" target="_blank">床头柜</a><a class="last" href="/category-yigui/?site_from=sy_lc_ws" target="_blank">衣柜</a>                </div>
            </div>
            <div id="JS_floor_table_1" class="floor-table clearfix">
                <div class="fl floor-left">
                    <div class="aImg">
                        <a href="http://www.meilele.com/category-wofang/?site_from=sy_lc_ws" title="卧室精品选购" target="_blank">
                            <p class="brand-title">卧室个性巧搭</p>
                            <p class="brand-subtitle">懂你 懂生活</p>
                            <span class="brand-btn">去看看 <span class="brand-i">></span></span>
                            <img class="floor-img" src="http://image.meilele.com/images/blank.gif" data-src="http://img002.mllres.com/images/201603/1459304884956995493.jpg" alt="">
                        </a>
                    </div>
                    <div class="aTag">
                        <a  href="/keywords/shimuchuang/?site_from=sy_lc_ws" target="_blank">实木床</a><a  href="/keywords/buyichuang/?site_from=sy_lc_ws" target="_blank">布艺床</a><a  href="/keywords/gaoxiangchuang/?site_from=sy_lc_ws" target="_blank">高箱床</a><a  href="/keywords/rujiaochuangdian/?site_from=sy_lc_ws" target="_blank">乳胶床垫</a><a  href="/category-jinkouchuangdian/?site_from=sy_lc_ws" target="_blank">进口床垫</a><a  href="/keywords/tatamichuang/?site_from=sy_lc_ws" target="_blank">榻榻米床</a><a  href="/category-chuang/list-44_19634/?site_from=sy_lc_ws" target="_blank">床板床</a><a  href="/category-chuang/list-44_19637/?site_from=sy_lc_ws" target="_blank">排骨架床</a><a  href="/keywords/zhenpichuang/?site_from=sy_lc_ws" target="_blank">真皮床</a><a  href="/keywords/tianyuanchuang/?site_from=sy_lc_ws" target="_blank">田园床</a><a  href="/keywords/tangmenyigui/?site_from=sy_lc_ws" target="_blank">趟门衣柜</a><a  href="/keywords/lamenyigui/?site_from=sy_lc_ws" target="_blank">拉门衣柜</a><a  href="/keywords/simenyigui/?site_from=sy_lc_ws" target="_blank">四门衣柜</a><a  href="/keywords/hanshishuzhuangtai/?site_from=sy_lc_ws" target="_blank">韩式妆台</a><a class="last" href="/keywords/wudougui/?site_from=sy_lc_ws" target="_blank">五斗柜</a>                    </div>
                    <div class="ad">
                        <a href="http://www.meilele.com/brand-577/?site_from=sy_lc_logo1" title="Simmons" target="_blank" class=" "><img src="http://image.meilele.com/images/blank.gif" data-src="http://image.meilele.com/images/201603/1459295539508194512.jpg" alt="Simmons"></a><a href="http://www.meilele.com/brand-111/?site_from=sy_lc_logo2" title="韩菲尔" target="_blank" class="last "><img src="http://image.meilele.com/images/blank.gif" data-src="http://img002.mllres.com/images/201603/1459295705875472954.jpg" alt="韩菲尔"></a><a href="http://www.meilele.com/brand-212/?site_from=sy_lc_logo3" title="卡富亚" target="_blank" class=" second"><img src="http://image.meilele.com/images/blank.gif" data-src="http://img003.mllres.com/images/201603/1459295829488650279.jpg" alt="卡富亚"></a><a href="http://www.meilele.com/brand-474/?site_from=sy_lc_logo4" title="喜临门" target="_blank" class="last second"><img src="http://image.meilele.com/images/blank.gif" data-src="http://image.meilele.com/images/201603/1459295889317804503.jpg" alt="喜临门"></a>                    </div>
                </div>
                <div class="floor-right clearfix" data-index="0">
                    <div class="scroll-bar JS_floor_banner fl">
                                                <div class="content">
                            <a href="http://www.meilele.com/category-chuang/goods-109274.html?site_from=sy_lc_wsjp1" target="_blank" title="手工皇冠雕花珠光真皮床">   
                            <div class="content-banner">
                                <span class="txt-l">手工皇冠雕花珠光真皮床</span>
                                <p class="txt-s">舒享简欧美榻 红包省800 &yen;<span class="JS_async_price" data-goods_id="109274">3683</span></p>
                            </div>
                            </a>
                        </div>
                                                <div class="content">
                            <a href="http://www.meilele.com/category-chuangdian/goods-83543.html?site_from=sy_lc_wsjp2" target="_blank" title="天然乳胶3D椰棕环保床垫

">   
                            <div class="content-banner">
                                <span class="txt-l">软硬两用 舒享酣眠</span>
                                <p class="txt-s">天然乳胶3D椰棕环保床垫 &yen;<span class="JS_async_price" data-goods_id="83543">3299</span></p>
                            </div>
                            </a>
                        </div>
                                                <div class="content">
                            <a href="http://www.meilele.com/category-chuang/goods-21994.html?site_from=sy_lc_wsjp3" target="_blank" title="法式玫瑰雕花珠光皮床

">   
                            <div class="content-banner">
                                <span class="txt-l">法式玫瑰雕花珠光皮床</span>
                                <p class="txt-s">皮料柔软华贵 红包省500 &yen;<span class="JS_async_price" data-goods_id="21994">4039</span></p>
                            </div>
                            </a>
                        </div>
                                                <div class="nav">
                            <div class="list JS_list_banner">
                                <a href="javascript:;" target="_blank"></a><a href="javascript:;" target="_blank"></a><a href="javascript:;" target="_blank"></a>                            </div>
                        </div>
                        <ul class="JS_ul_banner">
                                                        <li><a href="http://www.meilele.com/category-chuang/goods-109274.html?site_from=sy_lc_wsjp1" target="_blank" title="手工皇冠雕花珠光真皮床"><img src="http://image.meilele.com/images/blank.gif" data-src="http://img004.mllres.com/images/201703/1488489158240564921.jpg" alt="手工皇冠雕花珠光真皮床"/></a></li>
                                                        <li><a href="http://www.meilele.com/category-chuangdian/goods-83543.html?site_from=sy_lc_wsjp2" target="_blank" title="天然乳胶3D椰棕环保床垫

"><img src="http://image.meilele.com/images/blank.gif" data-src="http://img001.mllres.com/images/201612/1483054115216943501.jpg" alt="天然乳胶3D椰棕环保床垫

"/></a></li>
                                                        <li><a href="http://www.meilele.com/category-chuang/goods-21994.html?site_from=sy_lc_wsjp3" target="_blank" title="法式玫瑰雕花珠光皮床

"><img src="http://image.meilele.com/images/blank.gif" data-src="http://img004.mllres.com/images/201703/1490312908373977458.jpg" alt="法式玫瑰雕花珠光皮床

"/></a></li>
                                                    </ul>
                    </div>
                                                            <div class="floor-bar s1 fl">
                        <a href="http://www.meilele.com/category-yigui/goods-12434.html?site_from=sy_lc_wsjp4" title="韩系甜美网红四门衣柜

" target="_blank"><img src="http://image.meilele.com/images/blank.gif" alt="" data-src="http://img002.mllres.com/images/201702/1487293786618211245.jpg"></a>
                        <ul>
                            <li class="name"><a href="http://www.meilele.com/category-yigui/goods-12434.html?site_from=sy_lc_wsjp4" title="韩系甜美网红四门衣柜

" target="_blank">合理布局 超大容量</a></li>
                            <li class="tips"><a href="http://www.meilele.com/category-yigui/goods-12434.html?site_from=sy_lc_wsjp4" title="韩系甜美网红四门衣柜

" target="_blank">韩系甜美网红四门衣柜</a></li>
                            <li class="prize"><a href="http://www.meilele.com/category-yigui/goods-12434.html?site_from=sy_lc_wsjp4" title="韩系甜美网红四门衣柜

" target="_blank">&yen;<span class="JS_async_price" data-goods_id="12434">4088</span></a></li>
                        </ul>
                    </div>
                                                                                                                                            <div class="fl">
                        <div class="floor-bar s2">
                            <a href="http://www.meilele.com/category-chuang/goods-58688.html?site_from=sy_lc_wsjp5" title="桃花芯木双色头层真皮床" target="_blank"><img src="http://image.meilele.com/images/blank.gif" alt="桃花芯木双色头层真皮床" data-src="http://image.meilele.com/images/201703/1490313022039548083.jpg"></a>
                            <ul>
                                <li class="name"><a href="http://www.meilele.com/category-chuang/goods-58688.html?site_from=sy_lc_wsjp5" title="桃花芯木双色头层真皮床" target="_blank">尊享华宅美榻<span class="activity">1000元红包

</span></a></li>
                                <li class="tips"><a href="http://www.meilele.com/category-chuang/goods-58688.html?site_from=sy_lc_wsjp5" title="桃花芯木双色头层真皮床" target="_blank">桃花芯木双色头层真皮床</a></li>
                                <li class="prize"><a href="http://www.meilele.com/category-chuang/goods-58688.html?site_from=sy_lc_wsjp5" title="桃花芯木双色头层真皮床" target="_blank">&yen;<span class="JS_async_price" data-goods_id="58688">9999</span></a></li>
                            </ul>
                        </div>
                    </div>
                                                                                                                        <div class="fl">
                        <div class="floor-bar s2">
                            <a href="http://www.meilele.com/category-chuang/goods-34742.html?site_from=sy_lc_wsjp6" title="地中海人气栅栏床" target="_blank"><img src="http://image.meilele.com/images/blank.gif" alt="地中海人气栅栏床" data-src="http://img004.mllres.com/images/201611/1478227380380606785.jpg"></a>
                            <ul>
                                <li class="name"><a href="http://www.meilele.com/category-chuang/goods-34742.html?site_from=sy_lc_wsjp6" title="地中海人气栅栏床" target="_blank">地中海人气王<span class="activity">1200元红包</span></a></li>
                                <li class="tips"><a href="http://www.meilele.com/category-chuang/goods-34742.html?site_from=sy_lc_wsjp6" title="地中海人气栅栏床" target="_blank">美国进口白杨木栅栏床</a></li>
                                <li class="prize"><a href="http://www.meilele.com/category-chuang/goods-34742.html?site_from=sy_lc_wsjp6" title="地中海人气栅栏床" target="_blank">&yen;<span class="JS_async_price" data-goods_id="34742">2250</span></a></li>
                            </ul>
                        </div>
                    </div>
                                                                                                                                            <div class="floor-bar s4 fl">
                        <a href="http://www.meilele.com/category-chuang/goods-20429.html?site_from=sy_lc_wsjp7" title="头层珠光水牛皮软床" target="_blank"><img src="http://image.meilele.com/images/blank.gif" alt="" data-src="http://img002.mllres.com/images/201612/1481250715378912926.jpg"></a>
                        <ul>
                            <li class="name"><a href="http://www.meilele.com/category-chuang/goods-20429.html?site_from=sy_lc_wsjp7" title="头层珠光水牛皮软床" target="_blank">靠着看书特舒服<span class="activity">500元红包</span></a></li>
                            <li class="tips"><a href="http://www.meilele.com/category-chuang/goods-20429.html?site_from=sy_lc_wsjp7" title="头层珠光水牛皮软床" target="_blank">头层珠光水牛皮软床</a></li>
                            <li class="prize"><a href="http://www.meilele.com/category-chuang/goods-20429.html?site_from=sy_lc_wsjp7" title="头层珠光水牛皮软床" target="_blank">&yen;<span class="JS_async_price" data-goods_id="20429">2999</span></a></li>
                        </ul>
                    </div>
                                                                                                                        <div class="floor-bar s5 fl">
                        <a href="http://www.meilele.com/category-chuangdian/goods-244605.html?site_from=sy_lc_wsjp8" title="温湿“随时控”天然乳胶床垫
" target="_blank"><img src="http://image.meilele.com/images/blank.gif" alt="" data-src="http://image.meilele.com/images/201702/1487293972939141199.jpg"></a>
                        <ul>
                            <li class="name"><a href="http://www.meilele.com/category-chuangdian/goods-244605.html?site_from=sy_lc_wsjp8" title="温湿“随时控”天然乳胶床垫
" target="_blank">七区分段安享睡眠</a></li>
                            <li class="tips"><a href="http://www.meilele.com/category-chuangdian/goods-244605.html?site_from=sy_lc_wsjp8" title="温湿“随时控”天然乳胶床垫
" target="_blank">温湿“随时控”天然乳胶床垫</a></li>
                            <li class="prize"><a href="http://www.meilele.com/category-chuangdian/goods-244605.html?site_from=sy_lc_wsjp8" title="温湿“随时控”天然乳胶床垫
" target="_blank">&yen;<span class="JS_async_price" data-goods_id="244605">4399</span></a></li>
                        </ul>
                    </div>
                                                                                                                        <div class="floor-bar s6 fl">
                        <a href="http://www.meilele.com/category-chuang/goods-27716.html?site_from=sy_lc_wsjp9" title="中式进口水曲柳实木床" target="_blank"><img src="http://image.meilele.com/images/blank.gif" alt="" data-src="http://img002.mllres.com/images/201702/1486942904929484777.jpg"></a>
                        <ul>
                            <li class="name"><a href="http://www.meilele.com/category-chuang/goods-27716.html?site_from=sy_lc_wsjp9" title="中式进口水曲柳实木床" target="_blank">木质坚实稳固<span class="activity">500元红包</span></a></li>
                            <li class="tips"><a href="http://www.meilele.com/category-chuang/goods-27716.html?site_from=sy_lc_wsjp9" title="中式进口水曲柳实木床" target="_blank">中式进口水曲柳实木床</a></li>
                            <li class="prize"><a href="http://www.meilele.com/category-chuang/goods-27716.html?site_from=sy_lc_wsjp9" title="中式进口水曲柳实木床" target="_blank">&yen;<span class="JS_async_price" data-goods_id="27716">3499</span></a></li>
                        </ul>
                    </div>
                                                                                                                        <div class="floor-bar s7 fl">
                        <a href="http://www.meilele.com/category-chuang/goods-294226.html?site_from=sy_lc_wsjp10" title="做旧简美风高屏床

" target="_blank"><img src="http://image.meilele.com/images/blank.gif" alt="" data-src="http://img002.mllres.com/images/201702/1487894999601209646.jpg"></a>
                        <ul>
                            <li class="name"><a href="http://www.meilele.com/category-chuang/goods-294226.html?site_from=sy_lc_wsjp10" title="做旧简美风高屏床

" target="_blank">沉稳色调 安心惬意</a></li>
                            <li class="tips"><a href="http://www.meilele.com/category-chuang/goods-294226.html?site_from=sy_lc_wsjp10" title="做旧简美风高屏床

" target="_blank">环保坚固 简美高屏床</a></li>
                            <li class="prize"><a href="http://www.meilele.com/category-chuang/goods-294226.html?site_from=sy_lc_wsjp10" title="做旧简美风高屏床

" target="_blank">&yen;<span class="JS_async_price" data-goods_id="294226">2699</span></a></li>
                        </ul>
                    </div>
                                                        </div>
                                <div class="floor-right clearfix" data-index="1" style="display:none">
                                                            <div class="scroll-bar fl">
                        <div class="content">
                            <a href="http://www.meilele.com/category-chuang/goods-309461.html?site_from=sy_lc_wsxp1" target="_blank" title="进口金丝黄杨木排骨架床">   
                                <div class="content-banner">
                                    <span class="txt-l">美式经典 非凡之选</span>
                                    <p class="txt-s">进口金丝黄杨木排骨架床 &yen;<span class="JS_async_price" data-goods_id="309461">9300</span></p>
                                </div>
                            </a>
                        </div>
                        <a href="http://www.meilele.com/category-chuang/goods-309461.html?site_from=sy_lc_wsxp1" title="进口金丝黄杨木排骨架床" target="_blank"><img src="http://image.meilele.com/images/blank.gif" alt="进口金丝黄杨木排骨架床" data-tab-src="http://img003.mllres.com/images/201702/1487901824737069717.jpg" width="620" height="449"></a>
                    </div>
                                                                                                                                                                <div class="floor-bar s1 fl">
                        <a href="http://www.meilele.com/category-yigui/goods-316775.html?site_from=sy_lc_wsxp2" title="欧式简约雕花描银四门衣柜" target="_blank"><img src="http://image.meilele.com/images/blank.gif" alt="欧式简约雕花描银四门衣柜" data-tab-src="http://image.meilele.com/images/201703/1489347765470082102.jpg"></a>
                        <ul>
                            <li class="name"><a href="http://www.meilele.com/category-yigui/goods-316775.html?site_from=sy_lc_wsxp2" title="欧式简约雕花描银四门衣柜" target="_blank">高冷女神气质款</a></li>
                            <li class="tips"><a href="http://www.meilele.com/category-yigui/goods-316775.html?site_from=sy_lc_wsxp2" title="欧式简约雕花描银四门衣柜" target="_blank">欧式简约雕花描银四门衣柜</a></li>
                            <li class="prize"><a href="http://www.meilele.com/category-yigui/goods-316775.html?site_from=sy_lc_wsxp2" title="欧式简约雕花描银四门衣柜" target="_blank">&yen;<span class="JS_async_price" data-goods_id="316775">5502</span></a></li>
                        </ul>
                    </div>
                                                                                                                                                                <div class="fl">
                        <div class="floor-bar s2">
                            <a href="http://www.meilele.com/category-chuang/goods-313719.html?from=sy_lc_wsxp3" title="雅致雕花纯色环保床" target="_blank"><img src="http://image.meilele.com/images/blank.gif" alt="雅致雕花纯色环保床" data-tab-src="http://img004.mllres.com/images/201703/1489347867485074537.jpg"></a>
                            <ul>
                                <li class="name"><a href="http://www.meilele.com/category-chuang/goods-313719.html?from=sy_lc_wsxp3" title="雅致雕花纯色环保床" target="_blank">圆惬意田园梦</a></li>
                                <li class="tips"><a href="http://www.meilele.com/category-chuang/goods-313719.html?from=sy_lc_wsxp3" title="雅致雕花纯色环保床" target="_blank">雅致雕花纯色环保床</a></li>
                                <li class="prize"><a href="http://www.meilele.com/category-chuang/goods-313719.html?from=sy_lc_wsxp3" title="雅致雕花纯色环保床" target="_blank">&yen;<span class="JS_async_price" data-goods_id="313719">2280</span></a></li>
                            </ul>
                        </div>
                    </div>
                                                                                                                                            <div class="fl">
                        <div class="floor-bar s2">
                            <a href="http://www.meilele.com/category-dougui/goods-294266.html?site_from=sy_lc_wsxp4" title="简美风超强储物五斗柜
" target="_blank"><img src="http://image.meilele.com/images/blank.gif" alt="简美风超强储物五斗柜
" data-tab-src="http://img003.mllres.com/images/201612/1480614712615070698.jpg"></a>
                            <ul>
                                <li class="name"><a href="http://www.meilele.com/category-dougui/goods-294266.html?site_from=sy_lc_wsxp4" title="简美风超强储物五斗柜
" target="_blank">沉稳胡桃木色</a></li>
                                <li class="tips"><a href="http://www.meilele.com/category-dougui/goods-294266.html?site_from=sy_lc_wsxp4" title="简美风超强储物五斗柜
" target="_blank">简美风超强储物五斗柜</a></li>
                                <li class="prize"><a href="http://www.meilele.com/category-dougui/goods-294266.html?site_from=sy_lc_wsxp4" title="简美风超强储物五斗柜
" target="_blank">&yen;<span class="JS_async_price" data-goods_id="294266">1660</span></a></li>
                            </ul>
                        </div>
                    </div>
                                                                                                                                                                <div class="floor-bar t5 fl">
                        <a href="http://www.meilele.com/category-zhuangtai/goods-304177.html?site_from=sy_lc_wsxp5" title="北欧风全实木翻盖梳妆台" target="_blank"><img src="http://image.meilele.com/images/blank.gif" alt="" data-tab-src="http://img002.mllres.com/images/201612/1480559412811310061.jpg"></a>
                        <ul>
                            <li class="name"><a href="http://www.meilele.com/category-zhuangtai/goods-304177.html?site_from=sy_lc_wsxp5" title="北欧风全实木翻盖梳妆台" target="_blank">森林系上等白蜡木</a></li>
                            <li class="tips"><a href="http://www.meilele.com/category-zhuangtai/goods-304177.html?site_from=sy_lc_wsxp5" title="北欧风全实木翻盖梳妆台" target="_blank">北欧风全实木翻盖梳妆台</a></li>
                            <li class="prize"><a href="http://www.meilele.com/category-zhuangtai/goods-304177.html?site_from=sy_lc_wsxp5" title="北欧风全实木翻盖梳妆台" target="_blank">&yen;<span class="JS_async_price" data-goods_id="304177">1799</span></a></li>
                        </ul>
                    </div>
                                                                                                                                            <div class="floor-bar t6 fl">
                        <a href="http://www.meilele.com/category-chuangdian/goods-311648.html?site_from=sy_lc_wsxp6" title="软硬两用护脊矫姿床垫" target="_blank"><img src="http://image.meilele.com/images/blank.gif" alt="" data-tab-src="http://img003.mllres.com/images/201702/1487902069021745619.jpg"></a>
                        <ul>
                            <li class="name"><a href="http://www.meilele.com/category-chuangdian/goods-311648.html?site_from=sy_lc_wsxp6" title="软硬两用护脊矫姿床垫" target="_blank">天然乳胶 环保椰棕</a></li>
                            <li class="tips"><a href="http://www.meilele.com/category-chuangdian/goods-311648.html?site_from=sy_lc_wsxp6" title="软硬两用护脊矫姿床垫" target="_blank">软硬两用护脊矫姿床垫</a></li>
                            <li class="prize"><a href="http://www.meilele.com/category-chuangdian/goods-311648.html?site_from=sy_lc_wsxp6" title="软硬两用护脊矫姿床垫" target="_blank">&yen;<span class="JS_async_price" data-goods_id="311648">2599</span></a></li>
                        </ul>
                    </div>
                                                                                                                                            <div class="floor-bar t7 fl">
                        <a href="http://www.meilele.com/category-chuang/goods-323044.html?site_from=sy_lc_wsxp7" title="北欧简约风柚木色双人床" target="_blank"><img src="http://image.meilele.com/images/blank.gif" alt="" data-tab-src="http://image.meilele.com/images/201704/1491011450515099208.jpg"></a>
                        <ul>
                            <li class="name"><a href="http://www.meilele.com/category-chuang/goods-323044.html?site_from=sy_lc_wsxp7" title="北欧简约风柚木色双人床" target="_blank">实木承重更好眠</a></li>
                            <li class="tips"><a href="http://www.meilele.com/category-chuang/goods-323044.html?site_from=sy_lc_wsxp7" title="北欧简约风柚木色双人床" target="_blank">北欧简约风柚木色双人床</a></li>
                            <li class="prize"><a href="http://www.meilele.com/category-chuang/goods-323044.html?site_from=sy_lc_wsxp7" title="北欧简约风柚木色双人床" target="_blank">&yen;<span class="JS_async_price" data-goods_id="323044">849</span></a></li>
                        </ul>
                    </div>
                                                                                                                                            <div class="floor-bar t8 fl">
                        <a href="http://www.meilele.com/category-chuang/goods-316721.html?site_from=sy_lc_wsxp8" title="黄杨木立体雕花真皮床" target="_blank"><img src="http://image.meilele.com/images/blank.gif" alt="" data-tab-src="http://img003.mllres.com/images/201703/1489713155618226030.jpg"></a>
                        <ul>
                            <li class="name"><a href="http://www.meilele.com/category-chuang/goods-316721.html?site_from=sy_lc_wsxp8" title="黄杨木立体雕花真皮床" target="_blank">法式浪漫 轻盈入梦</a></li>
                            <li class="tips"><a href="http://www.meilele.com/category-chuang/goods-316721.html?site_from=sy_lc_wsxp8" title="黄杨木立体雕花真皮床" target="_blank">黄杨木立体雕花真皮床</a></li>
                            <li class="prize"><a href="http://www.meilele.com/category-chuang/goods-316721.html?site_from=sy_lc_wsxp8" title="黄杨木立体雕花真皮床" target="_blank">&yen;<span class="JS_async_price" data-goods_id="316721">7003</span></a></li>
                        </ul>
                    </div>
                                                        </div>
                            </div>
        </div>
    </div>
        <div class="floor default_floor_show">
        <div class="w">
            <div class="floor-header clearfix">
                <h3 class="fl"><a target="_blank" href="/category-keting/?site_from=sy_lc_kt">2F 客厅</a></h3>
                <ul id="JS_floor_nav_2" class="floor-nav fl clearfix">
                    <li class="fl hover" data-index="0">精品推荐</li>
                    <li class="fl" data-index="1">新品上架</li>                </ul>
                <div class="floor-tag fr">
                    <a  href="/category-shafa/?site_from=sy_lc_kt" target="_blank">沙发</a><a  href="/category-chajihebianzhuo/?site_from=sy_lc_kt" target="_blank">茶几</a><a  href="/category-dianshigui/?site_from=sy_lc_kt" target="_blank">电视柜</a><a  href="/category-duoyonggui/?site_from=sy_lc_kt" target="_blank">酒柜</a><a class="last" href="/category-xiegui/?site_from=sy_lc_kt" target="_blank">鞋柜</a>                </div>
            </div>
            <div id="JS_floor_table_2" class="floor-table clearfix">
                <div class="fl floor-left">
                    <div class="aImg">
                        <a href="http://www.meilele.com/category-keting/?site_from=sy_lc_kt" title="客厅精品选购" target="_blank">
                            <p class="brand-title">客厅品位精选</p>
                            <p class="brand-subtitle">坐拥高贵</p>
                            <span class="brand-btn">去看看 <span class="brand-i">></span></span>
                            <img class="floor-img" src="http://image.meilele.com/images/blank.gif" data-src="http://img003.mllres.com/images/201603/1459304958815788127.jpg" alt="">
                        </a>
                    </div>
                    <div class="aTag">
                        <a  href="/keywords/shimushafa/?site_from=sy_lc_kt" target="_blank">实木沙发</a><a  href="/keywords/buyishafa/?site_from=sy_lc_kt" target="_blank">布艺沙发</a><a  href="/keywords/zhenpishafa/?site_from=sy_lc_kt" target="_blank">真皮沙发</a><a  href="/keywords/zhuanjiaoshafa/?site_from=sy_lc_kt" target="_blank">转角沙发</a><a  href="/keywords/oushishafa/?site_from=sy_lc_kt" target="_blank">欧式沙发</a><a  href="/keywords/meishishafa/?site_from=sy_lc_kt" target="_blank">美式沙发</a><a  href="/category-shafa/list-s302/?site_from=sy_lc_kt" target="_blank">中式沙发</a><a  href="/keywords/gongnengshafa/?site_from=sy_lc_kt" target="_blank">功能沙发</a><a  href="/keywords/shimuchaji/?site_from=sy_lc_kt" target="_blank">实木茶几</a><a  href="/keywords/ketingdianshigui/?site_from=sy_lc_kt" target="_blank">客厅地柜</a><a  href="/keywords/jgzsg/?site_from=sy_lc_kt" target="_blank">装饰酒柜</a><a class="last" href="/keywords/ktxgxg/?site_from=sy_lc_kt" target="_blank">玄关鞋柜</a>                    </div>
                    <div class="ad">
                        <a href="http://www.meilele.com/brand-241/?site_from=sy_lc_logo5" title="凯撒豪庭" target="_blank" class=" "><img src="http://image.meilele.com/images/blank.gif" data-src="http://img001.mllres.com/images/201603/1459296104894135378.jpg" alt="凯撒豪庭"></a><a href="http://www.meilele.com/brand-574/?site_from=sy_lc_logo6" title="白金宫殿" target="_blank" class="last "><img src="http://image.meilele.com/images/blank.gif" data-src="http://img004.mllres.com/images/201603/1459296235624822569.jpg" alt="白金宫殿"></a><a href="http://www.meilele.com/brand-550/?site_from=sy_lc_logo7" title="利豪" target="_blank" class=" second"><img src="http://image.meilele.com/images/blank.gif" data-src="http://img001.mllres.com/images/201612/1480896807933100200.jpg" alt="利豪"></a><a href="http://www.meilele.com/category-9999/?site_from=sy_lc_logo8&fl=q&keywords=%E8%93%9D%E9%AA%91" title="蓝骑家居" target="_blank" class="last second"><img src="http://image.meilele.com/images/blank.gif" data-src="http://image.meilele.com/images/201608/1471573487500982622.jpg" alt="蓝骑家居"></a>                    </div>
                </div>
                <div class="floor-right clearfix" data-index="0">
                    <div class="scroll-bar JS_floor_banner fl">
                                                <div class="content">
                            <a href="http://www.meilele.com/category-shafa/goods-278849.html?site_from=sy_lc_ktjp1" target="_blank" title="美式休闲全拆洗布艺沙发">   
                            <div class="content-banner">
                                <span class="txt-l">小户专享精致款</span>
                                <p class="txt-s">美式休闲全拆洗布艺沙发 &yen;<span class="JS_async_price" data-goods_id="278849">4700</span></p>
                            </div>
                            </a>
                        </div>
                                                <div class="content">
                            <a href="http://www.meilele.com/category-shafa/goods-22428.html?site_from=sy_lc_ktjp2" target="_blank" title="尊贵之享进口全真皮沙发">   
                            <div class="content-banner">
                                <span class="txt-l">尊贵之享进口全真皮沙发</span>
                                <p class="txt-s">质感佳•参加团购省5301 &yen;<span class="JS_async_price" data-goods_id="22428">16999</span></p>
                            </div>
                            </a>
                        </div>
                                                <div class="content">
                            <a href="http://www.meilele.com/category-shafa/goods-56558.html?site_from=sy_lc_ktjp3" target="_blank" title="实木框架纯手工雕花沙发">   
                            <div class="content-banner">
                                <span class="txt-l">名匠精雕皮布结合沙发</span>
                                <p class="txt-s">情迷法兰西 参团劲省4800 &yen;<span class="JS_async_price" data-goods_id="56558">18100</span></p>
                            </div>
                            </a>
                        </div>
                                                <div class="nav">
                            <div class="list JS_list_banner">
                                <a href="javascript:;" target="_blank"></a><a href="javascript:;" target="_blank"></a><a href="javascript:;" target="_blank"></a>                            </div>
                        </div>
                        <ul class="JS_ul_banner">
                                                        <li><a href="http://www.meilele.com/category-shafa/goods-278849.html?site_from=sy_lc_ktjp1" target="_blank" title="美式休闲全拆洗布艺沙发"><img src="http://image.meilele.com/images/blank.gif" data-src="http://img004.mllres.com/images/201703/1489707061703359345.jpg" alt="美式休闲全拆洗布艺沙发"/></a></li>
                                                        <li><a href="http://www.meilele.com/category-shafa/goods-22428.html?site_from=sy_lc_ktjp2" target="_blank" title="尊贵之享进口全真皮沙发"><img src="http://image.meilele.com/images/blank.gif" data-src="http://img004.mllres.com/images/201703/1490313160178586189.jpg" alt="尊贵之享进口全真皮沙发"/></a></li>
                                                        <li><a href="http://www.meilele.com/category-shafa/goods-56558.html?site_from=sy_lc_ktjp3" target="_blank" title="实木框架纯手工雕花沙发"><img src="http://image.meilele.com/images/blank.gif" data-src="http://img002.mllres.com/images/201612/1481769272501689192.jpg" alt="实木框架纯手工雕花沙发"/></a></li>
                                                    </ul>
                    </div>
                                                            <div class="floor-bar s1 fl">
                        <a href="http://www.meilele.com/category-duoyonggui/goods-12431.html?site_from=sy_lc_ktjp4" title="通透玻璃五边形单门酒柜

" target="_blank"><img src="http://image.meilele.com/images/blank.gif" alt="" data-src="http://image.meilele.com/images/201703/1489705427842771395.jpg"></a>
                        <ul>
                            <li class="name"><a href="http://www.meilele.com/category-duoyonggui/goods-12431.html?site_from=sy_lc_ktjp4" title="通透玻璃五边形单门酒柜

" target="_blank">角落超强收纳</a></li>
                            <li class="tips"><a href="http://www.meilele.com/category-duoyonggui/goods-12431.html?site_from=sy_lc_ktjp4" title="通透玻璃五边形单门酒柜

" target="_blank">通透玻璃五边形单门酒柜</a></li>
                            <li class="prize"><a href="http://www.meilele.com/category-duoyonggui/goods-12431.html?site_from=sy_lc_ktjp4" title="通透玻璃五边形单门酒柜

" target="_blank">&yen;<span class="JS_async_price" data-goods_id="12431">1880</span></a></li>
                        </ul>
                    </div>
                                                                                                                                            <div class="fl">
                        <div class="floor-bar s2">
                            <a href="http://www.meilele.com/category-shafa/goods-57984.html?site_from=sy_lc_ktjp5" title="地中海转角布艺沙发" target="_blank"><img src="http://image.meilele.com/images/blank.gif" alt="地中海转角布艺沙发" data-src="http://img001.mllres.com/images/201612/1481247900500289719.jpg"></a>
                            <ul>
                                <li class="name"><a href="http://www.meilele.com/category-shafa/goods-57984.html?site_from=sy_lc_ktjp5" title="地中海转角布艺沙发" target="_blank">地中海淡蓝诱惑<span class="activity">500元红包</span></a></li>
                                <li class="tips"><a href="http://www.meilele.com/category-shafa/goods-57984.html?site_from=sy_lc_ktjp5" title="地中海转角布艺沙发" target="_blank">L型转角储物布艺沙发</a></li>
                                <li class="prize"><a href="http://www.meilele.com/category-shafa/goods-57984.html?site_from=sy_lc_ktjp5" title="地中海转角布艺沙发" target="_blank">&yen;<span class="JS_async_price" data-goods_id="57984">8980</span></a></li>
                            </ul>
                        </div>
                    </div>
                                                                                                                        <div class="fl">
                        <div class="floor-bar s2">
                            <a href="http://www.meilele.com/category-dianshigui/goods-79423.html?site_from=sy_lc_ktjp6" title="经典百搭可伸缩电视柜

" target="_blank"><img src="http://image.meilele.com/images/blank.gif" alt="经典百搭可伸缩电视柜

" data-src="http://img004.mllres.com/images/201702/1487294419127812997.jpg"></a>
                            <ul>
                                <li class="name"><a href="http://www.meilele.com/category-dianshigui/goods-79423.html?site_from=sy_lc_ktjp6" title="经典百搭可伸缩电视柜

" target="_blank">简约大气黑白调</a></li>
                                <li class="tips"><a href="http://www.meilele.com/category-dianshigui/goods-79423.html?site_from=sy_lc_ktjp6" title="经典百搭可伸缩电视柜

" target="_blank">经典百搭可伸缩电视柜</a></li>
                                <li class="prize"><a href="http://www.meilele.com/category-dianshigui/goods-79423.html?site_from=sy_lc_ktjp6" title="经典百搭可伸缩电视柜

" target="_blank">&yen;<span class="JS_async_price" data-goods_id="79423">1580</span></a></li>
                            </ul>
                        </div>
                    </div>
                                                                                                                                            <div class="floor-bar s4 fl">
                        <a href="http://www.meilele.com/category-shafa/goods-283798.html?site_from=sy_lc_ktjp7" title="可调节靠背全拆洗绒布沙发" target="_blank"><img src="http://image.meilele.com/images/blank.gif" alt="" data-src="http://img001.mllres.com/images/201702/1486230349784755016.jpg"></a>
                        <ul>
                            <li class="name"><a href="http://www.meilele.com/category-shafa/goods-283798.html?site_from=sy_lc_ktjp7" title="可调节靠背全拆洗绒布沙发" target="_blank">厚实饱满 舒适有型<span class="activity">500元红包</span></a></li>
                            <li class="tips"><a href="http://www.meilele.com/category-shafa/goods-283798.html?site_from=sy_lc_ktjp7" title="可调节靠背全拆洗绒布沙发" target="_blank">可调节靠背全拆洗绒布沙发</a></li>
                            <li class="prize"><a href="http://www.meilele.com/category-shafa/goods-283798.html?site_from=sy_lc_ktjp7" title="可调节靠背全拆洗绒布沙发" target="_blank">&yen;<span class="JS_async_price" data-goods_id="283798">3518</span></a></li>
                        </ul>
                    </div>
                                                                                                                        <div class="floor-bar s5 fl">
                        <a href="http://www.meilele.com/category-shafa/goods-177228.html?site_from=sy_lc_ktjp8" title="实木手工雕花进口布艺沙发" target="_blank"><img src="http://image.meilele.com/images/blank.gif" alt="" data-src="http://img002.mllres.com/images/201703/1490313283863345554.jpg"></a>
                        <ul>
                            <li class="name"><a href="http://www.meilele.com/category-shafa/goods-177228.html?site_from=sy_lc_ktjp8" title="实木手工雕花进口布艺沙发" target="_blank">左右轻松互换<span class="activity">800元红包</span></a></li>
                            <li class="tips"><a href="http://www.meilele.com/category-shafa/goods-177228.html?site_from=sy_lc_ktjp8" title="实木手工雕花进口布艺沙发" target="_blank">实木手工雕花进口布艺沙发</a></li>
                            <li class="prize"><a href="http://www.meilele.com/category-shafa/goods-177228.html?site_from=sy_lc_ktjp8" title="实木手工雕花进口布艺沙发" target="_blank">&yen;<span class="JS_async_price" data-goods_id="177228">7408</span></a></li>
                        </ul>
                    </div>
                                                                                                                        <div class="floor-bar s6 fl">
                        <a href="http://www.meilele.com/category-shafa/goods-39788.html?site_from=sy_lc_ktjp9" title="可调节头枕真皮沙发" target="_blank"><img src="http://image.meilele.com/images/blank.gif" alt="" data-src="http://img004.mllres.com/images/201608/1471559676667643382.jpg"></a>
                        <ul>
                            <li class="name"><a href="http://www.meilele.com/category-shafa/goods-39788.html?site_from=sy_lc_ktjp9" title="可调节头枕真皮沙发" target="_blank">高效释压 一坐钟情<span class="activity">500元红包</span></a></li>
                            <li class="tips"><a href="http://www.meilele.com/category-shafa/goods-39788.html?site_from=sy_lc_ktjp9" title="可调节头枕真皮沙发" target="_blank">可调节头枕真皮沙发</a></li>
                            <li class="prize"><a href="http://www.meilele.com/category-shafa/goods-39788.html?site_from=sy_lc_ktjp9" title="可调节头枕真皮沙发" target="_blank">&yen;<span class="JS_async_price" data-goods_id="39788">8868</span></a></li>
                        </ul>
                    </div>
                                                                                                                        <div class="floor-bar s7 fl">
                        <a href="http://www.meilele.com/category-shafa/goods-93290.html?site_from=sy_lc_ktjp10" title="精致提花刺绣植绒布沙发" target="_blank"><img src="http://image.meilele.com/images/blank.gif" alt="" data-src="http://img002.mllres.com/images/201703/1489705551683828938.jpg"></a>
                        <ul>
                            <li class="name"><a href="http://www.meilele.com/category-shafa/goods-93290.html?site_from=sy_lc_ktjp10" title="精致提花刺绣植绒布沙发" target="_blank">坐拥迷你小欧洲<span class="activity">1500元红包

</span></a></li>
                            <li class="tips"><a href="http://www.meilele.com/category-shafa/goods-93290.html?site_from=sy_lc_ktjp10" title="精致提花刺绣植绒布沙发" target="_blank">精致提花刺绣植绒布沙发</a></li>
                            <li class="prize"><a href="http://www.meilele.com/category-shafa/goods-93290.html?site_from=sy_lc_ktjp10" title="精致提花刺绣植绒布沙发" target="_blank">&yen;<span class="JS_async_price" data-goods_id="93290">8999</span></a></li>
                        </ul>
                    </div>
                                                        </div>
                                <div class="floor-right clearfix" data-index="1" style="display:none">
                                                            <div class="scroll-bar fl">
                        <div class="content">
                            <a href="http://www.meilele.com/category-shafa/goods-321441.html?site_from=sy_lc_ktxp1" target="_blank" title="欧式贵族范橡胶木雕花沙发">   
                                <div class="content-banner">
                                    <span class="txt-l">举手投足皆优雅</span>
                                    <p class="txt-s">欧式贵族范橡胶木雕花沙发 &yen;<span class="JS_async_price" data-goods_id="321441">13950</span></p>
                                </div>
                            </a>
                        </div>
                        <a href="http://www.meilele.com/category-shafa/goods-321441.html?site_from=sy_lc_ktxp1" title="欧式贵族范橡胶木雕花沙发" target="_blank"><img src="http://image.meilele.com/images/blank.gif" alt="欧式贵族范橡胶木雕花沙发" data-tab-src="http://image.meilele.com/images/201704/1491011581253172081.jpg" width="620" height="449"></a>
                    </div>
                                                                                                                                                                <div class="floor-bar s1 fl">
                        <a href="http://www.meilele.com/category-duoyonggui/goods-324966.html?site_from=sy_lc_ktxp2" title="美式复古上等欧洲榉木雕花酒柜" target="_blank"><img src="http://image.meilele.com/images/blank.gif" alt="美式复古上等欧洲榉木雕花酒柜" data-tab-src="http://image.meilele.com/images/201704/1491011679559753993.jpg"></a>
                        <ul>
                            <li class="name"><a href="http://www.meilele.com/category-duoyonggui/goods-324966.html?site_from=sy_lc_ktxp2" title="美式复古上等欧洲榉木雕花酒柜" target="_blank">传世臻品 贵族专享</a></li>
                            <li class="tips"><a href="http://www.meilele.com/category-duoyonggui/goods-324966.html?site_from=sy_lc_ktxp2" title="美式复古上等欧洲榉木雕花酒柜" target="_blank">美式复古上等欧洲榉木雕花酒柜</a></li>
                            <li class="prize"><a href="http://www.meilele.com/category-duoyonggui/goods-324966.html?site_from=sy_lc_ktxp2" title="美式复古上等欧洲榉木雕花酒柜" target="_blank">&yen;<span class="JS_async_price" data-goods_id="324966">19999</span></a></li>
                        </ul>
                    </div>
                                                                                                                                                                <div class="fl">
                        <div class="floor-bar s2">
                            <a href="http://www.meilele.com/category-shafa/goods-318520.html?from=sy_lc_ktxp3" title="现代简约素色布艺沙发" target="_blank"><img src="http://image.meilele.com/images/blank.gif" alt="现代简约素色布艺沙发" data-tab-src="http://img001.mllres.com/images/201704/1491011881645227112.jpg"></a>
                            <ul>
                                <li class="name"><a href="http://www.meilele.com/category-shafa/goods-318520.html?from=sy_lc_ktxp3" title="现代简约素色布艺沙发" target="_blank">灵活多变 随心组合<span class="activity">包邮</span></a></li>
                                <li class="tips"><a href="http://www.meilele.com/category-shafa/goods-318520.html?from=sy_lc_ktxp3" title="现代简约素色布艺沙发" target="_blank">现代简约素色布艺沙发</a></li>
                                <li class="prize"><a href="http://www.meilele.com/category-shafa/goods-318520.html?from=sy_lc_ktxp3" title="现代简约素色布艺沙发" target="_blank">&yen;<span class="JS_async_price" data-goods_id="318520">3360</span></a></li>
                            </ul>
                        </div>
                    </div>
                                                                                                                                            <div class="fl">
                        <div class="floor-bar s2">
                            <a href="http://www.meilele.com/category-dianshigui/goods-316455.html?site_from=sy_lc_ktxp4" title="北欧风上等白蜡木电视柜" target="_blank"><img src="http://image.meilele.com/images/blank.gif" alt="北欧风上等白蜡木电视柜" data-tab-src="http://img004.mllres.com/images/201702/1487526845326643158.jpg"></a>
                            <ul>
                                <li class="name"><a href="http://www.meilele.com/category-dianshigui/goods-316455.html?site_from=sy_lc_ktxp4" title="北欧风上等白蜡木电视柜" target="_blank">简朴大气 坚固耐用</a></li>
                                <li class="tips"><a href="http://www.meilele.com/category-dianshigui/goods-316455.html?site_from=sy_lc_ktxp4" title="北欧风上等白蜡木电视柜" target="_blank">北欧风上等白蜡木电视柜</a></li>
                                <li class="prize"><a href="http://www.meilele.com/category-dianshigui/goods-316455.html?site_from=sy_lc_ktxp4" title="北欧风上等白蜡木电视柜" target="_blank">&yen;<span class="JS_async_price" data-goods_id="316455">1965</span></a></li>
                            </ul>
                        </div>
                    </div>
                                                                                                                                                                <div class="floor-bar t5 fl">
                        <a href="http://www.meilele.com/category-shafa/goods-324431.html?site_from=sy_lc_ktxp5" title="现代风格桉木真皮超强储物沙发" target="_blank"><img src="http://image.meilele.com/images/blank.gif" alt="" data-tab-src="http://img003.mllres.com/images/201703/1489712421263082338.jpg"></a>
                        <ul>
                            <li class="name"><a href="http://www.meilele.com/category-shafa/goods-324431.html?site_from=sy_lc_ktxp5" title="现代风格桉木真皮超强储物沙发" target="_blank">经典之作 豪宅优选</a></li>
                            <li class="tips"><a href="http://www.meilele.com/category-shafa/goods-324431.html?site_from=sy_lc_ktxp5" title="现代风格桉木真皮超强储物沙发" target="_blank">现代风格桉木真皮超强储物沙发</a></li>
                            <li class="prize"><a href="http://www.meilele.com/category-shafa/goods-324431.html?site_from=sy_lc_ktxp5" title="现代风格桉木真皮超强储物沙发" target="_blank">&yen;<span class="JS_async_price" data-goods_id="324431">7800</span></a></li>
                        </ul>
                    </div>
                                                                                                                                            <div class="floor-bar t6 fl">
                        <a href="http://www.meilele.com/category-shafa/goods-323953.html?site_from=sy_lc_ktxp6" title="简美风实木框架棉麻沙发" target="_blank"><img src="http://image.meilele.com/images/blank.gif" alt="" data-tab-src="http://image.meilele.com/images/201704/1491012070951481918.jpg"></a>
                        <ul>
                            <li class="name"><a href="http://www.meilele.com/category-shafa/goods-323953.html?site_from=sy_lc_ktxp6" title="简美风实木框架棉麻沙发" target="_blank">格调复古可储物</a></li>
                            <li class="tips"><a href="http://www.meilele.com/category-shafa/goods-323953.html?site_from=sy_lc_ktxp6" title="简美风实木框架棉麻沙发" target="_blank">简美风实木框架棉麻沙发</a></li>
                            <li class="prize"><a href="http://www.meilele.com/category-shafa/goods-323953.html?site_from=sy_lc_ktxp6" title="简美风实木框架棉麻沙发" target="_blank">&yen;<span class="JS_async_price" data-goods_id="323953">7999</span></a></li>
                        </ul>
                    </div>
                                                                                                                                            <div class="floor-bar t7 fl">
                        <a href="http://www.meilele.com/category-shafa/goods-321368.html?site_from=sy_lc_ktxp7" title="美式橡木珍贵油蜡皮沙发" target="_blank"><img src="http://image.meilele.com/images/blank.gif" alt="" data-tab-src="http://img004.mllres.com/images/201704/1491012192730665114.jpg"></a>
                        <ul>
                            <li class="name"><a href="http://www.meilele.com/category-shafa/goods-321368.html?site_from=sy_lc_ktxp7" title="美式橡木珍贵油蜡皮沙发" target="_blank">从容沉稳 惬意人生<span class="activity">包邮</span></a></li>
                            <li class="tips"><a href="http://www.meilele.com/category-shafa/goods-321368.html?site_from=sy_lc_ktxp7" title="美式橡木珍贵油蜡皮沙发" target="_blank">美式橡木珍贵油蜡皮沙发</a></li>
                            <li class="prize"><a href="http://www.meilele.com/category-shafa/goods-321368.html?site_from=sy_lc_ktxp7" title="美式橡木珍贵油蜡皮沙发" target="_blank">&yen;<span class="JS_async_price" data-goods_id="321368">12800</span></a></li>
                        </ul>
                    </div>
                                                                                                                                            <div class="floor-bar t8 fl">
                        <a href="http://www.meilele.com/category-shafa/goods-324503.html?site_from=sy_lc_ktxp8" title="优质楸木框架可拆洗沙发" target="_blank"><img src="http://image.meilele.com/images/blank.gif" alt="" data-tab-src="http://image.meilele.com/images/201703/1490571173009536494.jpg"></a>
                        <ul>
                            <li class="name"><a href="http://www.meilele.com/category-shafa/goods-324503.html?site_from=sy_lc_ktxp8" title="优质楸木框架可拆洗沙发" target="_blank">岁月静美 坐享良品</a></li>
                            <li class="tips"><a href="http://www.meilele.com/category-shafa/goods-324503.html?site_from=sy_lc_ktxp8" title="优质楸木框架可拆洗沙发" target="_blank">优质楸木框架可拆洗沙发</a></li>
                            <li class="prize"><a href="http://www.meilele.com/category-shafa/goods-324503.html?site_from=sy_lc_ktxp8" title="优质楸木框架可拆洗沙发" target="_blank">&yen;<span class="JS_async_price" data-goods_id="324503">7899</span></a></li>
                        </ul>
                    </div>
                                                        </div>
                            </div>
        </div>
    </div>
        <div class="floor default_floor_show">
        <div class="w">
            <div class="floor-header clearfix">
                <h3 class="fl"><a target="_blank" href="/category-canting/?site_from=sy_lc_ct">3F 餐厅</a></h3>
                <ul id="JS_floor_nav_3" class="floor-nav fl clearfix">
                    <li class="fl hover" data-index="0">精品推荐</li>
                    <li class="fl" data-index="1">新品上架</li>                </ul>
                <div class="floor-tag fr">
                    <a  href="/category-canzhuo/?site_from=sy_lc_ct" target="_blank">餐桌</a><a  href="/category-canyi/?site_from=sy_lc_ct" target="_blank">餐椅</a><a  href="/category-canbiangui/?site_from=sy_lc_ct" target="_blank">餐边柜</a><a class="last" href="/category-cantingtaozhuang/?site_from=sy_lc_ct" target="_blank">餐厅套装</a>                </div>
            </div>
            <div id="JS_floor_table_3" class="floor-table clearfix">
                <div class="fl floor-left">
                    <div class="aImg">
                        <a href="http://www.meilele.com/category-canting/?site_from=sy_lc_ct" title="餐厅精品选购" target="_blank">
                            <p class="brand-title">高颜值餐厅</p>
                            <p class="brand-subtitle">食色生香</p>
                            <span class="brand-btn">去看看 <span class="brand-i">></span></span>
                            <img class="floor-img" src="http://image.meilele.com/images/blank.gif" data-src="http://img003.mllres.com/images/201603/1459305042275603527.jpg" alt="">
                        </a>
                    </div>
                    <div class="aTag">
                        <a  href="/keywords/zhediezhuoyi/?site_from=sy_lc_ct" target="_blank">折叠餐桌</a><a  href="/keywords/canzhuoyizuhe/?site_from=sy_lc_ct" target="_blank">桌椅组合</a><a  href="/keywords/changcanzhuo/?site_from=sy_lc_ct" target="_blank">长餐桌</a><a  href="/keywords/yuancanzhuo/?site_from=sy_lc_ct" target="_blank">圆餐桌</a><a  href="/keywords/trdlscz/?site_from=sy_lc_ct" target="_blank">大理石餐桌</a><a  href="/keywords/shimucanzhuocanyi/?site_from=sy_lc_ct" target="_blank">实木餐桌</a><a  href="/keywords/dzhczy/?site_from=sy_lc_ct" target="_blank">地中海餐桌</a><a  href="/keywords/xiandaicanzhuoyi/?site_from=sy_lc_ct" target="_blank">现代餐桌</a><a  href="/keywords/wufushoucanyi/?site_from=sy_lc_ct" target="_blank">无扶手椅</a><a  href="/keywords/fushoucanyi/?site_from=sy_lc_ct" target="_blank">扶手椅</a><a class="last" href="/keywords/meishicanbiangui/?site_from=sy_lc_ct" target="_blank">美式餐边柜</a>                    </div>
                    <div class="ad">
                        <a href="http://www.meilele.com/brand-283/?site_from=sy_lc_logo9" title="木木原" target="_blank" class=" "><img src="http://image.meilele.com/images/blank.gif" data-src="http://img001.mllres.com/images/201603/1459296784831463072.jpg" alt="木木原"></a><a href="http://www.meilele.com/brand-267/?site_from=sy_lc_logo10" title="蒂美悦" target="_blank" class="last "><img src="http://image.meilele.com/images/blank.gif" data-src="http://img001.mllres.com/images/201603/1459296895221488600.jpg" alt="蒂美悦"></a><a href="http://www.meilele.com/brand-683/?site_from=sy_lc_logo11" title="韩木居" target="_blank" class=" second"><img src="http://image.meilele.com/images/blank.gif" data-src="http://img003.mllres.com/images/201603/1459296956898221514.jpg" alt="韩木居"></a><a href="http://www.meilele.com/brand-1055/?site_from=sy_lc_logo12" title="百合馨香" target="_blank" class="last second"><img src="http://image.meilele.com/images/blank.gif" data-src="http://img004.mllres.com/images/201603/1459297006105303535.jpg" alt="百合馨香"></a>                    </div>
                </div>
                <div class="floor-right clearfix" data-index="0">
                    <div class="scroll-bar JS_floor_banner fl">
                                                <div class="content">
                            <a href="http://www.meilele.com/category-cantingtaozhuang/goods-162745.html?site_from=sy_lc_ctjp1" target="_blank" title="玫瑰雕花描银餐厅套装


">   
                            <div class="content-banner">
                                <span class="txt-l">玫瑰雕花描银餐厅套装</span>
                                <p class="txt-s">品艺术盛宴 红包省800 &yen;<span class="JS_async_price" data-goods_id="162745">6407</span></p>
                            </div>
                            </a>
                        </div>
                                                <div class="content">
                            <a href="http://www.meilele.com/category-cantingtaozhuang/goods-26662.html?site_from=sy_lc_ctjp2" target="_blank" title="美式古典转盘圆桌套装

">   
                            <div class="content-banner">
                                <span class="txt-l">名流奢华转盘圆桌套装</span>
                                <p class="txt-s">稳重霸气 参团特省2581 &yen;<span class="JS_async_price" data-goods_id="26662">9999</span></p>
                            </div>
                            </a>
                        </div>
                                                <div class="content">
                            <a href="http://www.meilele.com/category-cantingtaozhuang/goods-17382.html?site_from=sy_lc_ctjp3" target="_blank" title="实用带抽田园餐厅套装">   
                            <div class="content-banner">
                                <span class="txt-l">实用带抽田园餐厅套装</span>
                                <p class="txt-s">温馨浪漫 参团省726 &yen;<span class="JS_async_price" data-goods_id="17382">3599</span></p>
                            </div>
                            </a>
                        </div>
                                                <div class="nav">
                            <div class="list JS_list_banner">
                                <a href="javascript:;" target="_blank"></a><a href="javascript:;" target="_blank"></a><a href="javascript:;" target="_blank"></a>                            </div>
                        </div>
                        <ul class="JS_ul_banner">
                                                        <li><a href="http://www.meilele.com/category-cantingtaozhuang/goods-162745.html?site_from=sy_lc_ctjp1" target="_blank" title="玫瑰雕花描银餐厅套装


"><img src="http://image.meilele.com/images/blank.gif" data-src="http://img001.mllres.com/images/201701/1484246760786484244.jpg" alt="玫瑰雕花描银餐厅套装


"/></a></li>
                                                        <li><a href="http://www.meilele.com/category-cantingtaozhuang/goods-26662.html?site_from=sy_lc_ctjp2" target="_blank" title="美式古典转盘圆桌套装

"><img src="http://image.meilele.com/images/blank.gif" data-src="http://img004.mllres.com/images/201702/1486231163011921612.jpg" alt="美式古典转盘圆桌套装

"/></a></li>
                                                        <li><a href="http://www.meilele.com/category-cantingtaozhuang/goods-17382.html?site_from=sy_lc_ctjp3" target="_blank" title="实用带抽田园餐厅套装"><img src="http://image.meilele.com/images/blank.gif" data-src="http://img002.mllres.com/images/201703/1489707624216601616.jpg" alt="实用带抽田园餐厅套装"/></a></li>
                                                    </ul>
                    </div>
                                                            <div class="floor-bar s1 fl">
                        <a href="http://www.meilele.com/category-canzhuo/goods-21312.html?site_from=sy_lc_ctjp4" title="原味美式古典高档餐边柜" target="_blank"><img src="http://image.meilele.com/images/blank.gif" alt="" data-src="http://img003.mllres.com/images/201609/1472772875615728786.jpg"></a>
                        <ul>
                            <li class="name"><a href="http://www.meilele.com/category-canzhuo/goods-21312.html?site_from=sy_lc_ctjp4" title="原味美式古典高档餐边柜" target="_blank">秀出不凡气度</a></li>
                            <li class="tips"><a href="http://www.meilele.com/category-canzhuo/goods-21312.html?site_from=sy_lc_ctjp4" title="原味美式古典高档餐边柜" target="_blank">原味美式古典高档餐边柜</a></li>
                            <li class="prize"><a href="http://www.meilele.com/category-canzhuo/goods-21312.html?site_from=sy_lc_ctjp4" title="原味美式古典高档餐边柜" target="_blank">&yen;<span class="JS_async_price" data-goods_id="21312">4760</span></a></li>
                        </ul>
                    </div>
                                                                                                                                            <div class="fl">
                        <div class="floor-bar s2">
                            <a href="http://www.meilele.com/category-cantingtaozhuang/goods-106901.html?site_from=sy_lc_ctjp5" title="带旋转托盘圆桌餐厅套装" target="_blank"><img src="http://image.meilele.com/images/blank.gif" alt="带旋转托盘圆桌餐厅套装" data-src="http://img002.mllres.com/images/201703/1489707503130712765.jpg"></a>
                            <ul>
                                <li class="name"><a href="http://www.meilele.com/category-cantingtaozhuang/goods-106901.html?site_from=sy_lc_ctjp5" title="带旋转托盘圆桌餐厅套装" target="_blank">双层大理石优质环保<span class="activity">800元红包</span></a></li>
                                <li class="tips"><a href="http://www.meilele.com/category-cantingtaozhuang/goods-106901.html?site_from=sy_lc_ctjp5" title="带旋转托盘圆桌餐厅套装" target="_blank">带旋转托盘圆桌餐厅套装</a></li>
                                <li class="prize"><a href="http://www.meilele.com/category-cantingtaozhuang/goods-106901.html?site_from=sy_lc_ctjp5" title="带旋转托盘圆桌餐厅套装" target="_blank">&yen;<span class="JS_async_price" data-goods_id="106901">5812</span></a></li>
                            </ul>
                        </div>
                    </div>
                                                                                                                        <div class="fl">
                        <div class="floor-bar s2">
                            <a href="http://www.meilele.com/category-cantingtaozhuang/goods-41104.html?site_from=sy_lc_ctjp6" title="地中海橡胶木餐厅5件套" target="_blank"><img src="http://image.meilele.com/images/blank.gif" alt="地中海橡胶木餐厅5件套" data-src="http://image.meilele.com/images/201702/1486951841137033442.jpg"></a>
                            <ul>
                                <li class="name"><a href="http://www.meilele.com/category-cantingtaozhuang/goods-41104.html?site_from=sy_lc_ctjp6" title="地中海橡胶木餐厅5件套" target="_blank">S型脚别致优雅<span class="activity">800元红包</span></a></li>
                                <li class="tips"><a href="http://www.meilele.com/category-cantingtaozhuang/goods-41104.html?site_from=sy_lc_ctjp6" title="地中海橡胶木餐厅5件套" target="_blank">地中海橡胶木餐厅5件套</a></li>
                                <li class="prize"><a href="http://www.meilele.com/category-cantingtaozhuang/goods-41104.html?site_from=sy_lc_ctjp6" title="地中海橡胶木餐厅5件套" target="_blank">&yen;<span class="JS_async_price" data-goods_id="41104">3590</span></a></li>
                            </ul>
                        </div>
                    </div>
                                                                                                                                            <div class="floor-bar s4 fl">
                        <a href="http://www.meilele.com/category-cantingtaozhuang/goods-19011.html?site_from=sy_lc_ctjp7" title="精美罗马柱脚纯色餐桌椅" target="_blank"><img src="http://image.meilele.com/images/blank.gif" alt="" data-src="http://image.meilele.com/images/201703/1489705644244135345.jpg"></a>
                        <ul>
                            <li class="name"><a href="http://www.meilele.com/category-cantingtaozhuang/goods-19011.html?site_from=sy_lc_ctjp7" title="精美罗马柱脚纯色餐桌椅" target="_blank">细品英式优雅<span class="activity">500元红包</span></a></li>
                            <li class="tips"><a href="http://www.meilele.com/category-cantingtaozhuang/goods-19011.html?site_from=sy_lc_ctjp7" title="精美罗马柱脚纯色餐桌椅" target="_blank">精美罗马柱脚纯色餐桌椅</a></li>
                            <li class="prize"><a href="http://www.meilele.com/category-cantingtaozhuang/goods-19011.html?site_from=sy_lc_ctjp7" title="精美罗马柱脚纯色餐桌椅" target="_blank">&yen;<span class="JS_async_price" data-goods_id="19011">4230</span></a></li>
                        </ul>
                    </div>
                                                                                                                        <div class="floor-bar s5 fl">
                        <a href="http://www.meilele.com/category-canbiangui/goods-15935.html?site_from=sy_lc_ctjp8" title="韩式分格大容餐边柜" target="_blank"><img src="http://image.meilele.com/images/blank.gif" alt="" data-src="http://image.meilele.com/images/201610/1477621377196775538.jpg"></a>
                        <ul>
                            <li class="name"><a href="http://www.meilele.com/category-canbiangui/goods-15935.html?site_from=sy_lc_ctjp8" title="韩式分格大容餐边柜" target="_blank">温馨用餐时光</a></li>
                            <li class="tips"><a href="http://www.meilele.com/category-canbiangui/goods-15935.html?site_from=sy_lc_ctjp8" title="韩式分格大容餐边柜" target="_blank">韩式分格大容餐边柜</a></li>
                            <li class="prize"><a href="http://www.meilele.com/category-canbiangui/goods-15935.html?site_from=sy_lc_ctjp8" title="韩式分格大容餐边柜" target="_blank">&yen;<span class="JS_async_price" data-goods_id="15935">1389</span></a></li>
                        </ul>
                    </div>
                                                                                                                        <div class="floor-bar s6 fl">
                        <a href="http://www.meilele.com/category-cantingtaozhuang/goods-41606.html?site_from=sy_lc_ctjp9" title="进口白橡木臻品餐厅套装" target="_blank"><img src="http://image.meilele.com/images/blank.gif" alt="" data-src="http://image.meilele.com/images/201702/1487895666601096875.jpg"></a>
                        <ul>
                            <li class="name"><a href="http://www.meilele.com/category-cantingtaozhuang/goods-41606.html?site_from=sy_lc_ctjp9" title="进口白橡木臻品餐厅套装" target="_blank">古朴清雅品本味<span class="activity">800元红包</span></a></li>
                            <li class="tips"><a href="http://www.meilele.com/category-cantingtaozhuang/goods-41606.html?site_from=sy_lc_ctjp9" title="进口白橡木臻品餐厅套装" target="_blank">进口白橡木臻品餐厅套装</a></li>
                            <li class="prize"><a href="http://www.meilele.com/category-cantingtaozhuang/goods-41606.html?site_from=sy_lc_ctjp9" title="进口白橡木臻品餐厅套装" target="_blank">&yen;<span class="JS_async_price" data-goods_id="41606">5520</span></a></li>
                        </ul>
                    </div>
                                                                                                                        <div class="floor-bar s7 fl">
                        <a href="http://www.meilele.com/category-cantingtaozhuang/goods-22319.html?site_from=sy_lc_ctjp10" title="美式古典实木餐厅套装
" target="_blank"><img src="http://image.meilele.com/images/blank.gif" alt="" data-src="http://img001.mllres.com/images/201703/1490313584321605245.jpg"></a>
                        <ul>
                            <li class="name"><a href="http://www.meilele.com/category-cantingtaozhuang/goods-22319.html?site_from=sy_lc_ctjp10" title="美式古典实木餐厅套装
" target="_blank">沉淀岁月精华</a></li>
                            <li class="tips"><a href="http://www.meilele.com/category-cantingtaozhuang/goods-22319.html?site_from=sy_lc_ctjp10" title="美式古典实木餐厅套装
" target="_blank">美式古典实木餐厅套装</a></li>
                            <li class="prize"><a href="http://www.meilele.com/category-cantingtaozhuang/goods-22319.html?site_from=sy_lc_ctjp10" title="美式古典实木餐厅套装
" target="_blank">&yen;<span class="JS_async_price" data-goods_id="22319">10046</span></a></li>
                        </ul>
                    </div>
                                                        </div>
                                <div class="floor-right clearfix" data-index="1" style="display:none">
                                                            <div class="scroll-bar fl">
                        <div class="content">
                            <a href="http://www.meilele.com/category-cantingtaozhuang/goods-288542.html?site_from=sy_lc_ctxp1" target="_blank" title="双色精选实木餐厅套装">   
                                <div class="content-banner">
                                    <span class="txt-l">异国纯美风情</span>
                                    <p class="txt-s">双色精选实木餐厅套装 &yen;<span class="JS_async_price" data-goods_id="288542">2599</span></p>
                                </div>
                            </a>
                        </div>
                        <a href="http://www.meilele.com/category-cantingtaozhuang/goods-288542.html?site_from=sy_lc_ctxp1" title="双色精选实木餐厅套装" target="_blank"><img src="http://image.meilele.com/images/blank.gif" alt="双色精选实木餐厅套装" data-tab-src="http://image.meilele.com/images/201612/1480555521012281856.jpg" width="620" height="449"></a>
                    </div>
                                                                                                                                                                <div class="floor-bar s1 fl">
                        <a href="http://www.meilele.com/category-canzhuo/goods-309524.html?site_from=sy_lc_ctxp2" title="简美风金丝黄杨木餐桌" target="_blank"><img src="http://image.meilele.com/images/blank.gif" alt="简美风金丝黄杨木餐桌" data-tab-src="http://image.meilele.com/images/201701/1483376815819243755.jpg"></a>
                        <ul>
                            <li class="name"><a href="http://www.meilele.com/category-canzhuo/goods-309524.html?site_from=sy_lc_ctxp2" title="简美风金丝黄杨木餐桌" target="_blank">坚实承重罗马柱</a></li>
                            <li class="tips"><a href="http://www.meilele.com/category-canzhuo/goods-309524.html?site_from=sy_lc_ctxp2" title="简美风金丝黄杨木餐桌" target="_blank">简美风金丝黄杨木餐桌</a></li>
                            <li class="prize"><a href="http://www.meilele.com/category-canzhuo/goods-309524.html?site_from=sy_lc_ctxp2" title="简美风金丝黄杨木餐桌" target="_blank">&yen;<span class="JS_async_price" data-goods_id="309524">4430</span></a></li>
                        </ul>
                    </div>
                                                                                                                                                                <div class="fl">
                        <div class="floor-bar s2">
                            <a href="http://www.meilele.com/category-canzhuo/goods-315482.html?site_from=sy_lc_ctxp3" title="北欧风实木双色长餐桌" target="_blank"><img src="http://image.meilele.com/images/blank.gif" alt="北欧风实木双色长餐桌" data-tab-src="http://image.meilele.com/images/201702/1487527013522705147.jpg"></a>
                            <ul>
                                <li class="name"><a href="http://www.meilele.com/category-canzhuo/goods-315482.html?site_from=sy_lc_ctxp3" title="北欧风实木双色长餐桌" target="_blank">清新文艺 素净自然</a></li>
                                <li class="tips"><a href="http://www.meilele.com/category-canzhuo/goods-315482.html?site_from=sy_lc_ctxp3" title="北欧风实木双色长餐桌" target="_blank">北欧风实木双色长餐桌</a></li>
                                <li class="prize"><a href="http://www.meilele.com/category-canzhuo/goods-315482.html?site_from=sy_lc_ctxp3" title="北欧风实木双色长餐桌" target="_blank">&yen;<span class="JS_async_price" data-goods_id="315482">1537</span></a></li>
                            </ul>
                        </div>
                    </div>
                                                                                                                                            <div class="fl">
                        <div class="floor-bar s2">
                            <a href="http://www.meilele.com/category-canzhuo/goods-321243.html?site_from=sy_lc_ctxp4" title="北欧风简洁造型胡桃色餐桌" target="_blank"><img src="http://image.meilele.com/images/blank.gif" alt="北欧风简洁造型胡桃色餐桌" data-tab-src="http://img002.mllres.com/images/201703/1489712306131173828.jpg"></a>
                            <ul>
                                <li class="name"><a href="http://www.meilele.com/category-canzhuo/goods-321243.html?site_from=sy_lc_ctxp4" title="北欧风简洁造型胡桃色餐桌" target="_blank">耐高温火烧石桌面</a></li>
                                <li class="tips"><a href="http://www.meilele.com/category-canzhuo/goods-321243.html?site_from=sy_lc_ctxp4" title="北欧风简洁造型胡桃色餐桌" target="_blank">北欧风简洁造型胡桃色餐桌</a></li>
                                <li class="prize"><a href="http://www.meilele.com/category-canzhuo/goods-321243.html?site_from=sy_lc_ctxp4" title="北欧风简洁造型胡桃色餐桌" target="_blank">&yen;<span class="JS_async_price" data-goods_id="321243">1679</span></a></li>
                            </ul>
                        </div>
                    </div>
                                                                                                                                                                <div class="floor-bar t5 fl">
                        <a href="http://www.meilele.com/category-canzhuo/goods-304187.html?site_from=sy_lc_ctxp5" title="清新北欧白蜡木1.5米餐桌" target="_blank"><img src="http://image.meilele.com/images/blank.gif" alt="" data-tab-src="http://img004.mllres.com/images/201703/1489712013276074021.jpg"></a>
                        <ul>
                            <li class="name"><a href="http://www.meilele.com/category-canzhuo/goods-304187.html?site_from=sy_lc_ctxp5" title="清新北欧白蜡木1.5米餐桌" target="_blank">质朴原材享本味</a></li>
                            <li class="tips"><a href="http://www.meilele.com/category-canzhuo/goods-304187.html?site_from=sy_lc_ctxp5" title="清新北欧白蜡木1.5米餐桌" target="_blank">清新北欧白蜡木1.5米餐桌</a></li>
                            <li class="prize"><a href="http://www.meilele.com/category-canzhuo/goods-304187.html?site_from=sy_lc_ctxp5" title="清新北欧白蜡木1.5米餐桌" target="_blank">&yen;<span class="JS_async_price" data-goods_id="304187">2690</span></a></li>
                        </ul>
                    </div>
                                                                                                                                            <div class="floor-bar t6 fl">
                        <a href="http://www.meilele.com/category-cantingtaozhuang/goods-288558.html?site_from=sy_lc_ctxp6" title="北美进口红橡木餐厅套装" target="_blank"><img src="http://image.meilele.com/images/blank.gif" alt="" data-tab-src="http://img002.mllres.com/images/201612/1480555247153717163.jpg"></a>
                        <ul>
                            <li class="name"><a href="http://www.meilele.com/category-cantingtaozhuang/goods-288558.html?site_from=sy_lc_ctxp6" title="北美进口红橡木餐厅套装" target="_blank">极简北欧设计理念<span class="activity">包邮</span></a></li>
                            <li class="tips"><a href="http://www.meilele.com/category-cantingtaozhuang/goods-288558.html?site_from=sy_lc_ctxp6" title="北美进口红橡木餐厅套装" target="_blank">北美进口红橡木餐厅套装</a></li>
                            <li class="prize"><a href="http://www.meilele.com/category-cantingtaozhuang/goods-288558.html?site_from=sy_lc_ctxp6" title="北美进口红橡木餐厅套装" target="_blank">&yen;<span class="JS_async_price" data-goods_id="288558">4699</span></a></li>
                        </ul>
                    </div>
                                                                                                                                            <div class="floor-bar t7 fl">
                        <a href="http://www.meilele.com/category-canzhuo/goods-291789.html?site_from=sy_lc_ctxp7" title="现代钢化玻璃钢琴烤漆餐桌" target="_blank"><img src="http://image.meilele.com/images/blank.gif" alt="" data-tab-src="http://img001.mllres.com/images/201701/1483581320103272262.jpg"></a>
                        <ul>
                            <li class="name"><a href="http://www.meilele.com/category-canzhuo/goods-291789.html?site_from=sy_lc_ctxp7" title="现代钢化玻璃钢琴烤漆餐桌" target="_blank">经典黑白双色拼接</a></li>
                            <li class="tips"><a href="http://www.meilele.com/category-canzhuo/goods-291789.html?site_from=sy_lc_ctxp7" title="现代钢化玻璃钢琴烤漆餐桌" target="_blank">现代钢化玻璃钢琴烤漆餐桌</a></li>
                            <li class="prize"><a href="http://www.meilele.com/category-canzhuo/goods-291789.html?site_from=sy_lc_ctxp7" title="现代钢化玻璃钢琴烤漆餐桌" target="_blank">&yen;<span class="JS_async_price" data-goods_id="291789">1540</span></a></li>
                        </ul>
                    </div>
                                                                                                                                            <div class="floor-bar t8 fl">
                        <a href="http://www.meilele.com/category-canbiangui/goods-321246.html?site_from=sy_lc_ctxp8" title="北欧胡桃色耐高温餐边柜" target="_blank"><img src="http://image.meilele.com/images/blank.gif" alt="" data-tab-src="http://img003.mllres.com/images/201703/1489712231638789212.jpg"></a>
                        <ul>
                            <li class="name"><a href="http://www.meilele.com/category-canbiangui/goods-321246.html?site_from=sy_lc_ctxp8" title="北欧胡桃色耐高温餐边柜" target="_blank">至简臻品 稳如坚石</a></li>
                            <li class="tips"><a href="http://www.meilele.com/category-canbiangui/goods-321246.html?site_from=sy_lc_ctxp8" title="北欧胡桃色耐高温餐边柜" target="_blank">北欧胡桃色耐高温餐边柜</a></li>
                            <li class="prize"><a href="http://www.meilele.com/category-canbiangui/goods-321246.html?site_from=sy_lc_ctxp8" title="北欧胡桃色耐高温餐边柜" target="_blank">&yen;<span class="JS_async_price" data-goods_id="321246">2399</span></a></li>
                        </ul>
                    </div>
                                                        </div>
                            </div>
        </div>
    </div>
        <div class="floor default_floor_show">
        <div class="w">
            <div class="floor-header clearfix">
                <h3 class="fl"><a target="_blank" href="/category-shufang/?site_from=sy_lc_sf">4F 书房</a></h3>
                <ul id="JS_floor_nav_4" class="floor-nav fl clearfix">
                    <li class="fl hover" data-index="0">精品推荐</li>
                                    </ul>
                <div class="floor-tag fr">
                    <a  href="/category-shuzhuogongzuotai/?site_from=sy_lc_sf" target="_blank">书桌</a><a  href="/category-gongzuoyi/?site_from=sy_lc_sf" target="_blank">书椅</a><a  href="/category-shugui/?site_from=sy_lc_sf" target="_blank">书柜</a><a class="last" href="/category-shufangtaozhuang/?site_from=sy_lc_sf" target="_blank">书房套装</a>                </div>
            </div>
            <div id="JS_floor_table_4" class="floor-table clearfix">
                <div class="fl floor-left">
                    <div class="aImg">
                        <a href="http://www.meilele.com/category-shufang/?site_from=sy_lc_sf" title="书房精品选购" target="_blank">
                            <p class="brand-title">我们文化圈</p>
                            <p class="brand-subtitle">书韵悠远</p>
                            <span class="brand-btn">去看看 <span class="brand-i">></span></span>
                            <img class="floor-img" src="http://image.meilele.com/images/blank.gif" data-src="http://img002.mllres.com/images/201603/1459305140336522584.jpg" alt="">
                        </a>
                    </div>
                    <div class="aTag">
                        <a  href="/keywords/shimushuzhuo/?site_from=sy_lc_sf" target="_blank">实木书桌</a><a  href="/keywords/zhongshishufangjiaju/?site_from=sy_lc_sf" target="_blank">中式书桌</a><a  href="/keywords/tianyuanshufangjiaju/?site_from=sy_lc_sf" target="_blank">田园书桌</a><a  href="/keywords/bangongzhuo/?site_from=sy_lc_sf" target="_blank">办公桌</a><a  href="/keywords/diannaozhuo/?site_from=sy_lc_sf" target="_blank">电脑桌</a><a  href="/keywords/xueshengshuzhuo/?site_from=sy_lc_sf" target="_blank">学生书桌</a><a  href="/keywords/sanmenshugui/?site_from=sy_lc_sf" target="_blank">三门书柜</a><a  href="/keywords/simenshugui/?site_from=sy_lc_sf" target="_blank">四门书柜</a><a  href="/keywords/oushishugui/?site_from=sy_lc_sf" target="_blank">欧式书柜</a><a  href="/keywords/diannaoyi/?site_from=sy_lc_sf" target="_blank">电脑椅</a><a  href="/keywords/bangongzhuanyi/?site_from=sy_lc_sf" target="_blank">办公转椅</a><a class="last" href="/keywords/shuchu/?site_from=sy_lc_sf" target="_blank">书橱</a>                    </div>
                    <div class="ad">
                        <a href="http://www.meilele.com/brand-601/?site_from=sy_lc_logo13" title="苏美尔" target="_blank" class=" "><img src="http://image.meilele.com/images/blank.gif" data-src="http://img002.mllres.com/images/201612/1481494631223082027.jpg" alt="苏美尔"></a><a href="http://www.meilele.com/brand-1149/?site_from=sy_lc_logo14" title="阳光海岸" target="_blank" class="last "><img src="http://image.meilele.com/images/blank.gif" data-src="http://img001.mllres.com/images/201603/1459297125006662573.jpg" alt="阳光海岸"></a><a href="http://www.meilele.com/brand-1177/?site_from=sy_lc_logo15" title="达美风情" target="_blank" class=" second"><img src="http://image.meilele.com/images/blank.gif" data-src="http://img003.mllres.com/images/201603/1459297176491147058.jpg" alt="达美风情"></a><a href="http://www.meilele.com/brand-227/?site_from=sy_lc_logo16" title="帝匠家具" target="_blank" class="last second"><img src="http://image.meilele.com/images/blank.gif" data-src="http://image.meilele.com/images/201603/1459297231393087739.jpg" alt="帝匠家具"></a>                    </div>
                </div>
                <div class="floor-right clearfix" data-index="0">
                    <div class="scroll-bar JS_floor_banner fl">
                                                <div class="content">
                            <a href="http://www.meilele.com/category-shuzhuogongzuotai/goods-23242.html?site_from=sy_lc_sfjp1" target="_blank" title="美式古典精致雕花书桌

">   
                            <div class="content-banner">
                                <span class="txt-l">宽敞大气 总裁必备</span>
                                <p class="txt-s">美式古典精致雕花书桌 &yen;<span class="JS_async_price" data-goods_id="23242">3940</span></p>
                            </div>
                            </a>
                        </div>
                                                <div class="content">
                            <a href="http://www.meilele.com/category-shuzhuogongzuotai/goods-145086.html?site_from=sy_lc_sfjp2" target="_blank" title="心形拱门超强储物书台">   
                            <div class="content-banner">
                                <span class="txt-l">心形拱门优美典雅</span>
                                <p class="txt-s">圆滑边柱超强储物书台 &yen;<span class="JS_async_price" data-goods_id="145086">2068</span></p>
                            </div>
                            </a>
                        </div>
                                                <div class="content">
                            <a href="http://www.meilele.com/category-shugui/goods-20631.html?site_from=sy_lc_sfjp3" target="_blank" title="霸气豪宅款美式四门书柜
">   
                            <div class="content-banner">
                                <span class="txt-l">收纳空间合理分割</span>
                                <p class="txt-s">霸气豪宅款美式四门书柜 &yen;<span class="JS_async_price" data-goods_id="20631">9320</span></p>
                            </div>
                            </a>
                        </div>
                                                <div class="nav">
                            <div class="list JS_list_banner">
                                <a href="javascript:;" target="_blank"></a><a href="javascript:;" target="_blank"></a><a href="javascript:;" target="_blank"></a>                            </div>
                        </div>
                        <ul class="JS_ul_banner">
                                                        <li><a href="http://www.meilele.com/category-shuzhuogongzuotai/goods-23242.html?site_from=sy_lc_sfjp1" target="_blank" title="美式古典精致雕花书桌

"><img src="http://image.meilele.com/images/blank.gif" data-src="http://img002.mllres.com/images/201702/1487294662855156424.jpg" alt="美式古典精致雕花书桌

"/></a></li>
                                                        <li><a href="http://www.meilele.com/category-shuzhuogongzuotai/goods-145086.html?site_from=sy_lc_sfjp2" target="_blank" title="心形拱门超强储物书台"><img src="http://image.meilele.com/images/blank.gif" data-src="http://img004.mllres.com/images/201611/1479090954453490245.jpg" alt="心形拱门超强储物书台"/></a></li>
                                                        <li><a href="http://www.meilele.com/category-shugui/goods-20631.html?site_from=sy_lc_sfjp3" target="_blank" title="霸气豪宅款美式四门书柜
"><img src="http://image.meilele.com/images/blank.gif" data-src="http://img001.mllres.com/images/201702/1486944091512408134.jpg" alt="霸气豪宅款美式四门书柜
"/></a></li>
                                                    </ul>
                    </div>
                                                            <div class="floor-bar s1 fl">
                        <a href="http://www.meilele.com/category-shugui/goods-12552.html?site_from=sy_lc_sfjp4" title="清新女神款大容书柜" target="_blank"><img src="http://image.meilele.com/images/blank.gif" alt="" data-src="http://image.meilele.com/images/201703/1489705732184653938.jpg"></a>
                        <ul>
                            <li class="name"><a href="http://www.meilele.com/category-shugui/goods-12552.html?site_from=sy_lc_sfjp4" title="清新女神款大容书柜" target="_blank">柔美书卷气质</a></li>
                            <li class="tips"><a href="http://www.meilele.com/category-shugui/goods-12552.html?site_from=sy_lc_sfjp4" title="清新女神款大容书柜" target="_blank">清新女神款大容书柜</a></li>
                            <li class="prize"><a href="http://www.meilele.com/category-shugui/goods-12552.html?site_from=sy_lc_sfjp4" title="清新女神款大容书柜" target="_blank">&yen;<span class="JS_async_price" data-goods_id="12552">3520</span></a></li>
                        </ul>
                    </div>
                                                                                                                                            <div class="fl">
                        <div class="floor-bar s2">
                            <a href="http://www.meilele.com/category-shuzhuogongzuotai/goods-32146.html?site_from=sy_lc_sfjp5" title="创意旋转书台" target="_blank"><img src="http://image.meilele.com/images/blank.gif" alt="创意旋转书台" data-src="http://img004.mllres.com/images/201610/1476674785708222177.jpg"></a>
                            <ul>
                                <li class="name"><a href="http://www.meilele.com/category-shuzhuogongzuotai/goods-32146.html?site_from=sy_lc_sfjp5" title="创意旋转书台" target="_blank">打造空间无死角</a></li>
                                <li class="tips"><a href="http://www.meilele.com/category-shuzhuogongzuotai/goods-32146.html?site_from=sy_lc_sfjp5" title="创意旋转书台" target="_blank">360°创意旋转个性书桌</a></li>
                                <li class="prize"><a href="http://www.meilele.com/category-shuzhuogongzuotai/goods-32146.html?site_from=sy_lc_sfjp5" title="创意旋转书台" target="_blank">&yen;<span class="JS_async_price" data-goods_id="32146">999</span></a></li>
                            </ul>
                        </div>
                    </div>
                                                                                                                        <div class="fl">
                        <div class="floor-bar s2">
                            <a href="http://www.meilele.com/category-shuzhuogongzuotai/goods-20406.html?site_from=sy_lc_sfjp6" title="手工描银实用五抽书桌

" target="_blank"><img src="http://image.meilele.com/images/blank.gif" alt="手工描银实用五抽书桌

" data-src="http://img004.mllres.com/images/201703/1489705820798478571.jpg"></a>
                            <ul>
                                <li class="name"><a href="http://www.meilele.com/category-shuzhuogongzuotai/goods-20406.html?site_from=sy_lc_sfjp6" title="手工描银实用五抽书桌

" target="_blank">法式典雅书香</a></li>
                                <li class="tips"><a href="http://www.meilele.com/category-shuzhuogongzuotai/goods-20406.html?site_from=sy_lc_sfjp6" title="手工描银实用五抽书桌

" target="_blank">手工描银实用五抽书桌</a></li>
                                <li class="prize"><a href="http://www.meilele.com/category-shuzhuogongzuotai/goods-20406.html?site_from=sy_lc_sfjp6" title="手工描银实用五抽书桌

" target="_blank">&yen;<span class="JS_async_price" data-goods_id="20406">3275</span></a></li>
                            </ul>
                        </div>
                    </div>
                                                                                                                                            <div class="floor-bar s4 fl">
                        <a href="http://www.meilele.com/category-shugui/goods-32147.html?site_from=sy_lc_sfjp7" title="现代板式书柜组合

" target="_blank"><img src="http://image.meilele.com/images/blank.gif" alt="" data-src="http://image.meilele.com/images/201702/1486944191151275853.jpg"></a>
                        <ul>
                            <li class="name"><a href="http://www.meilele.com/category-shugui/goods-32147.html?site_from=sy_lc_sfjp7" title="现代板式书柜组合

" target="_blank">小巧实用</a></li>
                            <li class="tips"><a href="http://www.meilele.com/category-shugui/goods-32147.html?site_from=sy_lc_sfjp7" title="现代板式书柜组合

" target="_blank">现代板式书柜组合</a></li>
                            <li class="prize"><a href="http://www.meilele.com/category-shugui/goods-32147.html?site_from=sy_lc_sfjp7" title="现代板式书柜组合

" target="_blank">&yen;<span class="JS_async_price" data-goods_id="32147">999</span></a></li>
                        </ul>
                    </div>
                                                                                                                        <div class="floor-bar s5 fl">
                        <a href="http://www.meilele.com/category-shuzhuogongzuotai/goods-20630.html?site_from=sy_lc_sfjp8" title="美式五抽书桌" target="_blank"><img src="http://image.meilele.com/images/blank.gif" alt="" data-src="http://image.meilele.com/images/201611/1478539309182388834.jpg"></a>
                        <ul>
                            <li class="name"><a href="http://www.meilele.com/category-shuzhuogongzuotai/goods-20630.html?site_from=sy_lc_sfjp8" title="美式五抽书桌" target="_blank">超大五抽储物</a></li>
                            <li class="tips"><a href="http://www.meilele.com/category-shuzhuogongzuotai/goods-20630.html?site_from=sy_lc_sfjp8" title="美式五抽书桌" target="_blank">古典醇香美式书桌</a></li>
                            <li class="prize"><a href="http://www.meilele.com/category-shuzhuogongzuotai/goods-20630.html?site_from=sy_lc_sfjp8" title="美式五抽书桌" target="_blank">&yen;<span class="JS_async_price" data-goods_id="20630">3729</span></a></li>
                        </ul>
                    </div>
                                                                                                                        <div class="floor-bar s6 fl">
                        <a href="http://www.meilele.com/category-shuzhuogongzuotai/goods-12561.html?site_from=sy_lc_sfjp9" title="小清新电脑桌书柜组合

" target="_blank"><img src="http://image.meilele.com/images/blank.gif" alt="" data-src="http://img004.mllres.com/images/201703/1489111115377335126.jpg"></a>
                        <ul>
                            <li class="name"><a href="http://www.meilele.com/category-shuzhuogongzuotai/goods-12561.html?site_from=sy_lc_sfjp9" title="小清新电脑桌书柜组合

" target="_blank">一物两用多功能</a></li>
                            <li class="tips"><a href="http://www.meilele.com/category-shuzhuogongzuotai/goods-12561.html?site_from=sy_lc_sfjp9" title="小清新电脑桌书柜组合

" target="_blank">小清新电脑桌书柜组合</a></li>
                            <li class="prize"><a href="http://www.meilele.com/category-shuzhuogongzuotai/goods-12561.html?site_from=sy_lc_sfjp9" title="小清新电脑桌书柜组合

" target="_blank">&yen;<span class="JS_async_price" data-goods_id="12561">2100</span></a></li>
                        </ul>
                    </div>
                                                                                                                        <div class="floor-bar s7 fl">
                        <a href="http://www.meilele.com/category-shuzhuogongzuotai/goods-133235.html?site_from=sy_lc_sfjp10" title="简约环保实木书桌" target="_blank"><img src="http://image.meilele.com/images/blank.gif" alt="" data-src="http://img001.mllres.com/images/201612/1481245327876598745.jpg"></a>
                        <ul>
                            <li class="name"><a href="http://www.meilele.com/category-shuzhuogongzuotai/goods-133235.html?site_from=sy_lc_sfjp10" title="简约环保实木书桌" target="_blank">品味诗意生活</a></li>
                            <li class="tips"><a href="http://www.meilele.com/category-shuzhuogongzuotai/goods-133235.html?site_from=sy_lc_sfjp10" title="简约环保实木书桌" target="_blank">简约环保实木书桌</a></li>
                            <li class="prize"><a href="http://www.meilele.com/category-shuzhuogongzuotai/goods-133235.html?site_from=sy_lc_sfjp10" title="简约环保实木书桌" target="_blank">&yen;<span class="JS_async_price" data-goods_id="133235">838</span></a></li>
                        </ul>
                    </div>
                                                        </div>
                            </div>
        </div>
    </div>
        <div class="floor default_floor_show">
        <div class="w">
            <div class="floor-header clearfix">
                <h3 class="fl"><a target="_blank" href="/category-ertongfang/?site_from=sy_lc_etf">5F 儿童房</a></h3>
                <ul id="JS_floor_nav_5" class="floor-nav fl clearfix">
                    <li class="fl hover" data-index="0">精品推荐</li>
                                    </ul>
                <div class="floor-tag fr">
                    <a  href="/category-ertongchuang/?site_from=sy_lc_etf" target="_blank">儿童床</a><a  href="/category-ertongchuangdian/?site_from=sy_lc_etf" target="_blank">儿童床垫</a><a  href="/category-ertongyigui/?site_from=sy_lc_etf" target="_blank">儿童衣柜</a><a class="last" href="/category-ertongshuzhuoertongdiannaotai/?site_from=sy_lc_etf" target="_blank">儿童桌</a>                </div>
            </div>
            <div id="JS_floor_table_5" class="floor-table clearfix">
                <div class="fl floor-left">
                    <div class="aImg">
                        <a href="http://www.meilele.com/category-ertongfang/?site_from=sy_lc_etf" title="儿童房精品选购" target="_blank">
                            <p class="brand-title">小小梦想天地</p>
                            <p class="brand-subtitle">健康伴成长</p>
                            <span class="brand-btn">去看看 <span class="brand-i">></span></span>
                            <img class="floor-img" src="http://image.meilele.com/images/blank.gif" data-src="http://img004.mllres.com/images/201603/1459305224484645183.jpg" alt="">
                        </a>
                    </div>
                    <div class="aTag">
                        <a  href="/keywords/tianyuanertongchuang/?site_from=sy_lc_etf" target="_blank">田园儿童床</a><a  href="/keywords/shangxiachuang/?site_from=sy_lc_etf" target="_blank">上下床</a><a  href="/keywords/gaodichuang/?site_from=sy_lc_etf" target="_blank">高低床</a><a  href="/keywords/shuangcengchuang/?site_from=sy_lc_etf" target="_blank">双层床</a><a  href="/category-ertongchuangdian/list-79_20150/?site_from=sy_lc_etf" target="_blank">儿童棕垫</a><a  href="/category-ertongchuangdian/list-79_20153/?site_from=sy_lc_etf" target="_blank">弹簧床垫</a><a  href="/category-ertongchuangdian/list-79_20149/?site_from=sy_lc_etf" target="_blank">乳胶垫</a><a  href="/category-ertongyigui/list-79_21120/?site_from=sy_lc_etf" target="_blank">拉门衣柜</a><a  href="/category-ertongyigui/list-78_21113/?site_from=sy_lc_etf" target="_blank">两门衣柜</a><a  href="/keywords/ertongshutai/?site_from=sy_lc_etf" target="_blank">儿童书台</a><a  href="/keywords/ertongshugui/?site_from=sy_lc_etf" target="_blank">儿童书柜</a><a class="last" href="/keywords/ertongzuoyi/?site_from=sy_lc_etf" target="_blank">儿童座椅</a>                    </div>
                    <div class="ad">
                        <a href="http://www.meilele.com/brand-357/?site_from=sy_lc_logo17" title="青春城堡" target="_blank" class=" "><img src="http://image.meilele.com/images/blank.gif" data-src="http://img004.mllres.com/images/201603/1459297289601108811.jpg" alt="青春城堡"></a><a href="http://www.meilele.com/brand-284/?site_from=sy_lc_logo18" title="小童舍" target="_blank" class="last "><img src="http://image.meilele.com/images/blank.gif" data-src="http://img003.mllres.com/images/201603/1459297347727054927.jpg" alt="小童舍"></a><a href="http://www.meilele.com/brand-1067/?site_from=sy_lc_logo19" title="喜临门.红孩儿" target="_blank" class=" second"><img src="http://image.meilele.com/images/blank.gif" data-src="http://img001.mllres.com/images/201603/1459297394694179059.jpg" alt="喜临门.红孩儿"></a><a href="http://www.meilele.com/brand-638/?site_from=sy_lc_logo20" title="Caladoll卡乐多" target="_blank" class="last second"><img src="http://image.meilele.com/images/blank.gif" data-src="http://img003.mllres.com/images/201603/1459297446893644114.jpg" alt="Caladoll卡乐多"></a>                    </div>
                </div>
                <div class="floor-right clearfix" data-index="0">
                    <div class="scroll-bar JS_floor_banner fl">
                                                <div class="content">
                            <a href="http://www.meilele.com/category-ertongchuang/goods-26855.html?site_from=sy_lc_etfjp1" target="_blank" title="进口芬兰松双层童床">   
                            <div class="content-banner">
                                <span class="txt-l">童话木居生活</span>
                                <p class="txt-s">进口芬兰松双层童床 &yen;<span class="JS_async_price" data-goods_id="26855">5350</span></p>
                            </div>
                            </a>
                        </div>
                                                <div class="content">
                            <a href="http://www.meilele.com/category-ertongchuang/goods-289478.html?site_from=sy_lc_etfjp2" target="_blank" title="进口新西兰松木儿童城堡床
">   
                            <div class="content-banner">
                                <span class="txt-l">用料天然 健康环保</span>
                                <p class="txt-s">进口新西兰松木儿童城堡床 &yen;<span class="JS_async_price" data-goods_id="289478">6208</span></p>
                            </div>
                            </a>
                        </div>
                                                <div class="content">
                            <a href="http://www.meilele.com/category-ertongchuangdian/goods-65493.html?site_from=sy_lc_etfjp3" target="_blank" title="3D环保椰棕护脊床垫">   
                            <div class="content-banner">
                                <span class="txt-l">助力宝宝健康睡眠</span>
                                <p class="txt-s">3D环保椰棕护脊床垫 &yen;<span class="JS_async_price" data-goods_id="65493">1799</span></p>
                            </div>
                            </a>
                        </div>
                                                <div class="nav">
                            <div class="list JS_list_banner">
                                <a href="javascript:;" target="_blank"></a><a href="javascript:;" target="_blank"></a><a href="javascript:;" target="_blank"></a>                            </div>
                        </div>
                        <ul class="JS_ul_banner">
                                                        <li><a href="http://www.meilele.com/category-ertongchuang/goods-26855.html?site_from=sy_lc_etfjp1" target="_blank" title="进口芬兰松双层童床"><img src="http://image.meilele.com/images/blank.gif" data-src="http://img003.mllres.com/images/201611/1479092296611347046.jpg" alt="进口芬兰松双层童床"/></a></li>
                                                        <li><a href="http://www.meilele.com/category-ertongchuang/goods-289478.html?site_from=sy_lc_etfjp2" target="_blank" title="进口新西兰松木儿童城堡床
"><img src="http://image.meilele.com/images/blank.gif" data-src="http://img004.mllres.com/images/201703/1489705904125592933.jpg" alt="进口新西兰松木儿童城堡床
"/></a></li>
                                                        <li><a href="http://www.meilele.com/category-ertongchuangdian/goods-65493.html?site_from=sy_lc_etfjp3" target="_blank" title="3D环保椰棕护脊床垫"><img src="http://image.meilele.com/images/blank.gif" data-src="http://img003.mllres.com/images/201702/1487884836934441648.jpg" alt="3D环保椰棕护脊床垫"/></a></li>
                                                    </ul>
                    </div>
                                                            <div class="floor-bar s1 fl">
                        <a href="http://www.meilele.com/category-ertongyigui/goods-25455.html?site_from=sy_lc_etfjp4" title="中式环保原木衣柜" target="_blank"><img src="http://image.meilele.com/images/blank.gif" alt="" data-src="http://image.meilele.com/images/201604/1459985804688503101.jpg"></a>
                        <ul>
                            <li class="name"><a href="http://www.meilele.com/category-ertongyigui/goods-25455.html?site_from=sy_lc_etfjp4" title="中式环保原木衣柜" target="_blank">珍藏童年记忆</a></li>
                            <li class="tips"><a href="http://www.meilele.com/category-ertongyigui/goods-25455.html?site_from=sy_lc_etfjp4" title="中式环保原木衣柜" target="_blank">中式环保原木衣柜</a></li>
                            <li class="prize"><a href="http://www.meilele.com/category-ertongyigui/goods-25455.html?site_from=sy_lc_etfjp4" title="中式环保原木衣柜" target="_blank">&yen;<span class="JS_async_price" data-goods_id="25455">3788</span></a></li>
                        </ul>
                    </div>
                                                                                                                                            <div class="fl">
                        <div class="floor-bar s2">
                            <a href="http://www.meilele.com/category-ertongchuang/goods-144934.html?site_from=sy_lc_etfjp5" title="优质杉木内架雕花床" target="_blank"><img src="http://image.meilele.com/images/blank.gif" alt="优质杉木内架雕花床" data-src="http://img003.mllres.com/images/201612/1481245909201186079.jpg"></a>
                            <ul>
                                <li class="name"><a href="http://www.meilele.com/category-ertongchuang/goods-144934.html?site_from=sy_lc_etfjp5" title="优质杉木内架雕花床" target="_blank">轻灵优雅小公举</a></li>
                                <li class="tips"><a href="http://www.meilele.com/category-ertongchuang/goods-144934.html?site_from=sy_lc_etfjp5" title="优质杉木内架雕花床" target="_blank">优质杉木内架雕花床</a></li>
                                <li class="prize"><a href="http://www.meilele.com/category-ertongchuang/goods-144934.html?site_from=sy_lc_etfjp5" title="优质杉木内架雕花床" target="_blank">&yen;<span class="JS_async_price" data-goods_id="144934">2372</span></a></li>
                            </ul>
                        </div>
                    </div>
                                                                                                                        <div class="fl">
                        <div class="floor-bar s2">
                            <a href="http://www.meilele.com/category-ertongchuangdian/goods-52767.html?site_from=sy_lc_etfjp6" title="透气可拆洗儿童静音床垫

" target="_blank"><img src="http://image.meilele.com/images/blank.gif" alt="透气可拆洗儿童静音床垫

" data-src="http://img001.mllres.com/images/201703/1489111376058572011.jpg"></a>
                            <ul>
                                <li class="name"><a href="http://www.meilele.com/category-ertongchuangdian/goods-52767.html?site_from=sy_lc_etfjp6" title="透气可拆洗儿童静音床垫

" target="_blank">软硬双面 护脊正姿</a></li>
                                <li class="tips"><a href="http://www.meilele.com/category-ertongchuangdian/goods-52767.html?site_from=sy_lc_etfjp6" title="透气可拆洗儿童静音床垫

" target="_blank">透气可拆洗儿童静音床垫</a></li>
                                <li class="prize"><a href="http://www.meilele.com/category-ertongchuangdian/goods-52767.html?site_from=sy_lc_etfjp6" title="透气可拆洗儿童静音床垫

" target="_blank">&yen;<span class="JS_async_price" data-goods_id="52767">1200</span></a></li>
                            </ul>
                        </div>
                    </div>
                                                                                                                                            <div class="floor-bar s4 fl">
                        <a href="http://www.meilele.com/category-ertongchuang/goods-124766.html?site_from=sy_lc_etfjp7" title="地中海进口实木儿童床" target="_blank"><img src="http://image.meilele.com/images/blank.gif" alt="" data-src="http://img001.mllres.com/images/201703/1489111444278827474.jpg"></a>
                        <ul>
                            <li class="name"><a href="http://www.meilele.com/category-ertongchuang/goods-124766.html?site_from=sy_lc_etfjp7" title="地中海进口实木儿童床" target="_blank">小小舵手梦</a></li>
                            <li class="tips"><a href="http://www.meilele.com/category-ertongchuang/goods-124766.html?site_from=sy_lc_etfjp7" title="地中海进口实木儿童床" target="_blank">地中海进口实木儿童床</a></li>
                            <li class="prize"><a href="http://www.meilele.com/category-ertongchuang/goods-124766.html?site_from=sy_lc_etfjp7" title="地中海进口实木儿童床" target="_blank">&yen;<span class="JS_async_price" data-goods_id="124766">2615</span></a></li>
                        </ul>
                    </div>
                                                                                                                        <div class="floor-bar s5 fl">
                        <a href="http://www.meilele.com/category-ertongchuangdian/goods-65499.html?site_from=sy_lc_etfjp8 " title="天然椰棕透气儿童床垫" target="_blank"><img src="http://image.meilele.com/images/blank.gif" alt="" data-src="http://img003.mllres.com/images/201608/1470340860694885868.jpg"></a>
                        <ul>
                            <li class="name"><a href="http://www.meilele.com/category-ertongchuangdian/goods-65499.html?site_from=sy_lc_etfjp8 " title="天然椰棕透气儿童床垫" target="_blank">爱的贴心陪伴</a></li>
                            <li class="tips"><a href="http://www.meilele.com/category-ertongchuangdian/goods-65499.html?site_from=sy_lc_etfjp8 " title="天然椰棕透气儿童床垫" target="_blank">天然椰棕透气儿童床垫</a></li>
                            <li class="prize"><a href="http://www.meilele.com/category-ertongchuangdian/goods-65499.html?site_from=sy_lc_etfjp8 " title="天然椰棕透气儿童床垫" target="_blank">&yen;<span class="JS_async_price" data-goods_id="65499">1249</span></a></li>
                        </ul>
                    </div>
                                                                                                                        <div class="floor-bar s6 fl">
                        <a href="http://www.meilele.com/category-ertongchuangdian/goods-103775.html?site_from=sy_lc_etfjp9" title="偏硬款护脊环保双面床垫

" target="_blank"><img src="http://image.meilele.com/images/blank.gif" alt="" data-src="http://img001.mllres.com/images/201612/1483056063194476184.jpg"></a>
                        <ul>
                            <li class="name"><a href="http://www.meilele.com/category-ertongchuangdian/goods-103775.html?site_from=sy_lc_etfjp9" title="偏硬款护脊环保双面床垫

" target="_blank">健康睡眠轻松享</a></li>
                            <li class="tips"><a href="http://www.meilele.com/category-ertongchuangdian/goods-103775.html?site_from=sy_lc_etfjp9" title="偏硬款护脊环保双面床垫

" target="_blank">偏硬款护脊环保双面床垫</a></li>
                            <li class="prize"><a href="http://www.meilele.com/category-ertongchuangdian/goods-103775.html?site_from=sy_lc_etfjp9" title="偏硬款护脊环保双面床垫

" target="_blank">&yen;<span class="JS_async_price" data-goods_id="103775">2099</span></a></li>
                        </ul>
                    </div>
                                                                                                                        <div class="floor-bar s7 fl">
                        <a href="http://www.meilele.com/category-ertongshuzhuoertongdiannaotai/goods-25460.html?site_from=sy_lc_etfjp10" title="全实木环保电脑台" target="_blank"><img src="http://image.meilele.com/images/blank.gif" alt="" data-src="http://img004.mllres.com/images/201609/1475191882485713863.jpg"></a>
                        <ul>
                            <li class="name"><a href="http://www.meilele.com/category-ertongshuzhuoertongdiannaotai/goods-25460.html?site_from=sy_lc_etfjp10" title="全实木环保电脑台" target="_blank">打磨圆润 自然呵护</a></li>
                            <li class="tips"><a href="http://www.meilele.com/category-ertongshuzhuoertongdiannaotai/goods-25460.html?site_from=sy_lc_etfjp10" title="全实木环保电脑台" target="_blank">进口芬兰松全实木电脑桌</a></li>
                            <li class="prize"><a href="http://www.meilele.com/category-ertongshuzhuoertongdiannaotai/goods-25460.html?site_from=sy_lc_etfjp10" title="全实木环保电脑台" target="_blank">&yen;<span class="JS_async_price" data-goods_id="25460">1920</span></a></li>
                        </ul>
                    </div>
                                                        </div>
                            </div>
        </div>
    </div>
        <div class="floor default_floor_show">
        <div class="w">
            <div class="floor-header clearfix">
                <h3 class="fl"><a target="_blank" href="/jiancai/?site_from=sy_lc_jcds">6F 建材灯饰</a></h3>
                <ul id="JS_floor_nav_6" class="floor-nav fl clearfix">
                    <li class="fl hover" data-index="0">精品推荐</li>
                    <li class="fl" data-index="1">新品上架</li>                </ul>
                <div class="floor-tag fr">
                    <a  href="/category-diaodeng/?site_from=sy_lc_jcds" target="_blank">吊灯</a><a  href="/category-xidingdeng/?site_from=sy_lc_jcds" target="_blank">吸顶灯</a><a  href="/category-diban/?site_from=sy_lc_jcds" target="_blank">地板</a><a  href="/category-qiangzhi/?site_from=sy_lc_jcds" target="_blank">墙纸</a><a  href="/category-yushigui/?site_from=sy_lc_jcds" target="_blank">浴室柜</a><a  href="/category-chufangyongpin/?site_from=sy_lc_jcds" target="_blank">厨房用品</a><a class="last" href="/category-shenghuodianqi/?site_from=sy_lc_jcds" target="_blank">生活电器</a>                </div>
            </div>
            <div id="JS_floor_table_6" class="floor-table clearfix">
                <div class="fl floor-left">
                    <div class="aImg">
                        <a href="http://www.meilele.com/jiancai/?site_from=sy_lc_jcds" title="建材灯饰精品选购" target="_blank">
                            <p class="brand-title">家装主材清单</p>
                            <p class="brand-subtitle">一站购齐</p>
                            <span class="brand-btn">去看看 <span class="brand-i">></span></span>
                            <img class="floor-img" src="http://image.meilele.com/images/blank.gif" data-src="http://img002.mllres.com/images/201603/1459305331073902931.jpg" alt="">
                        </a>
                    </div>
                    <div class="aTag">
                        <a  href="/keywords/ketingdeng/?site_from=sy_lc_jcds" target="_blank">客厅灯</a><a  href="/keywords/woshideng/?site_from=sy_lc_jcds" target="_blank">卧室灯</a><a  href="/category-yushigui/list-37_19466/?site_from=sy_lc_jcds" target="_blank">落地浴室柜</a><a  href="/category-zuobianqi/list-13_19190/?site_from=sy_lc_jcds" target="_blank">虹吸马桶</a><a  href="/category-chupenshuicao/?site_from=sy_lc_jcds" target="_blank">厨盆/水槽</a><a  href="/keywords/shimudiban/?site_from=sy_lc_jcds" target="_blank">实木地板</a><a  href="/category-qiangzhi/list-m538/?site_from=sy_lc_jcds" target="_blank">无纺布墙纸</a><a  href="/category-men/list-78_19951/?site_from=sy_lc_jcds" target="_blank">实木复合门</a><a  href="/category-kaiguanchazuo/?site_from=sy_lc_jcds" target="_blank">开关插座</a><a  href="/keywords/bianpinkongdiao/?site_from=sy_lc_jcds" target="_blank">变频空调</a><a class="last" href="/keywords/wushuangbingxiang/?site_from=sy_lc_jcds" target="_blank">无霜冰箱</a>                    </div>
                    <div class="ad">
                        <a href="http://www.meilele.com/brand-358/?site_from=sy_lc_logo21" title="赛朵" target="_blank" class=" "><img src="http://image.meilele.com/images/blank.gif" data-src="http://img002.mllres.com/images/201603/1459297527716453392.jpg" alt="赛朵"></a><a href="http://www.meilele.com/brand-393/?site_from=sy_lc_logo22" title="鸥达" target="_blank" class="last "><img src="http://image.meilele.com/images/blank.gif" data-src="http://img002.mllres.com/images/201603/1459297649326427064.jpg" alt="鸥达"></a><a href="http://www.meilele.com/brand-315/?site_from=sy_lc_logo23" title="海尔" target="_blank" class=" second"><img src="http://image.meilele.com/images/blank.gif" data-src="http://img001.mllres.com/images/201603/1459297707799486104.jpg" alt="海尔"></a><a href="http://www.meilele.com/brand-317/?site_from=sy_lc_logo24" title="贝尔地板" target="_blank" class="last second"><img src="http://image.meilele.com/images/blank.gif" data-src="http://img003.mllres.com/images/201603/1459297758433613047.jpg" alt="贝尔地板"></a>                    </div>
                </div>
                <div class="floor-right clearfix" data-index="0">
                    <div class="scroll-bar JS_floor_banner fl">
                                                <div class="content">
                            <a href="http://www.meilele.com/category-diaodeng/goods-324596.html?site_from=sy_lc_jcdsjp1" target="_blank" title="欧式仿古优质树脂吊灯

">   
                            <div class="content-banner">
                                <span class="txt-l">多重工艺 细节精美</span>
                                <p class="txt-s">欧式仿古优质树脂吊灯 &yen;<span class="JS_async_price" data-goods_id="324596">699</span></p>
                            </div>
                            </a>
                        </div>
                                                <div class="content">
                            <a href="http://www.meilele.com/category-zuobianqi/goods-184477.html?site_from=sy_lc_jcdsjp2" target="_blank" title="节水静音喷射虹吸式马桶">   
                            <div class="content-banner">
                                <span class="txt-l">大冲力 不堵塞</span>
                                <p class="txt-s">节水静音喷射虹吸式马桶 &yen;<span class="JS_async_price" data-goods_id="184477">799</span></p>
                            </div>
                            </a>
                        </div>
                                                <div class="content">
                            <a href="http://www.meilele.com/category-xidingdeng/goods-49390.html?site_from=sy_lc_jcdsjp3" target="_blank" title="金色年华水晶遥控吸顶灯

">   
                            <div class="content-banner">
                                <span class="txt-l">皇家气场 璀璨闪耀</span>
                                <p class="txt-s">金色年华水晶遥控吸顶灯 &yen;<span class="JS_async_price" data-goods_id="49390">1587</span></p>
                            </div>
                            </a>
                        </div>
                                                <div class="nav">
                            <div class="list JS_list_banner">
                                <a href="javascript:;" target="_blank"></a><a href="javascript:;" target="_blank"></a><a href="javascript:;" target="_blank"></a>                            </div>
                        </div>
                        <ul class="JS_ul_banner">
                                                        <li><a href="http://www.meilele.com/category-diaodeng/goods-324596.html?site_from=sy_lc_jcdsjp1" target="_blank" title="欧式仿古优质树脂吊灯

"><img src="http://image.meilele.com/images/blank.gif" data-src="http://img004.mllres.com/images/201703/1490314928813060190.jpg" alt="欧式仿古优质树脂吊灯

"/></a></li>
                                                        <li><a href="http://www.meilele.com/category-zuobianqi/goods-184477.html?site_from=sy_lc_jcdsjp2" target="_blank" title="节水静音喷射虹吸式马桶"><img src="http://image.meilele.com/images/blank.gif" data-src="http://img003.mllres.com/images/201611/1480291353289105992.jpg" alt="节水静音喷射虹吸式马桶"/></a></li>
                                                        <li><a href="http://www.meilele.com/category-xidingdeng/goods-49390.html?site_from=sy_lc_jcdsjp3" target="_blank" title="金色年华水晶遥控吸顶灯

"><img src="http://image.meilele.com/images/blank.gif" data-src="http://img004.mllres.com/images/201703/1490314995154964520.jpg" alt="金色年华水晶遥控吸顶灯

"/></a></li>
                                                    </ul>
                    </div>
                                                            <div class="floor-bar s1 fl">
                        <a href="http://www.meilele.com/category-yushigui/goods-51658.html?site_from=sy_lc_jcdsjp4" title="美式实木雕花浴室柜

" target="_blank"><img src="http://image.meilele.com/images/blank.gif" alt="" data-src="http://img001.mllres.com/images/201703/1489706001167528421.jpg"></a>
                        <ul>
                            <li class="name"><a href="http://www.meilele.com/category-yushigui/goods-51658.html?site_from=sy_lc_jcdsjp4" title="美式实木雕花浴室柜

" target="_blank">天然大理石台面</a></li>
                            <li class="tips"><a href="http://www.meilele.com/category-yushigui/goods-51658.html?site_from=sy_lc_jcdsjp4" title="美式实木雕花浴室柜

" target="_blank">美式实木雕花浴室柜</a></li>
                            <li class="prize"><a href="http://www.meilele.com/category-yushigui/goods-51658.html?site_from=sy_lc_jcdsjp4" title="美式实木雕花浴室柜

" target="_blank">&yen;<span class="JS_async_price" data-goods_id="51658">4799</span></a></li>
                        </ul>
                    </div>
                                                                                                                                            <div class="fl">
                        <div class="floor-bar s2">
                            <a href="http://www.meilele.com/category-qiangzhi/goods-89747.html?site_from=sy_lc_jcdsjp5" title="3D立体加厚无纺布壁纸

" target="_blank"><img src="http://image.meilele.com/images/blank.gif" alt="3D立体加厚无纺布壁纸

" data-src="http://img003.mllres.com/images/201703/1488489460583210441.jpg"></a>
                            <ul>
                                <li class="name"><a href="http://www.meilele.com/category-qiangzhi/goods-89747.html?site_from=sy_lc_jcdsjp5" title="3D立体加厚无纺布壁纸

" target="_blank">原木纸基 环保透气</a></li>
                                <li class="tips"><a href="http://www.meilele.com/category-qiangzhi/goods-89747.html?site_from=sy_lc_jcdsjp5" title="3D立体加厚无纺布壁纸

" target="_blank">3D立体加厚无纺布壁纸</a></li>
                                <li class="prize"><a href="http://www.meilele.com/category-qiangzhi/goods-89747.html?site_from=sy_lc_jcdsjp5" title="3D立体加厚无纺布壁纸

" target="_blank">&yen;<span class="JS_async_price" data-goods_id="89747">138</span></a></li>
                            </ul>
                        </div>
                    </div>
                                                                                                                        <div class="fl">
                        <div class="floor-bar s2">
                            <a href="http://www.meilele.com/category-diaodeng/goods-324565.html?site_from=sy_lc_jcdsjp6" title="描金立体玫瑰欧式吊灯

" target="_blank"><img src="http://image.meilele.com/images/blank.gif" alt="描金立体玫瑰欧式吊灯

" data-src="http://image.meilele.com/images/201703/1490315098267678064.jpg"></a>
                            <ul>
                                <li class="name"><a href="http://www.meilele.com/category-diaodeng/goods-324565.html?site_from=sy_lc_jcdsjp6" title="描金立体玫瑰欧式吊灯

" target="_blank">精雕细琢 优美华丽</a></li>
                                <li class="tips"><a href="http://www.meilele.com/category-diaodeng/goods-324565.html?site_from=sy_lc_jcdsjp6" title="描金立体玫瑰欧式吊灯

" target="_blank">描金立体玫瑰欧式吊灯</a></li>
                                <li class="prize"><a href="http://www.meilele.com/category-diaodeng/goods-324565.html?site_from=sy_lc_jcdsjp6" title="描金立体玫瑰欧式吊灯

" target="_blank">&yen;<span class="JS_async_price" data-goods_id="324565">900</span></a></li>
                            </ul>
                        </div>
                    </div>
                                                                                                                                            <div class="floor-bar s4 fl">
                        <a href="http://www.meilele.com/category-huasa/goods-156738.html?site_from=sy_lc_jcdsjp7" title="精铜多功能花洒淋浴套装" target="_blank"><img src="http://image.meilele.com/images/blank.gif" alt="" data-src="http://img002.mllres.com/images/201702/1487294985204112203.jpg"></a>
                        <ul>
                            <li class="name"><a href="http://www.meilele.com/category-huasa/goods-156738.html?site_from=sy_lc_jcdsjp7" title="精铜多功能花洒淋浴套装" target="_blank">五档出水 放松身心<span class="activity">团购

</span></a></li>
                            <li class="tips"><a href="http://www.meilele.com/category-huasa/goods-156738.html?site_from=sy_lc_jcdsjp7" title="精铜多功能花洒淋浴套装" target="_blank">精铜多功能花洒淋浴套装</a></li>
                            <li class="prize"><a href="http://www.meilele.com/category-huasa/goods-156738.html?site_from=sy_lc_jcdsjp7" title="精铜多功能花洒淋浴套装" target="_blank">&yen;<span class="JS_async_price" data-goods_id="156738">669</span></a></li>
                        </ul>
                    </div>
                                                                                                                        <div class="floor-bar s5 fl">
                        <a href="http://www.meilele.com/category-diaodeng/goods-324524.html?site_from=sy_lc_jcdsjp8" title="文艺铁制吸吊两用灯

" target="_blank"><img src="http://image.meilele.com/images/blank.gif" alt="" data-src="http://img002.mllres.com/images/201703/1490315278855320170.jpg"></a>
                        <ul>
                            <li class="name"><a href="http://www.meilele.com/category-diaodeng/goods-324524.html?site_from=sy_lc_jcdsjp8" title="文艺铁制吸吊两用灯

" target="_blank">简约美式乡村格调</a></li>
                            <li class="tips"><a href="http://www.meilele.com/category-diaodeng/goods-324524.html?site_from=sy_lc_jcdsjp8" title="文艺铁制吸吊两用灯

" target="_blank">文艺铁制吸吊两用灯</a></li>
                            <li class="prize"><a href="http://www.meilele.com/category-diaodeng/goods-324524.html?site_from=sy_lc_jcdsjp8" title="文艺铁制吸吊两用灯

" target="_blank">&yen;<span class="JS_async_price" data-goods_id="324524">599</span></a></li>
                        </ul>
                    </div>
                                                                                                                        <div class="floor-bar s6 fl">
                        <a href="http://www.meilele.com/category-zuobianqi/goods-204149.html?site_from=sy_lc_jcdsjp9" title="全自动感应开关盖智能马桶

" target="_blank"><img src="http://image.meilele.com/images/blank.gif" alt="" data-src="http://img002.mllres.com/images/201703/1489706104987810180.jpg"></a>
                        <ul>
                            <li class="name"><a href="http://www.meilele.com/category-zuobianqi/goods-204149.html?site_from=sy_lc_jcdsjp9" title="全自动感应开关盖智能马桶

" target="_blank">高科技更人性</a></li>
                            <li class="tips"><a href="http://www.meilele.com/category-zuobianqi/goods-204149.html?site_from=sy_lc_jcdsjp9" title="全自动感应开关盖智能马桶

" target="_blank">全自动感应开关盖智能马桶</a></li>
                            <li class="prize"><a href="http://www.meilele.com/category-zuobianqi/goods-204149.html?site_from=sy_lc_jcdsjp9" title="全自动感应开关盖智能马桶

" target="_blank">&yen;<span class="JS_async_price" data-goods_id="204149">4080</span></a></li>
                        </ul>
                    </div>
                                                                                                                        <div class="floor-bar s7 fl">
                        <a href="http://www.meilele.com/category-diban/goods-183694.html?site_from=sy_lc_jcdsjp10" title="A级番龙眼纯实木地板

" target="_blank"><img src="http://image.meilele.com/images/blank.gif" alt="" data-src="http://img004.mllres.com/images/201612/1483056260298778737.jpg"></a>
                        <ul>
                            <li class="name"><a href="http://www.meilele.com/category-diban/goods-183694.html?site_from=sy_lc_jcdsjp10" title="A级番龙眼纯实木地板

" target="_blank">手抓纹仿古有品</a></li>
                            <li class="tips"><a href="http://www.meilele.com/category-diban/goods-183694.html?site_from=sy_lc_jcdsjp10" title="A级番龙眼纯实木地板

" target="_blank">A级番龙眼纯实木地板</a></li>
                            <li class="prize"><a href="http://www.meilele.com/category-diban/goods-183694.html?site_from=sy_lc_jcdsjp10" title="A级番龙眼纯实木地板

" target="_blank">&yen;<span class="JS_async_price" data-goods_id="183694">258</span></a></li>
                        </ul>
                    </div>
                                                        </div>
                                <div class="floor-right clearfix" data-index="1" style="display:none">
                                                            <div class="scroll-bar fl">
                        <div class="content">
                            <a href="http://www.meilele.com/category-xidingdeng/goods-324558.html?site_from=sy_lc_jcdsxp1" target="_blank" title="美式简约亚克力灯罩吸顶灯">   
                                <div class="content-banner">
                                    <span class="txt-l">黑白双色 经典百搭</span>
                                    <p class="txt-s">美式简约亚克力灯罩吸顶灯 &yen;<span class="JS_async_price" data-goods_id="324558">499</span></p>
                                </div>
                            </a>
                        </div>
                        <a href="http://www.meilele.com/category-xidingdeng/goods-324558.html?site_from=sy_lc_jcdsxp1" title="美式简约亚克力灯罩吸顶灯" target="_blank"><img src="http://image.meilele.com/images/blank.gif" alt="美式简约亚克力灯罩吸顶灯" data-tab-src="http://img004.mllres.com/images/201703/1490319816339696699.jpg" width="620" height="449"></a>
                    </div>
                                                                                                                                                                <div class="floor-bar s1 fl">
                        <a href="http://www.meilele.com/category-yushigui/goods-287813.html?site_from=sy_lc_jcdsxp2" title="ABS航空板材时尚吊柜" target="_blank"><img src="http://image.meilele.com/images/blank.gif" alt="ABS航空板材时尚吊柜" data-tab-src="http://img003.mllres.com/images/201611/1480287410512643499.jpg"></a>
                        <ul>
                            <li class="name"><a href="http://www.meilele.com/category-yushigui/goods-287813.html?site_from=sy_lc_jcdsxp2" title="ABS航空板材时尚吊柜" target="_blank">釉面细腻易清洗</a></li>
                            <li class="tips"><a href="http://www.meilele.com/category-yushigui/goods-287813.html?site_from=sy_lc_jcdsxp2" title="ABS航空板材时尚吊柜" target="_blank">ABS航空板材时尚吊柜</a></li>
                            <li class="prize"><a href="http://www.meilele.com/category-yushigui/goods-287813.html?site_from=sy_lc_jcdsxp2" title="ABS航空板材时尚吊柜" target="_blank">&yen;<span class="JS_async_price" data-goods_id="287813">798</span></a></li>
                        </ul>
                    </div>
                                                                                                                                                                <div class="fl">
                        <div class="floor-bar s2">
                            <a href="http://www.meilele.com/category-qitaweiyupeijian/goods-281305.html?site_from=sy_lc_jcdsxp3" title="方形陶瓷水洗拖把池" target="_blank"><img src="http://image.meilele.com/images/blank.gif" alt="方形陶瓷水洗拖把池" data-tab-src="http://img001.mllres.com/images/201611/1479419147708646324.jpg"></a>
                            <ul>
                                <li class="name"><a href="http://www.meilele.com/category-qitaweiyupeijian/goods-281305.html?site_from=sy_lc_jcdsxp3" title="方形陶瓷水洗拖把池" target="_blank">易洗防溅水</a></li>
                                <li class="tips"><a href="http://www.meilele.com/category-qitaweiyupeijian/goods-281305.html?site_from=sy_lc_jcdsxp3" title="方形陶瓷水洗拖把池" target="_blank">方形陶瓷水洗拖把池</a></li>
                                <li class="prize"><a href="http://www.meilele.com/category-qitaweiyupeijian/goods-281305.html?site_from=sy_lc_jcdsxp3" title="方形陶瓷水洗拖把池" target="_blank">&yen;<span class="JS_async_price" data-goods_id="281305">398</span></a></li>
                            </ul>
                        </div>
                    </div>
                                                                                                                                            <div class="fl">
                        <div class="floor-bar s2">
                            <a href="http://www.meilele.com/category-zuobianqi/goods-282333.html?site_from=sy_lc_jcdsxp4" title="超漩虹吸式智能遥控马桶" target="_blank"><img src="http://image.meilele.com/images/blank.gif" alt="超漩虹吸式智能遥控马桶" data-tab-src="http://image.meilele.com/images/201611/1479092120726970374.jpg"></a>
                            <ul>
                                <li class="name"><a href="http://www.meilele.com/category-zuobianqi/goods-282333.html?site_from=sy_lc_jcdsxp4" title="超漩虹吸式智能遥控马桶" target="_blank">座圈4档升温<span class="activity">参团省</span></a></li>
                                <li class="tips"><a href="http://www.meilele.com/category-zuobianqi/goods-282333.html?site_from=sy_lc_jcdsxp4" title="超漩虹吸式智能遥控马桶" target="_blank">超漩虹吸式智能遥控马桶</a></li>
                                <li class="prize"><a href="http://www.meilele.com/category-zuobianqi/goods-282333.html?site_from=sy_lc_jcdsxp4" title="超漩虹吸式智能遥控马桶" target="_blank">&yen;<span class="JS_async_price" data-goods_id="282333">3980</span></a></li>
                            </ul>
                        </div>
                    </div>
                                                                                                                                                                <div class="floor-bar t5 fl">
                        <a href="http://www.meilele.com/category-qiangzhi/goods-281251.html?site_from=sy_lc_jcdsxp5" title="超厚3层无纺布立体壁纸" target="_blank"><img src="http://image.meilele.com/images/blank.gif" alt="" data-tab-src="http://img001.mllres.com/images/201611/1480287504642576046.jpg"></a>
                        <ul>
                            <li class="name"><a href="http://www.meilele.com/category-qiangzhi/goods-281251.html?site_from=sy_lc_jcdsxp5" title="超厚3层无纺布立体壁纸" target="_blank">甜美花园雅居<span class="activity">包邮</span></a></li>
                            <li class="tips"><a href="http://www.meilele.com/category-qiangzhi/goods-281251.html?site_from=sy_lc_jcdsxp5" title="超厚3层无纺布立体壁纸" target="_blank">超厚3层无纺布立体壁纸</a></li>
                            <li class="prize"><a href="http://www.meilele.com/category-qiangzhi/goods-281251.html?site_from=sy_lc_jcdsxp5" title="超厚3层无纺布立体壁纸" target="_blank">&yen;<span class="JS_async_price" data-goods_id="281251">138</span></a></li>
                        </ul>
                    </div>
                                                                                                                                            <div class="floor-bar t6 fl">
                        <a href="http://www.meilele.com/category-diaodeng/goods-324601.html?site_from=sy_lc_jcdsxp6" title="欧式优质树脂铁艺六头吊灯" target="_blank"><img src="http://image.meilele.com/images/blank.gif" alt="" data-tab-src="http://image.meilele.com/images/201703/1490319916659945509.jpg"></a>
                        <ul>
                            <li class="name"><a href="http://www.meilele.com/category-diaodeng/goods-324601.html?site_from=sy_lc_jcdsxp6" title="欧式优质树脂铁艺六头吊灯" target="_blank">精雕细琢 典雅复古</a></li>
                            <li class="tips"><a href="http://www.meilele.com/category-diaodeng/goods-324601.html?site_from=sy_lc_jcdsxp6" title="欧式优质树脂铁艺六头吊灯" target="_blank">欧式优质树脂铁艺六头吊灯</a></li>
                            <li class="prize"><a href="http://www.meilele.com/category-diaodeng/goods-324601.html?site_from=sy_lc_jcdsxp6" title="欧式优质树脂铁艺六头吊灯" target="_blank">&yen;<span class="JS_async_price" data-goods_id="324601">839</span></a></li>
                        </ul>
                    </div>
                                                                                                                                            <div class="floor-bar t7 fl">
                        <a href="http://www.meilele.com/category-diban/goods-283996.html?site_from=sy_lc_jjjsxp7" title="E0级环保橡木单锁扣地板" target="_blank"><img src="http://image.meilele.com/images/blank.gif" alt="" data-tab-src="http://img001.mllres.com/images/201611/1480287572864322847.jpg"></a>
                        <ul>
                            <li class="name"><a href="http://www.meilele.com/category-diban/goods-283996.html?site_from=sy_lc_jjjsxp7" title="E0级环保橡木单锁扣地板" target="_blank">纹理清晰 曲折有致</a></li>
                            <li class="tips"><a href="http://www.meilele.com/category-diban/goods-283996.html?site_from=sy_lc_jjjsxp7" title="E0级环保橡木单锁扣地板" target="_blank">E0级环保橡木单锁扣地板</a></li>
                            <li class="prize"><a href="http://www.meilele.com/category-diban/goods-283996.html?site_from=sy_lc_jjjsxp7" title="E0级环保橡木单锁扣地板" target="_blank">&yen;<span class="JS_async_price" data-goods_id="283996">595</span></a></li>
                        </ul>
                    </div>
                                                                                                                                            <div class="floor-bar t8 fl">
                        <a href="http://www.meilele.com/category-jingshuiqi/goods-286597.html?site_from=sy_lc_jcdsxp8" title="安吉尔长效滤芯智能净水器" target="_blank"><img src="http://image.meilele.com/images/blank.gif" alt="" data-tab-src="http://img004.mllres.com/images/201609/1475192312943837193.jpg"></a>
                        <ul>
                            <li class="name"><a href="http://www.meilele.com/category-jingshuiqi/goods-286597.html?site_from=sy_lc_jcdsxp8" title="安吉尔长效滤芯智能净水器" target="_blank">五级强劲过滤</a></li>
                            <li class="tips"><a href="http://www.meilele.com/category-jingshuiqi/goods-286597.html?site_from=sy_lc_jcdsxp8" title="安吉尔长效滤芯智能净水器" target="_blank">安吉尔长效滤芯智能净水器</a></li>
                            <li class="prize"><a href="http://www.meilele.com/category-jingshuiqi/goods-286597.html?site_from=sy_lc_jcdsxp8" title="安吉尔长效滤芯智能净水器" target="_blank">&yen;<span class="JS_async_price" data-goods_id="286597">2998</span></a></li>
                        </ul>
                    </div>
                                                        </div>
                            </div>
        </div>
    </div>
        <div class="floor default_floor_show">
        <div class="w">
            <div class="floor-header clearfix">
                <h3 class="fl"><a target="_blank" href="/shipin/?site_from=sy_lc_jjjs">7F 家居家饰</a></h3>
                <ul id="JS_floor_nav_7" class="floor-nav fl clearfix">
                    <li class="fl hover" data-index="0">精品推荐</li>
                    <li class="fl" data-index="1">新品上架</li>                </ul>
                <div class="floor-tag fr">
                    <a  href="/category-chuangshangyongpin/?site_from=sy_lc_jjjs" target="_blank">床上用品</a><a  href="/category-buyizhiwu/?site_from=sy_lc_jjjs" target="_blank">布艺织物</a><a  href="/category-gongyishipin/?site_from=sy_lc_jjjs" target="_blank">家居饰品</a><a  href="/category-jiajujiazhuang/?site_from=sy_lc_jjjs" target="_blank">居家日用</a><a class="last" href="/category-chufangcanyin/?site_from=sy_lc_jjjs" target="_blank">厨房餐饮</a>                </div>
            </div>
            <div id="JS_floor_table_7" class="floor-table clearfix">
                <div class="fl floor-left">
                    <div class="aImg">
                        <a href="http://www.meilele.com/shipin/?site_from=sy_lc_jjjs" title="家居家饰精品选购" target="_blank">
                            <p class="brand-title">空间装饰有术</p>
                            <p class="brand-subtitle">让家更有爱</p>
                            <span class="brand-btn">去看看 <span class="brand-i">></span></span>
                            <img class="floor-img" src="http://image.meilele.com/images/blank.gif" data-src="http://img001.mllres.com/images/201603/1459305406349336594.jpg" alt="">
                        </a>
                    </div>
                    <div class="aTag">
                        <a  href="/category-chuangpintaojian/list-7_19095/?site_from=sy_lc_jjjs" target="_blank">床品四件套</a><a  href="/category-xialiangbei/?site_from=sy_lc_jjjs" target="_blank">夏凉被</a><a  href="/keywords/rujiaozheng/?site_from=sy_lc_jjjs" target="_blank">乳胶枕</a><a  href="/keywords/buyichuanglian/?site_from=sy_lc_jjjs" target="_blank">布艺窗帘</a><a  href="/keywords/jiayongditan/?site_from=sy_lc_jjjs" target="_blank">家用地毯</a><a  href="/category-zhiwujia/?site_from=sy_lc_jjjs" target="_blank">置物架</a><a  href="/keywords/youhua/?site_from=sy_lc_jjjs" target="_blank">创意油画</a><a  href=" /category-zhuangshihua/?site_from=sy_lc_jjjs" target="_blank">装饰壁画</a><a  href="/keywords/zhaopianxiangkuang/?site_from=sy_lc_jjjs" target="_blank">照片相框</a><a  href="/keywords/jiajubaijian/?site_from=sy_lc_jjjs" target="_blank">家居摆件</a><a  href="/keywords/fzhf/?site_from=sy_lc_jjjs" target="_blank">仿真花</a><a class="last" href="/category-canju/?site_from=sy_lc_jjjs" target="_blank">厨用餐具</a>                    </div>
                    <div class="ad">
                        <a href="http://www.meilele.com/brand-588/?site_from=sy_lc_logo25" title="博洋家纺" target="_blank" class=" "><img src="http://image.meilele.com/images/blank.gif" data-src="http://image.meilele.com/images/201603/1459297807250550184.jpg" alt="博洋家纺"></a><a href="http://www.meilele.com/brand-1070/?site_from=sy_lc_logo26" title="凯黎舍" target="_blank" class="last "><img src="http://image.meilele.com/images/blank.gif" data-src="http://img004.mllres.com/images/201611/1480008497538449458.jpg" alt="凯黎舍"></a><a href="http://www.meilele.com/brand-278/?site_from=sy_lc_logo27" title="馨美艺饰品" target="_blank" class=" second"><img src="http://image.meilele.com/images/blank.gif" data-src="http://img001.mllres.com/images/201603/1459297920428603517.jpg" alt="馨美艺饰品"></a><a href="http://www.meilele.com/brand-540/?site_from=sy_lc_logo28" title="悦邻家居" target="_blank" class="last second"><img src="http://image.meilele.com/images/blank.gif" data-src="http://img004.mllres.com/images/201603/1459297958004780501.jpg" alt="悦邻家居"></a>                    </div>
                </div>
                <div class="floor-right clearfix" data-index="0">
                    <div class="scroll-bar JS_floor_banner fl">
                                                <div class="content">
                            <a href="http://www.meilele.com/category-chuanglian/goods-234371.html?site_from=sy_lc_jjjsjp1" target="_blank" title="欧式宫廷风雪尼尔窗帘">   
                            <div class="content-banner">
                                <span class="txt-l">立体加密提花工艺</span>
                                <p class="txt-s">欧式宫廷风雪尼尔窗帘 &yen;<span class="JS_async_price" data-goods_id="234371">228</span></p>
                            </div>
                            </a>
                        </div>
                                                <div class="content">
                            <a href="http://www.meilele.com/category-chuangpintaojian/goods-206732.html?site_from=sy_lc_jjjsjp2" target="_blank" title="环保印染全棉印花四件套
">   
                            <div class="content-banner">
                                <span class="txt-l">缤纷靓丽田园风</span>
                                <p class="txt-s">环保印染全棉印花四件套 &yen;<span class="JS_async_price" data-goods_id="206732">139</span></p>
                            </div>
                            </a>
                        </div>
                                                <div class="content">
                            <a href="http://www.meilele.com/category-ditan/goods-153130.html?site_from=sy_lc_jjjsjp3" target="_blank" title="欧式经典花纹纯羊毛地毯">   
                            <div class="content-banner">
                                <span class="txt-l">厚实绒面 柔软细腻</span>
                                <p class="txt-s">欧式经典花纹纯羊毛地毯 &yen;<span class="JS_async_price" data-goods_id="153130">2999</span></p>
                            </div>
                            </a>
                        </div>
                                                <div class="nav">
                            <div class="list JS_list_banner">
                                <a href="javascript:;" target="_blank"></a><a href="javascript:;" target="_blank"></a><a href="javascript:;" target="_blank"></a>                            </div>
                        </div>
                        <ul class="JS_ul_banner">
                                                        <li><a href="http://www.meilele.com/category-chuanglian/goods-234371.html?site_from=sy_lc_jjjsjp1" target="_blank" title="欧式宫廷风雪尼尔窗帘"><img src="http://image.meilele.com/images/blank.gif" data-src="http://img001.mllres.com/images/201611/1479416983819777225.jpg" alt="欧式宫廷风雪尼尔窗帘"/></a></li>
                                                        <li><a href="http://www.meilele.com/category-chuangpintaojian/goods-206732.html?site_from=sy_lc_jjjsjp2" target="_blank" title="环保印染全棉印花四件套
"><img src="http://image.meilele.com/images/blank.gif" data-src="http://img001.mllres.com/images/201703/1489111244338149613.jpg" alt="环保印染全棉印花四件套
"/></a></li>
                                                        <li><a href="http://www.meilele.com/category-ditan/goods-153130.html?site_from=sy_lc_jjjsjp3" target="_blank" title="欧式经典花纹纯羊毛地毯"><img src="http://image.meilele.com/images/blank.gif" data-src="http://img003.mllres.com/images/201704/1491002489170820454.jpg" alt="欧式经典花纹纯羊毛地毯"/></a></li>
                                                    </ul>
                    </div>
                                                            <div class="floor-bar s1 fl">
                        <a href="http://www.meilele.com/category-chuanglian/goods-237262.html?site_from=sy_lc_jjjsjp4" title="雪尼尔贴绒布绣花窗帘

" target="_blank"><img src="http://image.meilele.com/images/blank.gif" alt="" data-src="http://img002.mllres.com/images/201703/1488490145409467635.jpg"></a>
                        <ul>
                            <li class="name"><a href="http://www.meilele.com/category-chuanglian/goods-237262.html?site_from=sy_lc_jjjsjp4" title="雪尼尔贴绒布绣花窗帘

" target="_blank">淡雅恬静 浪漫舒适</a></li>
                            <li class="tips"><a href="http://www.meilele.com/category-chuanglian/goods-237262.html?site_from=sy_lc_jjjsjp4" title="雪尼尔贴绒布绣花窗帘

" target="_blank">雪尼尔贴绒布绣花窗帘</a></li>
                            <li class="prize"><a href="http://www.meilele.com/category-chuanglian/goods-237262.html?site_from=sy_lc_jjjsjp4" title="雪尼尔贴绒布绣花窗帘

" target="_blank">&yen;<span class="JS_async_price" data-goods_id="237262">298</span></a></li>
                        </ul>
                    </div>
                                                                                                                                            <div class="fl">
                        <div class="floor-bar s2">
                            <a href="http://www.meilele.com/category-ditan/goods-202473.html?site_from=sy_lc_jjjsjp5" title="欧式多尼尔提花圆形地毯" target="_blank"><img src="http://image.meilele.com/images/blank.gif" alt="欧式多尼尔提花圆形地毯" data-src="http://image.meilele.com/images/201704/1491002986586456810.jpg"></a>
                            <ul>
                                <li class="name"><a href="http://www.meilele.com/category-ditan/goods-202473.html?site_from=sy_lc_jjjsjp5" title="欧式多尼尔提花圆形地毯" target="_blank">多重包边不脱线<span class="activity">团购

</span></a></li>
                                <li class="tips"><a href="http://www.meilele.com/category-ditan/goods-202473.html?site_from=sy_lc_jjjsjp5" title="欧式多尼尔提花圆形地毯" target="_blank">欧式多尼尔提花圆形地毯</a></li>
                                <li class="prize"><a href="http://www.meilele.com/category-ditan/goods-202473.html?site_from=sy_lc_jjjsjp5" title="欧式多尼尔提花圆形地毯" target="_blank">&yen;<span class="JS_async_price" data-goods_id="202473">99</span></a></li>
                            </ul>
                        </div>
                    </div>
                                                                                                                        <div class="fl">
                        <div class="floor-bar s2">
                            <a href="http://www.meilele.com/category-liangshaijia/goods-105626.html?site_from=sy_lc_jjjsjp6" title="免安装不锈钢晾晒架" target="_blank"><img src="http://image.meilele.com/images/blank.gif" alt="免安装不锈钢晾晒架" data-src="http://image.meilele.com/images/201702/1486944710755776977.jpg"></a>
                            <ul>
                                <li class="name"><a href="http://www.meilele.com/category-liangshaijia/goods-105626.html?site_from=sy_lc_jjjsjp6" title="免安装不锈钢晾晒架" target="_blank">稳固双轴承重<span class="activity">团购

</span></a></li>
                                <li class="tips"><a href="http://www.meilele.com/category-liangshaijia/goods-105626.html?site_from=sy_lc_jjjsjp6" title="免安装不锈钢晾晒架" target="_blank">免安装不锈钢晾晒架</a></li>
                                <li class="prize"><a href="http://www.meilele.com/category-liangshaijia/goods-105626.html?site_from=sy_lc_jjjsjp6" title="免安装不锈钢晾晒架" target="_blank">&yen;<span class="JS_async_price" data-goods_id="105626">178</span></a></li>
                            </ul>
                        </div>
                    </div>
                                                                                                                                            <div class="floor-bar s4 fl">
                        <a href="http://www.meilele.com/category-zhuangshihua/goods-180727.html?site_from=sy_lc_jjjsjp7" title="发财树款有框装饰画

" target="_blank"><img src="http://image.meilele.com/images/blank.gif" alt="" data-src="http://image.meilele.com/images/201703/1489706216202856883.jpg"></a>
                        <ul>
                            <li class="name"><a href="http://www.meilele.com/category-zhuangshihua/goods-180727.html?site_from=sy_lc_jjjsjp7" title="发财树款有框装饰画

" target="_blank">玄关必备 寓意吉祥</a></li>
                            <li class="tips"><a href="http://www.meilele.com/category-zhuangshihua/goods-180727.html?site_from=sy_lc_jjjsjp7" title="发财树款有框装饰画

" target="_blank">发财树款有框装饰画</a></li>
                            <li class="prize"><a href="http://www.meilele.com/category-zhuangshihua/goods-180727.html?site_from=sy_lc_jjjsjp7" title="发财树款有框装饰画

" target="_blank">&yen;<span class="JS_async_price" data-goods_id="180727">390</span></a></li>
                        </ul>
                    </div>
                                                                                                                        <div class="floor-bar s5 fl">
                        <a href="http://www.meilele.com/category-chuanglian/goods-284612.html?site_from=sy_lc_jjjsjp8" title="窗帘窗纱三房一厅套餐

" target="_blank"><img src="http://image.meilele.com/images/blank.gif" alt="" data-src="http://image.meilele.com/images/201704/1491003065030221196.jpg"></a>
                        <ul>
                            <li class="name"><a href="http://www.meilele.com/category-chuanglian/goods-284612.html?site_from=sy_lc_jjjsjp8" title="窗帘窗纱三房一厅套餐

" target="_blank">全屋定制 简单放心</a></li>
                            <li class="tips"><a href="http://www.meilele.com/category-chuanglian/goods-284612.html?site_from=sy_lc_jjjsjp8" title="窗帘窗纱三房一厅套餐

" target="_blank">窗帘窗纱三房一厅套餐</a></li>
                            <li class="prize"><a href="http://www.meilele.com/category-chuanglian/goods-284612.html?site_from=sy_lc_jjjsjp8" title="窗帘窗纱三房一厅套餐

" target="_blank">&yen;<span class="JS_async_price" data-goods_id="284612">7999</span></a></li>
                        </ul>
                    </div>
                                                                                                                        <div class="floor-bar s6 fl">
                        <a href="http://www.meilele.com/category-yijiaguagou/goods-221889.html?site_from=sy_lc_jjjsjp9" title="树形实木九头挂衣架" target="_blank"><img src="http://image.meilele.com/images/blank.gif" alt="" data-src="http://img003.mllres.com/images/201702/1487295282107289868.jpg"></a>
                        <ul>
                            <li class="name"><a href="http://www.meilele.com/category-yijiaguagou/goods-221889.html?site_from=sy_lc_jjjsjp9" title="树形实木九头挂衣架" target="_blank">质硬稳固承重强<span class="activity">团购

</span></a></li>
                            <li class="tips"><a href="http://www.meilele.com/category-yijiaguagou/goods-221889.html?site_from=sy_lc_jjjsjp9" title="树形实木九头挂衣架" target="_blank">树形实木九头挂衣架</a></li>
                            <li class="prize"><a href="http://www.meilele.com/category-yijiaguagou/goods-221889.html?site_from=sy_lc_jjjsjp9" title="树形实木九头挂衣架" target="_blank">&yen;<span class="JS_async_price" data-goods_id="221889">99</span></a></li>
                        </ul>
                    </div>
                                                                                                                        <div class="floor-bar s7 fl">
                        <a href="http://www.meilele.com/category-fengshuibaijian/goods-46189.html?site_from=sy_lc_jjjsjp10" title="仿实木风水象换鞋凳


" target="_blank"><img src="http://image.meilele.com/images/blank.gif" alt="" data-src="http://img002.mllres.com/images/201703/1489706329114892909.jpg"></a>
                        <ul>
                            <li class="name"><a href="http://www.meilele.com/category-fengshuibaijian/goods-46189.html?site_from=sy_lc_jjjsjp10" title="仿实木风水象换鞋凳


" target="_blank">浓浓异域风情</a></li>
                            <li class="tips"><a href="http://www.meilele.com/category-fengshuibaijian/goods-46189.html?site_from=sy_lc_jjjsjp10" title="仿实木风水象换鞋凳


" target="_blank">仿实木风水象换鞋凳</a></li>
                            <li class="prize"><a href="http://www.meilele.com/category-fengshuibaijian/goods-46189.html?site_from=sy_lc_jjjsjp10" title="仿实木风水象换鞋凳


" target="_blank">&yen;<span class="JS_async_price" data-goods_id="46189">268</span></a></li>
                        </ul>
                    </div>
                                                        </div>
                                <div class="floor-right clearfix" data-index="1" style="display:none">
                                                            <div class="scroll-bar fl">
                        <div class="content">
                            <a href="http://www.meilele.com/category-zhuangshihua/goods-294573.html?site_from=sy_lc_jjjsxp1" target="_blank" title="纯手工蚕丝刺绣装饰画">   
                                <div class="content-banner">
                                    <span class="txt-l">幽幽青荷添春色</span>
                                    <p class="txt-s">纯手工蚕丝刺绣装饰画 &yen;<span class="JS_async_price" data-goods_id="294573">980</span></p>
                                </div>
                            </a>
                        </div>
                        <a href="http://www.meilele.com/category-zhuangshihua/goods-294573.html?site_from=sy_lc_jjjsxp1" title="纯手工蚕丝刺绣装饰画" target="_blank"><img src="http://image.meilele.com/images/blank.gif" alt="纯手工蚕丝刺绣装饰画" data-tab-src="http://img004.mllres.com/images/201704/1491012354549771176.jpg" width="620" height="449"></a>
                    </div>
                                                                                                                                                                <div class="floor-bar s1 fl">
                        <a href="http://www.meilele.com/category-chuangli/goods-322087.html?site_from=sy_lc_jjjsxp2" title="简约舒适可机洗纯棉床笠" target="_blank"><img src="http://image.meilele.com/images/blank.gif" alt="简约舒适可机洗纯棉床笠" data-tab-src="http://image.meilele.com/images/201703/1489974855341271584.jpg"></a>
                        <ul>
                            <li class="name"><a href="http://www.meilele.com/category-chuangli/goods-322087.html?site_from=sy_lc_jjjsxp2" title="简约舒适可机洗纯棉床笠" target="_blank">轻松告别杂乱小窝<span class="activity">包邮</span></a></li>
                            <li class="tips"><a href="http://www.meilele.com/category-chuangli/goods-322087.html?site_from=sy_lc_jjjsxp2" title="简约舒适可机洗纯棉床笠" target="_blank">简约舒适可机洗纯棉床笠</a></li>
                            <li class="prize"><a href="http://www.meilele.com/category-chuangli/goods-322087.html?site_from=sy_lc_jjjsxp2" title="简约舒适可机洗纯棉床笠" target="_blank">&yen;<span class="JS_async_price" data-goods_id="322087">199</span></a></li>
                        </ul>
                    </div>
                                                                                                                                                                <div class="fl">
                        <div class="floor-bar s2">
                            <a href="http://www.meilele.com/category-fangzhenhua/goods-317311.html?site_from=sy_lc_jjjsxp3" title="手感过胶含苞情人玫瑰" target="_blank"><img src="http://image.meilele.com/images/blank.gif" alt="手感过胶含苞情人玫瑰" data-tab-src="http://image.meilele.com/"></a>
                            <ul>
                                <li class="name"><a href="http://www.meilele.com/category-fangzhenhua/goods-317311.html?site_from=sy_lc_jjjsxp3" title="手感过胶含苞情人玫瑰" target="_blank">细微处 见优雅</a></li>
                                <li class="tips"><a href="http://www.meilele.com/category-fangzhenhua/goods-317311.html?site_from=sy_lc_jjjsxp3" title="手感过胶含苞情人玫瑰" target="_blank">手感过胶含苞情人玫瑰</a></li>
                                <li class="prize"><a href="http://www.meilele.com/category-fangzhenhua/goods-317311.html?site_from=sy_lc_jjjsxp3" title="手感过胶含苞情人玫瑰" target="_blank">&yen;<span class="JS_async_price" data-goods_id="317311">9.9</span></a></li>
                            </ul>
                        </div>
                    </div>
                                                                                                                                            <div class="fl">
                        <div class="floor-bar s2">
                            <a href="http://www.meilele.com/category-zhenxin/goods-317346.html?site_from=sy_lc_jjjsxp4" title="高品质天然乳胶保健按摩枕" target="_blank"><img src="http://image.meilele.com/images/blank.gif" alt="高品质天然乳胶保健按摩枕" data-tab-src="http://img002.mllres.com/images/201702/1487902315098544268.jpg"></a>
                            <ul>
                                <li class="name"><a href="http://www.meilele.com/category-zhenxin/goods-317346.html?site_from=sy_lc_jjjsxp4" title="高品质天然乳胶保健按摩枕" target="_blank">释压助眠 有效护颈</a></li>
                                <li class="tips"><a href="http://www.meilele.com/category-zhenxin/goods-317346.html?site_from=sy_lc_jjjsxp4" title="高品质天然乳胶保健按摩枕" target="_blank">高品质天然乳胶保健按摩枕</a></li>
                                <li class="prize"><a href="http://www.meilele.com/category-zhenxin/goods-317346.html?site_from=sy_lc_jjjsxp4" title="高品质天然乳胶保健按摩枕" target="_blank">&yen;<span class="JS_async_price" data-goods_id="222142">36</span></a></li>
                            </ul>
                        </div>
                    </div>
                                                                                                                                                                <div class="floor-bar t5 fl">
                        <a href="http://www.meilele.com/category-chuangpintaojian/goods-322600.html?site_from=sy_lc_jjjsxp5" title="60S长绒棉精密绣花四件套" target="_blank"><img src="http://image.meilele.com/images/blank.gif" alt="" data-tab-src="http://img002.mllres.com/images/201703/1488736762067718082.jpg"></a>
                        <ul>
                            <li class="name"><a href="http://www.meilele.com/category-chuangpintaojian/goods-322600.html?site_from=sy_lc_jjjsxp5" title="60S长绒棉精密绣花四件套" target="_blank">奢雅绚丽孔雀刺绣<span class="activity">包邮</span></a></li>
                            <li class="tips"><a href="http://www.meilele.com/category-chuangpintaojian/goods-322600.html?site_from=sy_lc_jjjsxp5" title="60S长绒棉精密绣花四件套" target="_blank">60S长绒棉精密绣花四件套</a></li>
                            <li class="prize"><a href="http://www.meilele.com/category-chuangpintaojian/goods-322600.html?site_from=sy_lc_jjjsxp5" title="60S长绒棉精密绣花四件套" target="_blank">&yen;<span class="JS_async_price" data-goods_id="322600">699</span></a></li>
                        </ul>
                    </div>
                                                                                                                                            <div class="floor-bar t6 fl">
                        <a href="http://www.meilele.com/category-liangxi/goods-322567.html?site_from=sy_lc_jjjsxp6" title="优质蔺草精编草席三件套" target="_blank"><img src="http://image.meilele.com/images/blank.gif" alt="" data-tab-src="http://image.meilele.com/images/201702/1487527409278766874.jpg"></a>
                        <ul>
                            <li class="name"><a href="http://www.meilele.com/category-liangxi/goods-322567.html?site_from=sy_lc_jjjsxp6" title="优质蔺草精编草席三件套" target="_blank">健康天然不刺激<span class="activity">包邮</span></a></li>
                            <li class="tips"><a href="http://www.meilele.com/category-liangxi/goods-322567.html?site_from=sy_lc_jjjsxp6" title="优质蔺草精编草席三件套" target="_blank">优质蔺草精编草席三件套</a></li>
                            <li class="prize"><a href="http://www.meilele.com/category-liangxi/goods-322567.html?site_from=sy_lc_jjjsxp6" title="优质蔺草精编草席三件套" target="_blank">&yen;<span class="JS_async_price" data-goods_id="322567">139</span></a></li>
                        </ul>
                    </div>
                                                                                                                                            <div class="floor-bar t7 fl">
                        <a href="http://www.meilele.com/category-chuangpintaojian/goods-324688.html?site_from=sy_lc_jjjsxp7" title="喜裁缝新品天丝四件套" target="_blank"><img src="http://image.meilele.com/images/blank.gif" alt="" data-tab-src="http://img001.mllres.com/images/201704/1491012558836853206.jpg"></a>
                        <ul>
                            <li class="name"><a href="http://www.meilele.com/category-chuangpintaojian/goods-324688.html?site_from=sy_lc_jjjsxp7" title="喜裁缝新品天丝四件套" target="_blank">清爽丝滑 度夏良品<span class="activity">包邮</span></a></li>
                            <li class="tips"><a href="http://www.meilele.com/category-chuangpintaojian/goods-324688.html?site_from=sy_lc_jjjsxp7" title="喜裁缝新品天丝四件套" target="_blank">喜裁缝新品天丝四件套</a></li>
                            <li class="prize"><a href="http://www.meilele.com/category-chuangpintaojian/goods-324688.html?site_from=sy_lc_jjjsxp7" title="喜裁缝新品天丝四件套" target="_blank">&yen;<span class="JS_async_price" data-goods_id="324688">299</span></a></li>
                        </ul>
                    </div>
                                                                                                                                            <div class="floor-bar t8 fl">
                        <a href="http://www.meilele.com/category-shounagui/goods-322865.html?site_from=sy_lc_jjjsxp8" title="优雅波点蕾丝三抽储物架" target="_blank"><img src="http://image.meilele.com/images/blank.gif" alt="" data-tab-src="http://img002.mllres.com/images/201703/1488739387534918214.jpg"></a>
                        <ul>
                            <li class="name"><a href="http://www.meilele.com/category-shounagui/goods-322865.html?site_from=sy_lc_jjjsxp8" title="优雅波点蕾丝三抽储物架" target="_blank">玩转收纳 一步到位</a></li>
                            <li class="tips"><a href="http://www.meilele.com/category-shounagui/goods-322865.html?site_from=sy_lc_jjjsxp8" title="优雅波点蕾丝三抽储物架" target="_blank">优雅波点蕾丝三抽储物架</a></li>
                            <li class="prize"><a href="http://www.meilele.com/category-shounagui/goods-322865.html?site_from=sy_lc_jjjsxp8" title="优雅波点蕾丝三抽储物架" target="_blank">&yen;<span class="JS_async_price" data-goods_id="322865">99</span></a></li>
                        </ul>
                    </div>
                 </div>
            </div>
        </div>
    </div>
    
    <div class="ad-banner">
        <div class="w">
            <a href="http://www.meilele.com/topic/201703_znqdc.html?site_from=sy_yzhf#JS_img_18" target="_blank" title="666万周年庆典红包"><img src="http://img001.mllres.com/images/201703/1489887986142194790.jpg"></a>
        </div>
    </div> 
   
    
    <div class="default_stairs_w">
        <div class="w clearfix" style="position:relative">
            <div class="default_stairs none" id="JS_default_stairs" onclick="window._gaq.push(['_trackEvent','2016版首页','点击左侧定位器','click'])">
                <a href="javascript:;" class="stairs_nav floor1">
                    <span class="icon"></span>
                    <em class="name">卧室<br>家具</em>
                    <i class="stairs_line"></i>
                </a>
                <a href="javascript:;" class="stairs_nav floor2">
                    <span class="icon"></span>
                    <em class="name">客厅<br>家具</em>
                    <i class="stairs_line"></i>
                </a>
                <a href="javascript:;" class="stairs_nav floor3">
                    <span class="icon"></span>
                    <em class="name">餐厅<br>家具</em>
                    <i class="stairs_line"></i>
                </a>
                <a href="javascript:;" class="stairs_nav floor4">
                    <span class="icon"></span>
                    <em class="name">书房<br>家具</em>
                    <i class="stairs_line"></i>
                </a>
                <a href="javascript:;" class="stairs_nav floor5">
                    <span class="icon"></span>
                    <em class="name">儿童房<br>家具</em>
                    <i class="stairs_line"></i>
                </a>
                <a href="javascript:;" class="stairs_nav floor6">
                    <span class="icon"></span>
                    <em class="name">建材<br>灯饰</em>
                    <i class="stairs_line"></i>
                </a>
                <a href="javascript:;" class="stairs_nav floor7">
                    <span class="icon"></span>
                    <em class="name">家居<br>家饰</em>
                </a>
                <div class="stairs-cover"></div>
            </div>
        </div>
    </div>
    
    
    
    <div class="footer-box">

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
</div>

   

<script src="http://image.meilele.com/js/mll/jq.js?0419"></script>
//返回顶部 
<script>
$.__IMG = 'http://image.meilele.com' || 'http://image.meilele.com';

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
</script><style>
.back_to_top .in_box.back_to_top_bonus{background:url(http://image.meilele.com/images/201412/1418433378115509116.gif) -44px 0;}
.back_to_top_hover .in_box.back_to_top_bonus{background-position:0 0;}
</style>
<script type="text/javascript">
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

    <div class="as-total-suggest" id="JS_search_fixed_bar">
       <div class="w">
            <div id="JS_search_fixed_suggest" class="fixed-suggest"></div>
            <div data-target="search" id="JS_search_history2" class="history clearfix"></div>
       </div>
    </div>
    
    
    <div id="static_dynamic" page_sn="city_index" rgn_id="161" debug=""></div>
    
    
    
    <script type="text/javascript">
        var AutoPlay=function(){this.initialize()};AutoPlay.prototype={initialize:function(){var b=this;this.oBox=$("#JS_mll_scroll_bar");this.oUl=$("ul.scroll-content");this.oLi=$("#JS_mll_scroll_bar .scroll-item");this.obImg=$(".sc-big");this.osImg=$(".sc-small");this.timer=null;this.autoTimer=null;this.iNow=0;this.aBtn=$(".scroll-btn span");this.toggle();this.lock=false;this.autoTimer=setInterval(function(){if(b.lock){return}b.next()},4000);this.oBox.mouseenter(function(){b.lock=true;clearInterval(b.autoTimer)});this.oBox.mouseleave(function(){b.autoTimer=setInterval(function(){b.next()},4000)});for(var a=0;a<this.aBtn.length;a++){this.aBtn[a].index=a;this.aBtn[a].onmouseover=function(){if(this.index==b.iNow){return}b.iNow=this.index;b.toggle()}}},toggle:function(){for(var a=0;a<this.aBtn.length;a++){this.aBtn[a].className=""}this.aBtn[this.iNow].className="current";this.lazy(this.iNow);this.doShow(this.iNow)},next:function(){var a=this;this.iNow++;this.iNow==this.aBtn.length&&(this.iNow=0);this.toggle()},lazy:function(b){var a=this.oLi.eq(b);if(!a.data("imgLoaded")){a.find("img").each(function(){jQuery(this).prop("src",$(this).attr("lazy-src")).removeAttr("lazy-src")});a.data("imgLoaded",1)}},doShow:function(a){var b=this;b.oLi.addClass("none");b.oLi.fadeOut(500);b.oLi.eq(a).fadeIn(500)}};function stairs_show(){var a=document.body.clientWidth,d=window.LOAD?1460:1190,b=a-d;if(b<110){jQuery("#JS_default_stairs").addClass("none")}else{jQuery("#JS_default_stairs").removeClass("none")}}function stairs_move(){var a=$("#JS_default_stairs"),b=a.find("a"),c=true;$(window).on("scroll",function(){var e=window.pageYOffset||document.documentElement.scrollTop||document.body.scrollTop||0;a.removeClass("out");if(e>=600){if(!-[1]){a.show()}else{a.css({transform:"scale(1)",opacity:1})}a.find(".stairs-cover").addClass("none");stairs_show()}else{if(!-[1]){a.hide()}else{a.css({transform:"scale(1.2)",opacity:0})}a.find(".stairs-cover").removeClass("none")}var d=(e-570)/(window.LOAD?828:688);b.each(function(){jQuery(this).removeClass("current")});if(d>0&&d<7){if(d<1){b.eq(0).addClass("current")}else{var f=parseInt((e-570)/(window.LOAD?828:688));b.eq(f).addClass("current")}}});a.on("mouseover","a",function(){jQuery(this).addClass("hover")}).on("mouseout","a",function(){jQuery(this).removeClass("hover")}).on("click","a",function(){var e=$(".default_floor_show").eq(0).offset().top-59;var d=$(this).index();window.scroll(0,e+(d*(window.LOAD?828:688))+(d==8?262:0))})}function _INIT_HEAD_SEARCH(data){var json;try{json=eval(data.html_content)}catch(e){}if(json&&json.length){var url=location.pathname;var wordIndex=-1;var tmpFilter;window.__HEAD_SEARCH_WORDS_ARR=[];window.__HEAD_SEARCH_WORDS_OBJ={};if(/\/jiaju\//.test(url)){wordIndex=0}else{if(/\/jiancai\//.test(url)){wordIndex=1}else{if(/\/shipin\//.test(url)){wordIndex=2}}}for(var k=0,kk=json.length;k<kk;k++){tmpFilter=json[k].type.split("");if(wordIndex==-1||tmpFilter[wordIndex]==1){__HEAD_SEARCH_WORDS_ARR.push(json[k]);__HEAD_SEARCH_WORDS_OBJ[json[k].text]=json[k]}}var inpt=$("#JS_MLL_search_header_input")[0];var inpt2=$("#JS_MLL_search_fixed_input")[0];if(__HEAD_SEARCH_WORDS_ARR.length&&inpt&&inpt.value==""){inpt.value=MLL_Header_search_words();inpt2.value=MLL_Header_search_words();inpt.setAttribute("data-sug","none");inpt2.setAttribute("data-sug","none");inpt.onfocus=function(){this.value="";this.onfocus=function(){}};inpt2.onfocus=function(){this.value="";this.onfocus=function(){}};inpt.onblur=function(){if(this.value==""){inpt.setAttribute("data-sug","none");this.value=MLL_Header_search_words();this.onfocus=function(){this.value="";this.onfocus=function(){}}}};inpt2.onblur=function(){if(this.value==""){inpt2.setAttribute("data-sug","none");this.value=MLL_Header_search_words();this.onfocus=function(){this.value="";this.onfocus=function(){}}}}}}}function MLL_header_search_submit(d){var h="";var c=$("#JS_MLL_search_header_input")[0];var f=$("#JS_search_form")[0];var b=$("#JS_MLL_search_fixed_input")[0];if(d){h=b.value+""}else{h=c.value+""}h=$.trim(h||"");var e=h;if(h&&e.replace(/[^\x00-\xff]/g,"**").length<31){var g=$.cookie("search_h");if(g){g=unescape(g);g=g.split("*#");g=a(g,h);if(g.length>9){g.shift()}g=g.join("*#");g+="*#"+h}else{g=h+"*#"}g=escape(g);$.cookie("search_h",g,{path:"/",expires:365})}function a(j,m){var l=[];for(var k=0;k<j.length;k++){if(j[k]!=m){l.push(j[k])}}return l}if(!h){return false}if(window.__HEAD_SEARCH_WORDS_OBJ&&__HEAD_SEARCH_WORDS_OBJ[h]){window.open(__HEAD_SEARCH_WORDS_OBJ[h].href+(__HEAD_SEARCH_WORDS_OBJ[h].href.indexOf("#")>=0?"&":"#")+"kw="+encodeURIComponent(h));return false}else{if(d){b.value=h}else{c.value=h}return true}}function search_move(){jQuery(window).on("scroll",function(){var a=window.pageYOffset||document.documentElement.scrollTop||document.body.scrollTop||0;if(a>=658){jQuery("#JS_search_fixed_bar").css("top",a+41+"px");jQuery("#Js_aSTotalContainer").addClass("show")}else{jQuery("#Js_aSTotalContainer").removeClass("show");jQuery("#JS_search_history2").hide();jQuery("#JS_MLL_search_fixed_input").blur()}})}function initFloors(){for(var b=0;b<7;b++){var a="_floor_slide_"+b;var a=new floor_slide({content:$(".JS_floor_banner").eq(b).find(".content"),li:$(".JS_ul_banner").eq(b).find("li"),nav:$(".JS_list_banner").eq(b).find("a"),divbox:$(".JS_floor_banner").eq(b),img:$(".JS_ul_banner").eq(b).find("li").find("img")});a.init(0);(function(c){if(jQuery("#JS_floor_nav_"+c+" li").length<2){return}jQuery("#JS_floor_nav_"+c+" li").hover(function(){var d=$(this).data("index");var f=$("#JS_floor_table_"+c+' .floor-right[data-index="'+d+'"]');$(this).parent().find(".hover").removeClass("hover");$(this).addClass("hover");$("#JS_floor_table_"+c+" .floor-right").css("display","none");f.css("display","block");if(!f.data("imgLoaded")){var e=f.find("img");e.each(function(){jQuery(this).prop("src",$(this).attr("data-tab-src")).removeAttr("data-tab-src")});f.data("imgLoaded",1)}})})(b+1)}}function floor_slide(a){this.main=a.main,this.content=a.content;this.Li=a.li;this.num=this.Li.length;this.nav=a.nav;this.banCont=a.divbox;this.timer=null;this.imgs=a.img;this.init=function(b){this.column(b);this.addEve()};this.column=function(b){var c=this;c.focusImg(b);c.navE(b);c.timer=setInterval(function(){b++;if(b>c.num-1){b=0}c.focusImg(b);c.navE(b);c.lazyImg(b)},4000)};this.focusImg=function(b){var f=!-[1];var e=this;for(var c=0,d=e.num;c<d;c++){if(f){e.Li.eq(c).css("opacity",0);jQuery(this).css("zIndex",0).addClass("none")}else{e.Li.eq(c).animate({opacity:0},200,function(){jQuery(this).css("zIndex",0).addClass("none")})}if(e.content){if(f){e.content.eq(c).css("opacity",0);jQuery(this).addClass("none")}else{e.content.eq(c).animate({opacity:0},200,function(){jQuery(this).addClass("none")})}}}if(e.main){jQuery("#JS_mll_scroll_bar").css("background","#"+e.Li.eq(b).data("bgcolor"))}e.Li.eq(b).removeClass("none");e.Li.eq(b).css("zIndex",2);if(f){e.Li.eq(b).css("opacity",1)}else{e.Li.eq(b).stop(true).animate({opacity:1},200)}if(e.content){e.content.eq(b).removeClass("none");if(f){e.content.eq(b).css("opacity",1)}else{e.content.eq(b).stop(true).animate({opacity:1},200)}}};this.navE=function(b){this.nav.each(function(){jQuery(this).removeClass("hover")});this.nav.eq(b).addClass("hover")};this.delay=function(e,f){var c=0,b=10,e=(e*1000)/b,h=this,g=setInterval(function(){c++;if(c==b){clearInterval(g);f.apply(h)}},e);h.onmouseout=function(){clearInterval(g)}};this.lazyImg=function(c){var b=this.imgs.eq(c).attr("lazy-src");if(this.main){var d=this.imgs.eq(c).next().attr("lazy-src");this.imgs.next().eq(c).attr("src",d).removeAttr("lazy-src")}if(b){this.imgs.eq(c).attr("src",b).removeAttr("lazy-src")}};this.stop=function(){clearInterval(this.timer)};this.addEve=function(){var b=this;b.nav.each(function(c){jQuery(this).on("mouseover",function(){if(!window.VBArray){b.delay.apply(this,[0.18,function(){b.navE();$(this).addClass("hover");if($(this).hasClass("hover")){b.focusImg(c);b.lazyImg(c)}}])}else{b.navE();$(this).addClass("hover");if($(this).hasClass("hover")){b.focusImg(c);b.lazyImg(c)}}})});b.banCont.on({mouseover:function(){b.stop()},mouseout:function(){b.nav.each(function(c){if(jQuery(this).hasClass("hover")){b.column(c)}})}})}}function exprInfoListMarquee(){var d=$("#JS_scroll_out_box");if(!d.length){return false}window._JS_ZZ_LOCK_=false;if(d.length<=0){return}var b=d.find("li"),a=b.length;if(a>=5){d.hover(function(){window._JS_ZZ_LOCK_=true},function(){window._JS_ZZ_LOCK_=false});var c=d.html();c+=c;d.html(c);setInterval(e,2000)}function e(){if(window._JS_ZZ_LOCK_){return}var f=parseInt(d.css("margin-top"))||0;if(f<=(a)*(-18)){d.css({"margin-top":"0px"});f=0}f-=18;d.animate({"margin-top":f+"px"},200)}}(function(d){var c=false,g=false;var a;var f=d.cookie("sendSmsPhone")||"";DOM.captcha=initInput(d("#JS_captcha"),{txt:"验证码",clsName:["gray"],focusClsName:["black"]});DOM.queryInput=initInput(d("#JS_tel"),{txt:"手机号",clsName:["gray"],focusClsName:["black"]});DOM.codeInput=initInput(d("#JS_code"),{txt:"手机校验码",clsName:["gray"],focusClsName:["black"]});DOM.captchaPic=d("#JS_pic_captcha");DOM.queryIcon=d("#JS_query_icon");DOM.captchaIcon=d("#JS_captcha_icon");DOM.sendCodeBtn=d("#sendCode");DOM.sendCodeAgain=d("#JS_send_again");DOM.queryModify=d("#JS_query_modify");DOM.sendSubmit=d("#sendSubmit");if(f){DOM.queryInput.val(f);g=true}DOM.queryInput.setParam("blurFun",function(k){var j=/^1\d{10}$/ig,l=DOM.queryInput.val(),i=l.match(j);if(l==DOM.queryInput.getText()){g=false;return false}if(i==null){DOM.queryIcon.removeClass("query-success").addClass("query-error");g=false;return false}g=true;DOM.queryIcon.removeClass("query-error").addClass("query-success")});d.checkCaptcha(DOM.captcha,{success:function(i){DOM.captchaIcon.removeClass("query-error").addClass("query-success");c=true},error:function(i){DOM.captchaIcon.removeClass("query-success").addClass("query-error");c=false}});d.getCaptcha(DOM.captchaPic);DOM.captchaPic.click(function(){b()});function b(){jQuery.getCaptcha(DOM.captchaPic.prop("src","http://image.meilele.com/images/blank.gif"));DOM.captcha[0].focus();DOM.captcha.val("")}DOM.sendCodeBtn.on("click",function(){var i=this;if(!g){DOM.queryIcon.removeClass("query-success").addClass("query-error");return false}if(!c){DOM.captchaIcon.removeClass("query-success").addClass("query-error");return false}if(this.lock){return}this.lock=true;d.ajax({url:"/solr_api/captcha/mobileCaptcha/create_send_check_captcha.do?&phoneNumber="+DOM.queryInput.val()+"&durationTime=100&captchaType=quick_search&captcha="+DOM.captcha.val(),cache:false,dataType:"json",success:function(j){i.lock=false;if(j&&j.error==0){d("#JS_tel_txt").text(DOM.queryInput.val());d("#queryForm1").addClass("none").find("input").val("");d("#queryForm2").removeClass("none");d(".query-success").removeClass("query-success");d(".query-error").removeClass("query-error");h=e(DOM.sendCodeAgain);g=false;c=false}else{jQuery.alert(j.msg);b()}},error:function(){jQuery.alert("网络错误请稍候再试");b();i.lock=false}})});var h=function(){return 0};DOM.sendCodeAgain.click(function(){if(h()==0){d("#JS_tel").val(d("#JS_tel_txt").text());g=true;d("#queryForm2").addClass("none").find("input").val("");d("#queryForm1").removeClass("none");d(".query-success").removeClass("query-success");d(".query-error").removeClass("query-error");b()}});DOM.queryModify.on("click",function(){clearInterval(a);DOM.sendCodeAgain.removeClass("sms-disabled").text("重新获取");d("#queryForm2").addClass("none").find("input").val("");d("#queryForm1").removeClass("none");d(".query-success").removeClass("query-success");d(".query-error").removeClass("query-error");b()});DOM.sendSubmit.click(function(){var i=d.trim(d("#JS_tel_txt").text()),k=d("#JS_code").val();var j=this;if(!k||k=="手机校验码"){jQuery.alert("请输入手机验证码");return}if(this.lock){return}this.lock=true;d.ajax({url:"/qsearch/"+i+"/"+k+"/?&phoneNumber="+i+"&mobileCaptcha="+k+"&captchaType=quick_search",cache:false,dataType:"json",success:function(l){jQuery.cookie("sendSmsPhone",i);j.lock=false;if(l&&l.error==0){window.location.href="/quicksearch/"+i+"/order_list/"}else{jQuery.alert(l.msg);j.lock=false}},error:function(){jQuery.alert("网络错误请稍候再试");j.lock=false}})});function e(j){var i=100;typeof a!="undefined"&&clearInterval(a);a=setInterval(function(){if(i>=0){j.addClass("sms-disabled").text((i--)+"秒")}else{j.removeClass("sms-disabled").text("重新获取");i=0;typeof a!="undefined"&&clearInterval(a)}},1000);return function(){return i}}})(jQuery);    </script>
    
    <script type="text/javascript">
        window._STATIC_DATA_={
            site : 'MLL',
            postion_code : 'sy_root',
            city_id : $.cookie('region_id')
        }
        window.__slSignData = {pagename: '首页'};
    </script>
    
    <script type="text/javascript">window.static_dynamic && static_dynamic();</script>        <div id="INIT_Fchat2" class="" style="display: none;width: 58px;height: 127px;right: 5px;top: 190px;_top: expression(eval(document.documentElement.scrollTop+190));background: url(http://image.meilele.com/images/201405/1401178094439.png) 0 0;_background: url(http://image.meilele.com/images/201405/140117892382.gif) 0 0;cursor: pointer;font-size: 12px;z-index: 1500;position: fixed;_position: absolute;overflow: hidden;"><div class="FC_btns FC_number" style="margin-left:24px;margin-top:-1px;" id="JS_FC_number2"></div></div>

    
    <script>
        $.lazyImg.start('both');
        
        $('img').load(function(){
            $(this).animate({'opacity':'1'},200);
        })
        
        $(document).ready(function(){
            
            $('.menu-panel').unbind();
            $('#JS_mll_menu_map').show();
            
            //初始化悬浮搜索
            $('#JS_MLL_search_fixed_input').click(function(){
                historySearch('JS_MLL_search_fixed_input', 'JS_search_history2')
                jQuery.searchKey( 'JS_MLL_search_fixed_input', 'JS_search_fixed_suggest','JS_search_history2' );
                $('#JS_MLL_search_fixed_input').unbind('click');
                $(this).addClass('search-input-focus');
            })
            
            $('body').on('click',function(e){
                e=e || window.event;
                var target=e.target || e.srcElement;
                if ($(target).attr('data-target') != 'search') {
                    $('#JS_search_history2').hide();
                }
            });
            
            $(window).resize(function(){
                var view_w = document.body.clientWidth;
                if(view_w < 1460) {
                    $('body').removeClass('root-body');
                } else if(!$('body').hasClass('root-body')) {
                    $('body').addClass('root-body');
                }
            })

            //轮播
            new AutoPlay();
            stairs_move();
            search_move();
            initFloors();
            exprInfoListMarquee();
            
            if( $.saleNumUpdate ){
                $.saleNumUpdate([{//更新价格
                    'selector': '.JS_async_price',
                    'type': 'price',
                    'param': 'id',
                    'key': 'show_price',
                    'isInt': true
                }]);
            }

        })
    </script>
</body>
</html>
