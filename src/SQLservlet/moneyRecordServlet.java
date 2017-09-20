package SQLservlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Pageing.PageBeen1;
import SQLBase.SQLSentenceimp;
import SQLBean.UserBean;
import SQLBean.moneyRecordVo;

public class moneyRecordServlet extends HttpServlet {
	SQLSentenceimp sql = new SQLSentenceimp();
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			doPost(request, response);
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		UserBean user =(UserBean)session.getAttribute("user");
		String order=request.getParameter("order");
		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		if(order.equals("mymoneyList")){
			user=sql.findusersById2(user.getUserid());
			System.out.println(user.getRemainmoney());
			list(request, response, user.getUserid());
			int count=sql.fidmoneyRecord(user.getUserid());
			session.setAttribute("user", user);
			session.setAttribute("count", count);
			request.getRequestDispatcher("/data/mymoney.jsp").forward(request, response);
		}else if(order.equals("mymoney")){
			user=sql.findusersById2(user.getUserid());
			String sdate=request.getParameter("sdate");
			String edate=request.getParameter("edate");
			list1(request, response, user.getUserid(), sdate, edate);
			session.setAttribute("user", user);
			request.getRequestDispatcher("/data/mymoney.jsp").forward(request, response);	
		}else if(order.equals("mymoneyAdd")){
			String paymoney=request.getParameter("paymoney");
			String paypassword=request.getParameter("paypassword");
			String code = request.getParameter("code").trim();
			String rand = session.getAttribute("rand").toString();
			if(!code.toUpperCase().equals(rand.toUpperCase())){
				request.setAttribute("msg", "验证码错误，请重新输入");
				list(request, response, user.getUserid());
				int count=sql.fidmoneyRecord(user.getUserid());
				session.setAttribute("user", user);
				session.setAttribute("count", count);
				request.getRequestDispatcher("/data/mymoney.jsp").forward(request, response);
			}else{
				if (!paypassword.equals(user.getPaypassword())) {
					request.setAttribute("msg", "交易密码错误,请确认");
					list(request, response, user.getUserid());
					int count=sql.fidmoneyRecord(user.getUserid());
					session.setAttribute("user", user);
					session.setAttribute("count", count);
					request.getRequestDispatcher("/data/mymoney.jsp").forward(request, response);
					
				}else {
					moneyRecordVo monRecord=new moneyRecordVo();
					monRecord.setPaymoney(Float.parseFloat(paymoney));
					monRecord.setLeixing(0);
					monRecord.setSetmoney(0);
					monRecord.setUserid(user.getUserid());
					sql.addmoneyRecord(monRecord);
					user=sql.findusersById2(user.getUserid());
					request.setAttribute("msg", "充值成功,请确认");
					list(request, response, user.getUserid());
					int count=sql.fidmoneyRecord(user.getUserid());
					session.setAttribute("user", user);
					session.setAttribute("count", count);
					request.getRequestDispatcher("/data/mymoney.jsp").forward(request, response);
				}
			}
			
		}
	}
	
	public void list(HttpServletRequest request, HttpServletResponse response,int userid)
	throws ServletException, IOException {
		PageBeen1 pagebeen = new PageBeen1();
		pagebeen.setPagesize(10);
		pagebeen.setBarsum(sql.sumbar("select count(*) from moneyrecord where userid="+userid));
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
		List<moneyRecordVo> moneyList=sql.moneylist(userid, pagebeen.getPagesize(), pagebeen.getStartpage());
		request.setAttribute("moneyList", moneyList);
		request.setAttribute("pager", pagebeen);
	}
	public void list1(HttpServletRequest request, HttpServletResponse response,int userid,String sdate,String edate)
	throws ServletException, IOException {
		PageBeen1 pagebeen = new PageBeen1();
		pagebeen.setPagesize(10);
		pagebeen.setBarsum(sql.sumbar("select count(*) from moneyrecord where userid="+userid+" and pay_date between  to_date('"+sdate+"','YYYY-MM-DD HH24:MI:SS') and to_date('"+edate+"','YYYY-MM-DD HH24:MI:SS')"));
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
		List<moneyRecordVo> moneyList=sql.moneylist2(userid, pagebeen.getPagesize(), pagebeen.getStartpage(),sdate,edate);
		request.setAttribute("moneyList", moneyList);
		request.setAttribute("pager", pagebeen);
	}

}
