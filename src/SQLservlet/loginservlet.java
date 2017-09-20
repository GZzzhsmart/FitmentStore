package SQLservlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Pageing.PageBeen;
import SQLBase.SQLSentenceimp;
import SQLBean.ManagerBean;
import SQLBean.UserBean;

public class loginservlet extends HttpServlet {

	SQLSentenceimp sql = new SQLSentenceimp();
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
				String username = request.getParameter("username");
				String password = request.getParameter("password");
				String code = request.getParameter("code");
				String rand = request.getParameter("rand");
				UserBean user = sql.logincheck(username);
				if(user.getUsername()==null){
					request.setAttribute("msg", "用户不存在，请先注册ᣡ");
					request.getRequestDispatcher("data/login.jsp").forward(request, response);
				}else {
					if(user.getUsermobile().equals(username) && user.getUserpassword().equals(password)){
						UserBean userbean = sql.logincheck(username);
						System.out.println(userbean.getUsername());
						session.setAttribute("user", userbean);
						request.getRequestDispatcher("data/handle.jsp").forward(request, response);
					}
					if(!user.getUsermobile().equals(username)){
						request.setAttribute("msg", "登录账号错误");
						request.getRequestDispatcher("data/login.jsp").forward(request, response);
					}
					if (!user.getUserpassword().equals(password)) {
						request.setAttribute("msg", "用户密码错误，请重新登录");
						request.getRequestDispatcher("data/login.jsp").forward(request, response);
					}
				}
			}else if(order.equals("list")){
				list(request, response);
				request.getRequestDispatcher("/datainfo/userlist.jsp").forward(request, response);
			}
		}
	}
	
	public void list(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		PageBeen pagebeen = new PageBeen();
		pagebeen.setPagesize(10);
		pagebeen.setBarsum(sql.sumbar("select count(*) from users"));
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
		List<UserBean> list = sql.userlist(pagebeen.getPagesize(), pagebeen.getStartpage());
		request.setAttribute("list", list);
		request.setAttribute("pager", pagebeen);
	}
}
