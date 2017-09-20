$(function(){var b=window._DATA||{};var e=false;var a=b.shop_id;var d=b.is_show_button;var c=b.isSelfSupp;if(d){getKFStatus(a,e,c);}if(d&&!c){window.chatFloatClickTimer=setInterval(function(){if(window.mchat&&window.mchat.config&&$("#JS_FC_chat").length){clearInterval(window.chatFloatClickTimer);
document.getElementById("JS_FC_chat").onclick=function(){window.mchat&&window.mchat.openui(3,{click:"goods_1",shopName:b.shop_name,shopId:b.shop_id});return false;
};return;}if($("#sidebar-container .kefu .content").length){clearInterval(window.chatFloatClickTimer);$("#sidebar-container .kefu .content")[0].onclick=function(){window.mchat&&window.mchat.openui(3,{click:"goods_1",shopName:b.shop_name,shopId:b.shop_id});
return false;};}},2000);}});function getKFStatus(c,e,d){var b="http://chat"+(location.host=="www.meilele.com"?"":"a")+".meilele.com";var a;if(!d){a=b+"/plugins/search/workgroup/?shop_id="+c+"&iu=getOnlineStatus&seller=1";
}else{a=b+"/plugins/fastpath/workgroup/?gType="+encodeURIComponent("客服")+"&iu=getOnlineStatus";}$.ajax({url:a,dataType:"jsonp",ansyc:true,type:"get",jsonp:"callback",success:function(f){if(!d){if(f.error=="0"){f=f.result;
if(f&&f.presence.length>=1&&f.presence[0].m){if($("#goods_kefu").hasClass("off")){$("#goods_kefu").removeClass("off");}e=true;}else{if(!$("#goods_kefu").hasClass("off")){$("#goods_kefu").addClass("off");
}e=false;}if(f["switch"]=="on"){getKFStatusOntime(c,e?2:1);}else{setTimeout(function(){getKFStatus(c,e);},30000);}}else{setTimeout(function(){getKFStatus(c,e);
},30000);}}else{if(f&&f.length>=1&&f[0].m){$("#goods_kefu").removeClass("off");}}}});}function getKFStatusOntime(a,b){$.ajax({url:"/of_async/shopOnline/?shop_id="+a+"&presence="+b,dataType:"json",type:"get",cache:false,success:function(c){if(c.result=="1"){b=c.result;
if(!$("#goods_kefu").hasClass("off")){$("#goods_kefu").addClass("off");}}else{if(c.result=="2"){b=c.result;if($("#goods_kefu").hasClass("off")){$("#goods_kefu").removeClass("off");
}}}if(c.result=="-1"){getKFStatus(a,(b==2?true:false));}else{getKFStatusOntime(a,b);}},error:function(){setTimeout(function(){getKFStatus(a,(b==2?true:false));
},30000);}});}
/*dengyun*248699:2017-02-14 10:41:41*/