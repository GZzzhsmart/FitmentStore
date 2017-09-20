package SQLservlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Filter.FileRenameUtil;

import com.oreilly.servlet.MultipartRequest;

import Pageing.PageBean;
import Pageing.PageBeen1;
import SQLBase.SQLSentenceimp;
import SQLBean.AddressVo;
import SQLBean.HomeVo;
import SQLBean.PayRecordVo;
import SQLBean.UserBean;
import SQLBean.UserCourseEvalVo;

public class HomeServlet extends HttpServlet {

	SQLSentenceimp sql = new SQLSentenceimp();
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		UserBean user =(UserBean)session.getAttribute("user");
		String order = request.getParameter("order");
		if(order.equals("list")){
			list(request, response);
			request.getRequestDispatcher("/datainfo/homelist.jsp").forward(request,response);
		}else if(order.equals("del")){
			String homeid = request.getParameter("homeid");
			sql.delhome(Integer.parseInt(homeid));
			list(request, response);
			request.getRequestDispatcher("/datainfo/homelist.jsp").forward(request, response);
		}else if(order.equals("add")){
			 // 保存文件的路径，必须是tomcat里面当前项目下的子路径 
	        String filePath = getServletContext().getRealPath("/attached/jiaju");  
	        // 文件最大容量 3M  
	        int fileMaxSize = 3 * 1024 * 1024;  
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
	        	getServletContext().getRequestDispatcher("/datainfo/homeAdd.jsp").forward(request, response);
	        	return;
	        }
	        //获取普通控件的值，不能使用request对象
	        String homename = mulit.getParameter("homename");
			String oneword = mulit.getParameter("oneword");
			String homecount = mulit.getParameter("homecount");
			String price = mulit.getParameter("price");
			String discount = mulit.getParameter("discount");
			String effective = mulit.getParameter("effective");
			String replaydate = mulit.getParameter("replaydate");
			String replayusername = mulit.getParameter("replayusername");
			String chargeType = mulit.getParameter("chargeType");
			String hometype =null;
			if(chargeType.equals("0")){
				hometype=mulit.getParameter("hometype");
			}else if(chargeType.equals("1")){
				hometype=mulit.getParameter("homei");
			}else if(chargeType.equals("2")) {
				hometype=mulit.getParameter("homeh");
			}
			String big_small = mulit.getParameter("big_small");
			String fengge=mulit.getParameter("fengge");
			String chandi=mulit.getParameter("chandi");
	        String pictureurl = "attached/jiaju/";	
	        String pictureurl2="attached/jiaju/";
	        String pictureurl3="attached/jiaju/";
	        String pictureurl4="attached/jiaju/";
	        Enumeration filesname = mulit.getFileNames();//取得上传的所有文件(相当于标识)   
	        while (filesname.hasMoreElements()) {  
	        	//控件名称
	            String name = (String) filesname.nextElement();//标识 
	            String name2 = (String) filesname.nextElement();//标识 
	            String name3 = (String) filesname.nextElement();//标识 
	            String name4 = (String) filesname.nextElement();//标识 
	            pictureurl += mulit.getFilesystemName(name); //取得文件名
	            pictureurl2 += mulit.getFilesystemName(name2); //取得文件名
	            pictureurl3 += mulit.getFilesystemName(name3); //取得文件名
	            pictureurl4 += mulit.getFilesystemName(name4);
	           
	        }  
	    	HomeVo home = new HomeVo();
			home.setHomename(homename);
			home.setOneword(oneword);
			home.setPictureurl(pictureurl);
			home.setPictureurl2(pictureurl2);
			home.setPictureurl3(pictureurl3);
			home.setPictureurl4(pictureurl4);
			home.setHomecount(Integer.parseInt(homecount));
			home.setPrice(Float.parseFloat(price));
			home.setDiscount(Float.parseFloat(discount));
			home.setEffective(Integer.parseInt(effective));
			home.setReplaydate(replaydate);
			home.setReplayusername(replayusername);
			home.setBig_small(big_small);
			home.setHometype(Integer.parseInt(hometype));
			home.setBuyed(0);
			home.setChargeType(Integer.parseInt(chargeType));
			home.setFengge(fengge);
			home.setChandi(chandi);
			sql.addhome(home);
			list(request,response);
			request.getRequestDispatcher("/datainfo/homelist.jsp").forward(request, response);
		}else if(order.equals("update")){
			String homeid = request.getParameter("homeid");
			HomeVo home = sql.findhomeById(homeid);
			request.setAttribute("home",home);
			list(request, response);
			request.getRequestDispatcher("/datainfo/homelook.jsp").forward(request, response);
		}else if(order.equals("updateSave")){
			// 保存文件的路径，必须是tomcat里面当前项目下的子路径 
	        String filePath = getServletContext().getRealPath("/attached/jiaju");  
	        // 文件最大容量 3M  
	        int fileMaxSize = 3 * 1024 * 1024;  
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
	        	getServletContext().getRequestDispatcher("/datainfo/homeAdd.jsp").forward(request, response);
	        	return;
	        }
	        //获取普通控件的值，不能使用request对象
	        String homename = mulit.getParameter("homename");
			String oneword = mulit.getParameter("oneword");
			String homecount = mulit.getParameter("homecount");
			String price = mulit.getParameter("price");
			String discount = mulit.getParameter("discount");
			String effective = mulit.getParameter("effective");
			String replaydate = mulit.getParameter("replaydate");
			String replayusername = mulit.getParameter("replayusername");
			String chargeType = mulit.getParameter("chargeType");
			String hometype = mulit.getParameter("hometype");
			String big_small = mulit.getParameter("big_small");
			String fengge=mulit.getParameter("fengge");
			String chandi=mulit.getParameter("chandi");
	        String pictureurl = "attached/jiaju/";	
	        String pictureurl2="attached/jiaju/";
	        String pictureurl3="attached/jiaju/";
	        String pictureurl4="attached/jiaju/";
	        Enumeration filesname = mulit.getFileNames();//取得上传的所有文件(相当于标识)   
	        while (filesname.hasMoreElements()) {  
	        	//控件名称
	            String name = (String) filesname.nextElement();//标识 
	            String name2 = (String) filesname.nextElement();//标识 
	            String name3 = (String) filesname.nextElement();//标识 
	            String name4 = (String) filesname.nextElement();//标识 
	            pictureurl += mulit.getFilesystemName(name); //取得文件名
	            pictureurl2 += mulit.getFilesystemName(name2); //取得文件名
	            pictureurl3 += mulit.getFilesystemName(name3); //取得文件名
	            pictureurl4 += mulit.getFilesystemName(name4);
	           
	        }  
	    	HomeVo home = new HomeVo();
			home.setHomename(homename);
			home.setOneword(oneword);
			home.setPictureurl(pictureurl);
			home.setPictureurl2(pictureurl2);
			home.setPictureurl3(pictureurl3);
			home.setPictureurl4(pictureurl4);
			home.setHomecount(Integer.parseInt(homecount));
			home.setPrice(Float.parseFloat(price));
			home.setDiscount(Float.parseFloat(discount));
			home.setEffective(Integer.parseInt(effective));
			home.setReplaydate(replaydate);
			home.setReplayusername(replayusername);
			home.setBig_small(big_small);
			home.setHometype(Integer.parseInt(hometype));
			home.setBuyed(0);
			home.setChargeType(Integer.parseInt(chargeType));
			home.setFengge(fengge);
			home.setChandi(chandi);
			sql.addhome(home);
			list(request,response);
			request.setAttribute("user", user);
 			request.getRequestDispatcher("/datainfo/homelist.jsp").forward(request, response);
		}else if(order.equals("list1")){
			List<HomeVo> homeList=sql.homeList();
			user=sql.findusersById2(user.getUserid());
			request.setAttribute("homeList", homeList);
			request.setAttribute("user", user);
			request.getRequestDispatcher("/data/homeList1.jsp").forward(request, response);
		}else if(order.equals("list2")){
			String hometype=request.getParameter("hometype");
			user=sql.findusersById2(user.getUserid());
			list1(request, response, Integer.parseInt(hometype));
			request.setAttribute("hometype", hometype);
			request.setAttribute("user", user);
			request.getRequestDispatcher("/data/homeList2.jsp").forward(request, response);
		}else if (order.equals("look")) {
			
			String homeid=request.getParameter("homeid");
			user=sql.findusersById2(user.getUserid());
			int count=sql.fidpingjia(Integer.parseInt(homeid));
			payRecordList(request, response, homeid);
			pingjiaList(request, response, Integer.parseInt(homeid));
			HomeVo home=sql.findhomeById(homeid);
			request.setAttribute("home", home);
			request.setAttribute("user", user);
			request.setAttribute("count", count);
			request.getRequestDispatcher("/data/homeLook.jsp").forward(request, response);
		}else if(order.equals("findlist")){
			homeList2(request, response);
			request.setAttribute("user", user);
			request.getRequestDispatcher("/data/homeList3.jsp").forward(request, response);
		}
	}

	
	
	
	public void list(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		PageBeen1 pagebeen = new PageBeen1();
		pagebeen.setPagesize(10);
		pagebeen.setBarsum(sql.sumbar("select count(*) from home"));
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
		List<HomeVo> list = sql.homeList(pagebeen.getPagesize(), pagebeen.getStartpage());
		request.setAttribute("list", list);
		request.setAttribute("pager", pagebeen);
	}
	
	public void list1(HttpServletRequest request, HttpServletResponse response,int hometype)
	throws ServletException, IOException {
		PageBean pageBean=new PageBean();
		int allRows=sql.sumbar("select count(*) from home where hometype="+hometype);
		int totalPage=pageBean.getTotalPages(12, allRows);
		String page=request.getParameter("page");
		int currentPage=0;
		if(page==null){
			page="1";
			currentPage=pageBean.getCurPage(Integer.parseInt(page));
		}else {
			currentPage=pageBean.getCurPage(Integer.parseInt(page));
		}
		
		int offset=pageBean.getCurrentPageOffset(12, currentPage);
		pageBean.setAllRows(allRows);
	    pageBean.setCurrentPage(currentPage);
	    pageBean.setTotalPage(totalPage);
		List<HomeVo> homeList=sql.homeList(12, offset,hometype);
		request.setAttribute("pageBean", pageBean);
		request.setAttribute("homeList", homeList);
		request.setAttribute("page", page);
	}
	public void homeList2(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		PageBean pageBean=new PageBean();
		String homename=request.getParameter("homename");
		request.setAttribute("homename", homename);
		System.out.println("homename="+homename);
		int allRows=sql.sumbar("select count(*) from home where home_name like '%"+homename+"%'");
		int totalPage=pageBean.getTotalPages(12, allRows);
		String page=request.getParameter("page");
		int currentPage=0;
		if(page==null){
			page="1";
			currentPage=pageBean.getCurPage(Integer.parseInt(page));
		}else {
			currentPage=pageBean.getCurPage(Integer.parseInt(page));
		}
		
		int offset=pageBean.getCurrentPageOffset(12, currentPage);
		pageBean.setAllRows(allRows);
	    pageBean.setCurrentPage(currentPage);
	    pageBean.setTotalPage(totalPage);
		List<HomeVo> homeList=sql.homeList(12, offset, homename);
		request.setAttribute("pageBean", pageBean);
		request.setAttribute("homeList", homeList);
		request.setAttribute("page", page);
	}
	public void pingjiaList(HttpServletRequest request, HttpServletResponse response,int homeid)
	throws ServletException, IOException {
		PageBeen1 pagebeen = new PageBeen1();
		pagebeen.setPagesize(10);
		pagebeen.setBarsum(sql.sumbar("select count(*) from PayRecord where homeid="+homeid));
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
		List<UserCourseEvalVo> pingjiaList = sql.pingjiaList(pagebeen.getPagesize(), pagebeen.getStartpage(),homeid);
		request.setAttribute("pingjiaList", pingjiaList);
		request.setAttribute("pagebeenpingjia", pagebeen);
	}
	
	public void payRecordList(HttpServletRequest request, HttpServletResponse response,String homeid)
	throws ServletException, IOException {
		PageBeen1 pagebeen = new PageBeen1();
		pagebeen.setPagesize(10);
		pagebeen.setBarsum(sql.sumbar("select count(*) from PayRecord where homeid="+homeid));
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
		List<PayRecordVo> payRecordList = sql.payRecordList(pagebeen.getPagesize(), pagebeen.getStartpage(),homeid);
		request.setAttribute("payRecordList", payRecordList);
		request.setAttribute("payRecordpager", pagebeen);
	}
}
