<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>点击文字弹出一个DIV层窗口代码</title> 
         <script type="text/javascript" src="scripts/swfobject.js"></script>
        <script type="text/javascript" src="scripts/fullAvatarEditor.js"></script>
        <style> 
        .black_overlay{ 
            display: none; 
            position: absolute; 
            top: 0%; 
            left: 0%; 
            width: 100%; 
            height: 100%; 
            background-color: black; 
            z-index:1001; 
            -moz-opacity: 0.8; 
            opacity:.80; 
            filter: alpha(opacity=88); 
        } 
        .white_content { 
            display: none; 
            position: absolute; 
          
            left: 20%; 
            top:16;
            width: 720px; 
            height: 560px; 
            padding: 10px; 
            border: 0px solid orange; 
            background-color: white; 
            z-index:1002; 
            overflow: auto; 
        } 
    </style> 
    </head> 
    <body> 
        <p>示例弹出层：<a href = "JavaScript:void(0)" onclick = "document.getElementById('light').style.display='block';document.getElementById('fade').style.display='block'">请点这里</a></p> 
        <div id="light" class="white_content">
         <div>
			<div style="width:630px;height:400px;margin: 0 auto;">
				<h1 style="text-align:center">头像上传</h1>
				<div>
					<p id="swfContainer">
                  	  本组件需要安装Flash Player后才可使用，请从<a href="http://www.adobe.com/go/getflashplayer">这里</a>下载安装。
					</p>
				</div>
				<p style="text-align:center"><button onclick = "document.getElementById('light').style.display='none';document.getElementById('fade').style.display='none'">点这里关闭本窗口</button></p>
        	</div>
		</div>
	</div> 
        <div id="fade" class="black_overlay"></div> 
        <script type="text/javascript">
            swfobject.addDomLoadEvent(function () {
                var swf = new fullAvatarEditor("swfContainer", {
					    id: 'swf',
						upload_url: 'jsp/upload.jsp',
						src_upload:2,//默认为0；是否上传原图片的选项，有以下值：0:不上传；1:上传；2 :显示复选框由用户选择
						isShowUploadResultIcon: false,//在上传完成时（无论成功和失败），是否显示表示上传结果的图标
		                src_size: "2MB",//选择的本地图片文件所允许的最大值，必须带单位，如888Byte，88KB，8MB
		                src_size_over_limit: "文件大小超出2MB，请重新选择图片。",//当选择的原图片文件的大小超出指定最大值时的提示文本。可使用占位符{0}表示选择的原图片文件的大小。
		                src_box_width: "300",//原图编辑框的宽度
		                src_box_height: "300",//原图编辑框的高度
		                tab_visible: false,//是否显示选项卡*
		
		                browse_box_width: "300",//图片选择框的宽度
		                browse_box_height: "300",//图片选择框的高度
		
		                avatar_sizes: "200*200",//100*100|50*50|32*32,表示一组或多组头像的尺寸。其间用"|"号分隔。
					}, function (msg) {
						switch(msg.code)
						{
							//case 1 : alert("页面成功加载了组件！");break;
							//case 2 : alert("已成功加载默认指定的图片到编辑面板。");break;
							case 3 :
								if(msg.type == 0)
								{
									alert("摄像头已准备就绪且用户已允许使用。");
								}
								else if(msg.type == 1)
								{
									alert("摄像头已准备就绪但用户未允许使用！");
								}
								else
								{
									alert("摄像头被占用！");
								}
							break;
							case 5 : 
								if(msg.type == 0)
								{
									if(msg.content.sourceUrl)
									{
										alert("原图已成功保存至服务器，url为：\n" +　msg.content.sourceUrl);
									}
									alert("头像已成功保存至服务器，url为：\n" + msg.content.avatarUrls.join("\n"));
								}
							break;
						}
					}
				);
			
            });
        </script>
    </body> 
</html>