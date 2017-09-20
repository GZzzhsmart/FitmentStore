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

import com.oreilly.servlet.MultipartRequest;

import Filter.FileRenameUtil;
import Pageing.PageBean;
import Pageing.PageBeen1;
import SQLBase.SQLSentenceimp;
import SQLBean.DingdanVo;
import SQLBean.HomeVo;
import SQLBean.ShoppingcarVo;
import SQLBean.UserBean;
import SQLBean.UserCourseEvalVo;

public class PingjiaServlet extends HttpServlet {
	SQLSentenceimp sql = new SQLSentenceimp();
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		UserBean user =(UserBean)session.getAttribute("user");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		String order = request.getParameter("order");
		if(order.equals("init")){
			String homeid=request.getParameter("homeid");
			request.setAttribute("user", user);
			request.setAttribute("homeid", homeid);
			request.getRequestDispatcher("/data/pingjiaAdd.jsp").forward(request, response);
		}else if(order.equals("add")){
			
			 // 保存文件的路径，必须是tomcat里面当前项目下的子路径 
	        String filePath = getServletContext().getRealPath("/attached/car");  
	        // 文件最大容量 3M  
	        int fileMaxSize = 10 * 1024 * 1024;  
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
	        	request.setAttribute("msg", "上传文件的大小不能超过10M");
	        	getServletContext().getRequestDispatcher("/datainfo/homeAdd.jsp").forward(request, response);
	        	return;
	        }
	        //获取普通控件的值，不能使用request对象
	        String evallevel=mulit.getParameter("evallevel");
	        System.out.println(evallevel);
			String evalcontent=mulit.getParameter("evalcontent");
			String homeid =mulit.getParameter("homeid");
	        String pictureurl1 = "attached/car/";	
	        String pictureurl2="attached/car/";
	        Enumeration filesname = mulit.getFileNames();//取得上传的所有文件(相当于标识)   
	        while (filesname.hasMoreElements()) {  
	        	//控件名称
	            String name = (String) filesname.nextElement();//标识 
	            String name1 = (String) filesname.nextElement();//标识 
	            pictureurl1 += mulit.getFilesystemName(name); //取得文件名
	            pictureurl2 += mulit.getFilesystemName(name1); //取得文件名
	           
	        }
	        UserCourseEvalVo pingjia=new UserCourseEvalVo();
	        pingjia.setEvalcontent(evalcontent);
	        pingjia.setEvallevel(Integer.parseInt(evallevel));
	        pingjia.setHomeid(Integer.parseInt(homeid));
	        System.out.println("pictureurl1="+pictureurl1);
	        System.out.println("pictureurl2="+pictureurl1);
	        pingjia.setPictureurl1(pictureurl1);
	        pingjia.setPictureurl2(pictureurl2);
	        pingjia.setUserid(user.getUserid());
	        pingjia.setUsername(user.getUsername());
	        pingjia.setUserpictureurl(user.getUserface());
	        sql.addpingjia(pingjia);
	        int conut4=sql.fidDingdan4(user.getUserid());
			int count5=sql.fidDingdan5(user.getUserid());
			list1(request, response, user.getUserid(), 4);
			request.setAttribute("conut4", conut4);
			request.setAttribute("count5", count5);
			request.setAttribute("user", user);
			request.setAttribute("msg", "评价成功，谢谢您对乐家具的照顾");
			request.getRequestDispatcher("/data/pingjiaList.jsp").forward(request, response);
		}else if(order.equals("list")){
			int conut4=sql.fidDingdan4(user.getUserid());
			int count5=sql.fidDingdan5(user.getUserid());
			list1(request, response, user.getUserid(), 4);
			int effective=4;
			request.setAttribute("effective", effective);
			request.setAttribute("conut4", conut4);
			request.setAttribute("count5", count5);
			request.getRequestDispatcher("/data/pingjiaList.jsp").forward(request, response);
		}else if(order.equals("list2")){
			int conut4=sql.fidDingdan4(user.getUserid());
			int count5=sql.fidDingdan5(user.getUserid());
			list1(request, response, user.getUserid(), 5);
			int effective=5;
			request.setAttribute("user", user);
			request.setAttribute("effective", effective);
			request.setAttribute("conut4", conut4);
			request.setAttribute("count5", count5);
			request.getRequestDispatcher("/data/pingjiaList.jsp").forward(request, response);
		}else if(order.equals("look")){
			String dingdanid=request.getParameter("dingdanid");
			DingdanVo dingdan=sql.finddingdanById(dingdanid);
			UserCourseEvalVo pingjia=sql.fidmoneypingjia(user.getUserid(),dingdan.getHomeid());
			request.setAttribute("dingdan", dingdan);
			request.setAttribute("pingjia", pingjia);
			request.setAttribute("user", user);
			request.getRequestDispatcher("/data/pingjialook.jsp").forward(request, response);
		}
		
		
	}
	
	public void list1(HttpServletRequest request, HttpServletResponse response,int userid,int effective)
	throws ServletException, IOException {
		PageBean pageBean=new PageBean();
	
		PageBeen1 pagebeen = new PageBeen1();
		pagebeen.setPagesize(10);
		pagebeen.setBarsum(sql.sumbar("select count(*) from dingdan where userid="+userid+" and effective="+effective));
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
		List<DingdanVo> dingdanList=sql.dingdanList(pagebeen.getPagesize(), pagebeen.getStartpage(),userid,effective);
		request.setAttribute("dingdanList", dingdanList);
		request.setAttribute("pager", pagebeen);
	}
	

}
