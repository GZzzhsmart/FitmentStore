package SQLservlet;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.oreilly.servlet.MultipartRequest;

import Filter.FileRenameUtil;
import Pageing.PageBeen;
import SQLBase.SQLSentence;
import SQLBase.SQLSentenceimp;
import SQLBean.ManagerBean;
import SQLBean.NewMsgBean;
import SQLup.ContextUtils;

public class newmsgServlet extends HttpServlet {

	SQLSentence sql = new SQLSentenceimp();
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		HttpSession session = request.getSession();
		PrintWriter out = response.getWriter();
		ManagerBean manager = (ManagerBean)session.getAttribute("manager");
		String order = request.getParameter("order");
		if(order.equals("list")){
			list(request, response);
			request.getRequestDispatcher("/datainfo/newmsg.jsp").forward(request,response);
		}else if(order.equals("del")){
			String newMsgId = request.getParameter("newMsgId");
			sql.delnewMsg(newMsgId);
			list(request, response);
			request.getRequestDispatcher("/datainfo/newmsg.jsp").forward(request,response);
		}else if(order.equals("add")){
			 // 保存文件的路径，必须是tomcat里面当前项目下的子路径 
	        String filePath = getServletContext().getRealPath("/attached/news");  
	        // 文件最大容量 3M  
	        int fileMaxSize = 200 * 1024 * 1024;  
	        // 存放文件描述  
	        @SuppressWarnings("unused")  
	        String[] fileDiscription = { null, null };  
	        // 文件名  
	        String fileName = null;  
	        // 上传文件数  
	        int fileCount = 0;  
	        // 重命名策略  
	        FileRenameUtil rfrp = new FileRenameUtil();  
	        // 上传文件  
	        MultipartRequest mulit =null;
	        try{
	        	mulit = new MultipartRequest(request, filePath,fileMaxSize, "UTF-8", rfrp);//取得上传文件  
	        }catch(Exception e){
	        	request.setAttribute("msg", "上传文件的大小不能超过3M");
	        	getServletContext().getRequestDispatcher("/jsp/newmsgAdd.jsp").forward(request, response);
	        	return;
	        }
	        //获取普通控件的值，不能使用request对象
	        String msgName = mulit.getParameter("msgName");  
	        String oneWord = mulit.getParameter("oneWord");  
	        String msgContent = mulit.getParameter("msgContent");  
	        String publishDate = mulit.getParameter("publishDate");  
	        String publishUsername = mulit.getParameter("publishUsername");
	        System.out.println("公告名称="+mulit.getParameter("msgName") );
	        System.out.print("一句话="+mulit.getParameter("oneWord"));
	        System.out.println("时间="+mulit.getParameter("publishDate") );
	        System.out.println("html内容="+mulit.getParameter("msgContent") );
	        System.out.print("发布人="+manager.getManageraccount());
	        String effective = mulit.getParameter("effective");  
	        String seq = mulit.getParameter("seq");  
	        String newsType = mulit.getParameter("newsType");  
	        String imageUrl = "attached/news/";		
	        System.out.println("类别="+mulit.getParameter("newsType") );
	        System.out.print("排序="+mulit.getParameter("seq"));
	        System.out.println("状态="+mulit.getParameter("effective") );
	        Enumeration filesname = mulit.getFileNames();//取得上传的所有文件(相当于标识)   
	        while (filesname.hasMoreElements()) {  
	        	//控件名称
	            String name = (String) filesname.nextElement();//标识  
	            imageUrl += mulit.getFilesystemName(name); //取得文件名  
	        }  
	        String msgContentUrl="attached/news/"+ContextUtils.getFilename()+".html";
	        System.out.print("图标="+msgContentUrl);
	        //把新闻公告的内容生成静态的html页面
	        makehtml(msgContent, msgContentUrl, request);
			NewMsgBean newsmsg = new NewMsgBean();
			newsmsg.setEffective(Integer.parseInt(effective));
			newsmsg.setImageUrl(imageUrl);
			newsmsg.setMsgContent(msgContent);
			newsmsg.setMsgContentUrl(msgContentUrl);
			newsmsg.setMsgName(msgName);
			newsmsg.setNewsType(Integer.parseInt(newsType));
			newsmsg.setOneWord(oneWord);
			newsmsg.setPublishDate(publishDate);
			newsmsg.setPublishUsername(manager.getManageraccount());
			newsmsg.setSeq(Integer.parseInt(seq));
			sql.addnewsMsg(newsmsg);
			list(request,response);
			request.getRequestDispatcher("/datainfo/newmsg.jsp").forward(request, response);
		}else if(order.equals("update")){
			String newMsgId=request.getParameter("newMsgId");
			NewMsgBean news=sql.findNewMsgById(newMsgId);
			request.setAttribute("news",news);
			getServletContext().getRequestDispatcher("/datainfo/newmsgUpdate.jsp").forward(request, response);
		}else if(order.equals("updateSave")){
			 // 保存文件的路径，必须是tomcat里面当前项目下的子路径 
	        String filePath = getServletContext().getRealPath("/attached/news");  
	        // 文件最大容量 3M  
	        int fileMaxSize = 200 * 1024 * 1024;  
	        // 存放文件描述  
	        @SuppressWarnings("unused")  
	        String[] fileDiscription = { null, null };  
	        // 文件名  
	        String fileName = null;  
	        // 上传文件数  
	        int fileCount = 0;  
	        // 重命名策略  
	        FileRenameUtil rfrp = new FileRenameUtil();  
	        // 上传文件  
	        MultipartRequest mulit =null;
	        try{
	        	mulit = new MultipartRequest(request, filePath,fileMaxSize, "UTF-8", rfrp);//取得上传文件  
	        }catch(Exception e){
	        	request.setAttribute("msg", "上传文件的大小不能超过3M");
	        	getServletContext().getRequestDispatcher("/datainfo/newmsgAdd.jsp").forward(request, response);
	        	return;
	        }
	        //获取普通控件的值，不能使用request对象
	        String msgName = mulit.getParameter("msgName");  
	        String oneWord = mulit.getParameter("oneWord");  
	        String msgContent = mulit.getParameter("msgContent");  
	        String publishDate = mulit.getParameter("publishDate"); 
	        System.out.println("公告名称="+mulit.getParameter("msgName") );
	        System.out.print("一句话="+mulit.getParameter("oneWord"));
	        System.out.println("时间="+mulit.getParameter("publishDate") );
	        System.out.println("html内容="+mulit.getParameter("msgContent") );
	        String newMsgId=mulit.getParameter("newMsgId");
	        String effective = mulit.getParameter("effective");  
	        String seq = mulit.getParameter("seq");  
	        String newsType = mulit.getParameter("newsType");  
	        String imageUrl = "attached/news/";		
	        System.out.println("类别="+mulit.getParameter("newsType"));
	        System.out.print("排序="+mulit.getParameter("seq"));
	        System.out.println("状态="+mulit.getParameter("effective"));
	        Enumeration filesname = mulit.getFileNames();//取得上传的所有文件(相当于标识)   
	        while (filesname.hasMoreElements()) {  
	        	//控件名称
	            String name = (String) filesname.nextElement();//标识  
	            imageUrl += mulit.getFilesystemName(name); //取得文件名  
	        }  
	      String msgContentUrl="attached/news/"+ContextUtils.getFilename()+".html";
	        System.out.print("图片网址="+msgContentUrl);
	        //把新闻公告的内容生成静态的html页面
	        makehtml(msgContent, msgContentUrl, request);
	        //图标 
	        String tubiao=mulit.getParameter("tubiao");
			NewMsgBean newsmsg = new NewMsgBean();
			newsmsg.setNewMsgId(Integer.parseInt(newMsgId));
 			newsmsg.setEffective(Integer.parseInt(effective));
 			newsmsg.setMsgContent(msgContent);
 			newsmsg.setMsgContentUrl(msgContentUrl);
 			newsmsg.setMsgName(msgName);
 			newsmsg.setNewsType(Integer.parseInt(newsType));
 			newsmsg.setOneWord(oneWord);
 			newsmsg.setPublishDate(publishDate);
 			newsmsg.setSeq(Integer.parseInt(seq));
 			newsmsg.setImageUrl(tubiao);
 			sql.updatenewMsg(newsmsg);
 			list(request, response);
 			request.getRequestDispatcher("/datainfo/newmsg.jsp").forward(request, response);
		}else if(order.equals("shousuo")){
			String sou=request.getParameter("keywords");
			System.out.println("搜索="+sou);
			SQLSentence list=new SQLSentenceimp();
			List<NewMsgBean>  newsMsgList=list.newmsgList(sou);
			request.setAttribute("newsMsgList", newsMsgList);
			getServletContext().getRequestDispatcher("/datainfo/newmsgLook.jsp").forward(request, response);
		}else if(order.equals("updatetubiao")){
			System.out.print("图标="+request.getParameter("newsid"));
			String newsid=request.getParameter("newsid");
			NewMsgBean news=sql.findNewMsgById(newsid);
			request.setAttribute("news",news);
			getServletContext().getRequestDispatcher("/datainfo/newmsgUpdate2.jsp").forward(request, response);
		}else if(order.equals("updateSave2")){
			 // 保存文件的路径，必须是tomcat里面当前项目下的子路径 
	        String filePath = getServletContext().getRealPath("/attached/news");  
	        // 文件最大容量 3M  
	        int fileMaxSize = 200 * 1024 * 1024;  
	        // 存放文件描述  
	        @SuppressWarnings("unused")  
	        String[] fileDiscription = { null, null };  
	        // 文件名  
	        String fileName = null;  
	        // 上传文件数  
	        int fileCount = 0;  
	        // 重命名策略  
	        FileRenameUtil rfrp = new FileRenameUtil();  
	        // 上传文件  
	        MultipartRequest mulit =null;
	        try{
	        	mulit = new MultipartRequest(request, filePath,fileMaxSize, "UTF-8", rfrp);//取得上传文件  
	        }catch(Exception e){
	        	request.setAttribute("msg", "上传文件的大小不能超过3M");
	        	getServletContext().getRequestDispatcher("/datainfo/newmsgAdd.jsp").forward(request, response);
	        	return;
	        }
	        //获取普通控件的值，不能使用request对象
	        String msgName = mulit.getParameter("msgName");  
	        String oneWord = mulit.getParameter("oneWord");  
	        String msgContent = mulit.getParameter("msgContent");  
	        String publishDate = mulit.getParameter("publishDate");  
	        String publishUsername = request.getParameter("publishUsername");
	        System.out.println("公告名称="+mulit.getParameter("msgName") );
	        System.out.print("一句话="+mulit.getParameter("oneWord"));
	        System.out.println("时间="+mulit.getParameter("publishDate") );
	        System.out.println("html内容="+mulit.getParameter("msgContent") );
	        System.out.println("发布人="+manager.getManageraccount());
	        String newMsgId=mulit.getParameter("newMsgId");
	        String effective = mulit.getParameter("effective");  
	        String seq = mulit.getParameter("seq");  
	        String newsType = mulit.getParameter("newsType");  
	        String imageUrl = "attached/news/";		
	        System.out.println("类别="+mulit.getParameter("newsType") );
	        System.out.print("排序="+mulit.getParameter("seq"));
	        System.out.println("状态="+mulit.getParameter("effective") );
	        Enumeration filesname = mulit.getFileNames();//取得上传的所有文件(相当于标识)   
	        while (filesname.hasMoreElements()) {  
	        	//控件名称
	            String name = (String) filesname.nextElement();//标识  
	            imageUrl += mulit.getFilesystemName(name); //取得文件名  
	        }  
	        String msgContentUrl="attached/news/"+ContextUtils.getFilename()+".html";
	        System.out.print("图片网址="+msgContentUrl);
	        //把新闻公告的内容生成静态的html页面
	        makehtml(msgContent, msgContentUrl, request);
	        //图标 
			NewMsgBean newsmsg = new NewMsgBean();
			newsmsg.setNewMsgId(Integer.parseInt(newMsgId));
 			newsmsg.setEffective(Integer.parseInt(effective));
 			newsmsg.setMsgContent(msgContent);
 			newsmsg.setMsgContentUrl(msgContentUrl);
 			newsmsg.setMsgName(msgName);
 			newsmsg.setNewsType(Integer.parseInt(newsType));
 			newsmsg.setOneWord(oneWord);
 			newsmsg.setPublishDate(publishDate);
 			newsmsg.setSeq(Integer.parseInt(seq));
 			newsmsg.setImageUrl(imageUrl);
 			newsmsg.setPublishUsername(publishUsername);
 			sql.updatenewMsg(newsmsg);
 			list(request, response);
 			request.getRequestDispatcher("/datainfo/newmsg.jsp").forward(request, response);
		}
	}

	public void list(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		PageBeen pagebeen = new PageBeen();
		pagebeen.setPagesize(10);
		pagebeen.setBarsum(sql.sumbar("select count(*) from newmsg"));
		String currentpage = request.getParameter("currentpage");
		String handle = request.getParameter("handle");
		if(handle==null || handle.equals("")){
			pagebeen.setCurrentpage(1);
		}else{
			pagebeen.setCurrentpage(Integer.parseInt(currentpage));
		}
		if(handle==null || handle.equals("")){
			pagebeen.setHandle("firstpage");
		}else {
			pagebeen.setHandle(handle);
		}
		List<NewMsgBean> list = sql.findNewMsgById(pagebeen.getPagesize(), pagebeen.getStartpage());
		request.setAttribute("list", list);
		request.setAttribute("pager", pagebeen);
	}
	
	private void makehtml(String content,String filename,HttpServletRequest request){
		String PAGE_HEAD="<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\"><html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=gbk\"></head><body>";
		String PAGE_TAIL="</body></html>";

		content = PAGE_HEAD + content + PAGE_TAIL;
		String savePath = request.getRealPath("/") + filename;
		File file = new File(savePath);
			FileOutputStream fos;
		try {
			fos = new FileOutputStream(file);
			fos.write(content.getBytes());
			fos.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
