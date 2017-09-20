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

import Pageing.PageBeen;
import SQLBase.SQLSentence;
import SQLBase.SQLSentenceimp;
import SQLBean.CityBean;
import SQLBean.ManagerBean;
import SQLBean.UserBean;

public class managerServlet extends HttpServlet {

	SQLSentence sql = new SQLSentenceimp();
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		String order = request.getParameter("order");
		if(order!=null || order.equals("")){
			if(order.equals("login")){
				String managername = request.getParameter("managername");
				String managerpassword = request.getParameter("managerpassword");
				String rand = session.getAttribute("rand").toString();
				String code = request.getParameter("code").trim();
				if(!code.toUpperCase().equals(rand.toUpperCase())){
					request.setAttribute("msg", "验证码错误，请重新输入");
					request.getRequestDispatcher("data/login3.jsp").forward(request, response);
				}else{
					ManagerBean manager = sql.Login(managername);
					if(manager.getManagername()==null){
						request.setAttribute("msg", "用户不存在，请先注册！");
						request.getRequestDispatcher("data/login3.jsp").forward(request, response);
					}else {
						//保存登录信息
						session.setAttribute("manager", manager);
						request.getRequestDispatcher("data/houtai.jsp").forward(request, response);
						if(!manager.getManagername().equals(managername)){
							request.setAttribute("msg", "用户姓名错误！");
							request.getRequestDispatcher("data/login3.jsp").forward(request, response);
						}
						if (!manager.getManagerpassword().equals(managerpassword)) {
							request.setAttribute("msg", "用户密码错误，请重新输入！");
							request.getRequestDispatcher("data/login3.jsp").forward(request, response);
						}
					}
				}
			}else if(order.equals("list")){
				list(request, response);
				request.getRequestDispatcher("datainfo/managerlist.jsp").forward(request, response);
			}else if(order.equals("look")){
				String managerid = request.getParameter("managerid");
				ManagerBean manager = sql.findmanagerById(managerid);
				request.setAttribute("manager", manager);
				request.getRequestDispatcher("datainfo/managerChakan.jsp").forward(request, response);
			}else if (order.equals("update")){
				String managerid = request.getParameter("managerid");
				ManagerBean manager = sql.findmanagerById(managerid);
				request.setAttribute("manager", manager);
				list(request, response);
				request.getRequestDispatcher("datainfo/managerUpdate.jsp").forward(request, response);
			}else if(order.equals("updateSave")){
				 // 保存文件的路径，必须是tomcat里面当前项目下的子路径 
		        String filePath = getServletContext().getRealPath("/attached/head");  
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
		        	getServletContext().getRequestDispatcher("/datainfo/managerUpdate.jsp").forward(request, response);
		        	return;
		        }
		        //获取普通控件的值，不能使用request对象
		        String managerid = mulit.getParameter("managerid");
				String managername = mulit.getParameter("managername");
				String manageraccount = mulit.getParameter("manageraccount");
				String sex = mulit.getParameter("sex");
				String contact = mulit.getParameter("contact");
		        String managerfave = "attached/head/";	
		        Enumeration filesname = mulit.getFileNames();//取得上传的所有文件(相当于标识)   
		        while (filesname.hasMoreElements()) {  
		        	//控件名称
		            String name = (String) filesname.nextElement();//标识  
		            managerfave += mulit.getFilesystemName(name); //取得文件名  
		        }  
		        ManagerBean manager = new ManagerBean();
				manager.setManagerid(Integer.parseInt(managerid));
				manager.setManageraccount(manageraccount);
				manager.setManagername(managername);
				manager.setSex(Integer.parseInt(sex));
				manager.setManagerfave(managerfave);
				manager.setContact(contact);
	 			sql.updatemanager(manager);
	 			list(request, response);
	 			request.getRequestDispatcher("/datainfo/managerlist.jsp").forward(request, response);
			}else if(order.equals("add")){
				 // 保存文件的路径，必须是tomcat里面当前项目下的子路径 
		        String filePath = getServletContext().getRealPath("/attached/head");  
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
		        	getServletContext().getRequestDispatcher("/datainfo/managerAdd.jsp").forward(request, response);
		        	return;
		        }
		        //获取普通控件的值，不能使用request对象
				String managername = mulit.getParameter("managername");
				String managerpassword = mulit.getParameter("managerpassword");
				String manageraccount = mulit.getParameter("manageraccount");
				String sex = mulit.getParameter("sex");
				String contact = mulit.getParameter("contact");
		        String managerfave = "attached/head/";		
		        Enumeration filesname = mulit.getFileNames();//取得上传的所有文件(相当于标识)   
		        while (filesname.hasMoreElements()) {  
		        	//控件名称
		            String name = (String) filesname.nextElement();//标识  
		            managerfave += mulit.getFilesystemName(name); //取得文件名  
		        }  
		    	ManagerBean manager = new ManagerBean();
				manager.setManageraccount(manageraccount);
				manager.setManagername(managername);
				manager.setManagerpassword(managerpassword);
				manager.setSex(Integer.parseInt(sex));
				manager.setManagerfave(managerfave);
				manager.setContact(contact);
				sql.addmanager(manager);
				list(request,response);
				request.getRequestDispatcher("/datainfo/managerlist.jsp").forward(request, response);
			}else if (order.equals("modifyPwd")){//修改个人密码
				String managerid = request.getParameter("managerid");
				String oldpwd = request.getParameter("oldpwd");
				String managerpassword = request.getParameter("managerpassword");
				if(sql.checkPwd(managerid, oldpwd)){
					//修改密码
					sql.modifyPwd(managerid, managerpassword);
					request.setAttribute("msg","恭喜你，密码修改成功，请妥善保管");
				}else{
					request.setAttribute("msg","旧密码输入错误，请重新输入");
				}
				request.getRequestDispatcher("/datainfo/modifypwd.jsp").forward(request,response);
			}
		}
	}
	
	public void list(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		PageBeen pagebeen = new PageBeen();
		pagebeen.setPagesize(10);
		pagebeen.setBarsum(sql.sumbar("select count(*) from manager"));
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
		List<ManagerBean> list = sql.managerlist(pagebeen.getPagesize(), pagebeen.getStartpage());
		request.setAttribute("list", list);
		request.setAttribute("pager", pagebeen);
	}

}
