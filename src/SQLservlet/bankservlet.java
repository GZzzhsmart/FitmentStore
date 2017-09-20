package SQLservlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Pageing.PageBeen;
import SQLBase.SQLSentenceimp;
import SQLBean.BankVo;
import SQLBean.ProvinceBean;

public class bankservlet extends HttpServlet {

	SQLSentenceimp sql = new SQLSentenceimp();
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String order = request.getParameter("order");
		if(order.equals("list")){
			list(request, response);
			request.getRequestDispatcher("/datainfo/banklist.jsp").forward(request, response);
		}else if(order.equals("add")){
			String bankname = request.getParameter("bankname");
			BankVo bank = new BankVo();
			bank.setBankname(bankname);
			sql.addbank(bank);
			list(request, response);
			request.getRequestDispatcher("/datainfo/banklist.jsp").forward(request, response);
		}else if(order.equals("del")){
			int bankid = Integer.parseInt(request.getParameter("bankid"));
			sql.delbank(bankid);
			list(request, response);
			request.getRequestDispatcher("/datainfo/banklist.jsp").forward(request, response);
		}else if(order.equals("update")){
			String bankid = request.getParameter("bankid");
			BankVo bank = sql.findbankById(bankid);
			request.setAttribute("bank", bank);
			request.getRequestDispatcher("/datainfo/bankUpdate.jsp").forward(request, response);
		}else if(order.equals("updateSave")){
			int bankid = Integer.parseInt(request.getParameter("bankid"));
			String bankname = request.getParameter("bankname");
			BankVo bank = new BankVo();
			bank.setBankid(bankid);
			bank.setBankname(bankname);
			sql.updatebank(bank);
			list(request, response);
			request.getRequestDispatcher("/datainfo/banklist.jsp").forward(request, response);
		}
	}
	public void list(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		PageBeen pagebeen = new PageBeen();
		pagebeen.setPagesize(10);
		pagebeen.setBarsum(sql.sumbar("select count(*) from bank"));
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
		List<BankVo> list = sql.banklist(pagebeen.getPagesize(), pagebeen.getStartpage());
		request.setAttribute("list", list);
		request.setAttribute("pager", pagebeen);
	}

}
