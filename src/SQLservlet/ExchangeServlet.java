package SQLservlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Pageing.PageBeen;
import SQLBase.SQLSentence;
import SQLBase.SQLSentenceimp;
import SQLBean.ExchangeCodeVo;
import SQLBean.ExchangeRecordVo;
import SQLBean.ManagerBean;
import SQLBean.NewMsgBean;

public class ExchangeServlet extends HttpServlet {

	SQLSentence sql = new SQLSentenceimp();
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=utf-8");
		HttpSession session = request.getSession();
		ManagerBean manager = (ManagerBean)session.getAttribute("manager");
		PrintWriter out = response.getWriter();
		String order = request.getParameter("order");
		if(order.equals("add")){
			String activityname = request.getParameter("activityname");
			String activitydesc = request.getParameter("activitydesc");
			ExchangeRecordVo exchange = new ExchangeRecordVo();
			exchange.setActivityname(activityname);
			exchange.setActivitydesc(activitydesc);
			exchange.setManagerid(manager.getManagerid());
			sql.addExchangerecord(exchange);
			list(request, response, manager.getManagerid());
			request.getRequestDispatcher("/datainfo/record.jsp").forward(request,response);
		}else if(order.equals("list")){
			list(request, response, manager.getManagerid());
			request.getRequestDispatcher("/datainfo/record.jsp").forward(request,response);
		}else if(order.equals("del")){
			String activityid = request.getParameter("activityid");
			sql.delExchangerecord(Integer.parseInt(activityid));
			list(request, response, manager.getManagerid());
			request.getRequestDispatcher("/datainfo/record.jsp").forward(request,response);
		}else if(order.equals("update")){
			String activityid = request.getParameter("activityid");
			ExchangeRecordVo exchange = sql.findExchangerecordById(activityid);
			request.setAttribute("exchange", exchange);
			request.getRequestDispatcher("/datainfo/recordUpdate.jsp").forward(request, response);
		}else if(order.equals("updateSave")){
			String activityid = request.getParameter("activityid");
			String activityname = request.getParameter("activityname");
			String activitydesc = request.getParameter("activitydesc");
			String activitydate = request.getParameter("activitydate");
			ExchangeRecordVo exchange = new ExchangeRecordVo();
			exchange.setActivityid(Integer.parseInt(activityid));
			exchange.setActivityname(activityname);
			exchange.setActivitydesc(activitydesc);
			exchange.setActivitydate(activitydate);
			sql.updateExchangerecord(exchange);
			list(request, response, manager.getManagerid());
			request.getRequestDispatcher("/datainfo/record.jsp").forward(request, response);
		}else if(order.equals("produce")){
			int activityid = Integer.parseInt(request.getParameter("activityid"));
			if(request.getParameter("exchangemeony")!=null){
				int exchangemeony = Integer.parseInt(request.getParameter("exchangemeony").trim());
				int validay = Integer.parseInt(request.getParameter("validay").trim());
				int codeCnt = Integer.parseInt(request.getParameter("codeCnt").trim());
				sql.addexchangecode(activityid, exchangemeony, validay, codeCnt);
			}
			List<ExchangeCodeVo> codeList = sql.codeList(activityid);
			request.setAttribute("activityid",activityid);
			request.setAttribute("codeList",codeList);
			list1(request, response);
			request.getRequestDispatcher("/datainfo/codeAdd.jsp").forward(request, response);
		}else if(order.equals("list1")){
			list1(request, response);
			request.getRequestDispatcher("/datainfo/codeAdd.jsp").forward(request, response);
		}else if(order.equals("linqu")){
			
		}
	}
	
	public void list(HttpServletRequest request, HttpServletResponse response, int managerid)
	throws ServletException, IOException {
		PageBeen pagebeen = new PageBeen();
		pagebeen.setPagesize(10);
		pagebeen.setBarsum(sql.sumbar("select count(*) from exchangerecord"));
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
		List<ExchangeRecordVo> list = sql.exchangerecordList(managerid, pagebeen.getPagesize(), pagebeen.getStartpage());
		request.setAttribute("list", list);
		request.setAttribute("pager", pagebeen);
	}
	
	public void list1(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		PageBeen pagebeen = new PageBeen();
		pagebeen.setPagesize(10);
		pagebeen.setBarsum(sql.sumbar("select count(*) from exchangecode"));
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
		List<ExchangeCodeVo> codeList = sql.codeList(pagebeen.getPagesize(), pagebeen.getStartpage());
		request.setAttribute("codeList", codeList);
		request.setAttribute("pager", pagebeen);
	}

}
