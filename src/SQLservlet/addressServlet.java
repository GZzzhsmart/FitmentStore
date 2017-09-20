package SQLservlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.alibaba.fastjson.JSON;


import SQLBase.SQLSentenceimp;
import SQLBean.AddressVo;
import SQLBean.UserBean;

public class addressServlet extends HttpServlet {
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
		if(order.equals("init")){
			List<AddressVo> addList=sql.addressList(user.getUserid());
			int count=sql.findAddress(user.getUserid());
			session.setAttribute("count", count);
			session.setAttribute("addList", addList);
			session.setAttribute("user", user);
			request.getRequestDispatcher("/data/address.jsp").forward(request, response);
			
		}else if(order.equals("add")){
			String username=request.getParameter("consignee");
			String address=request.getParameter("address");
			String telephone=request.getParameter("mobile");
			String phone=request.getParameter("tel");
			String unicode=request.getParameter("zipcode");
			AddressVo addressVo=new AddressVo();
			addressVo.setUserid(user.getUserid());
			addressVo.setUsername(username);
			addressVo.setTelephone(telephone);
			addressVo.setPhone(phone);
			addressVo.setUnicode(unicode);
			addressVo.setAddress(address);
			addressVo.setEffective(1);
			sql.addAddress(addressVo);
			List<AddressVo> addList=sql.addressList(user.getUserid());
			int count=sql.findAddress(user.getUserid());
			session.setAttribute("count", count);
			session.setAttribute("addList", addList);
			session.setAttribute("user", user);
			request.getRequestDispatcher("/data/address.jsp").forward(request, response);
		}else if(order.equals("setEffective")){
			String addressid=request.getParameter("addressid");
			sql.setEffective(addressid);
			List<AddressVo> addList=sql.addressList(user.getUserid());
			int count=sql.findAddress(user.getUserid());
			session.setAttribute("count", count);
			session.setAttribute("addList", addList);
			session.setAttribute("user", user);
			request.getRequestDispatcher("/data/address.jsp").forward(request, response);
		}else if (order.equals("del")) {
			String addressid=request.getParameter("addressid");
			sql.delAddress(addressid);
			List<AddressVo> addList=sql.addressList(user.getUserid());
			int count=sql.findAddress(user.getUserid());
			session.setAttribute("count", count);
			session.setAttribute("addList", addList);
			session.setAttribute("user", user);
			request.getRequestDispatcher("/data/address.jsp").forward(request, response);
		}else if(order.equals("update")){
			String addressid=request.getParameter("addressid");
			AddressVo addressVo=sql.findAddressById(addressid);
			String data=JSON.toJSONString(addressVo);
			out.println(data);
		}else if(order.equals("updateSave")){
			String addressid=request.getParameter("addressid");
			String username=request.getParameter("consignee");
			String address=request.getParameter("address");
			String telephone=request.getParameter("mobile");
			String phone=request.getParameter("tel");
			String unicode=request.getParameter("zipcode");
			AddressVo addressVo=new AddressVo();
			addressVo.setUserid(user.getUserid());
			addressVo.setAddressid(addressid);
			addressVo.setUsername(username);
			addressVo.setTelephone(telephone);
			addressVo.setPhone(phone);
			addressVo.setUnicode(unicode);
			addressVo.setAddress(address);
			sql.updateAddressVo(addressVo);
			List<AddressVo> addList=sql.addressList(user.getUserid());
			int count=sql.findAddress(user.getUserid());
			session.setAttribute("count", count);
			session.setAttribute("addList", addList);
			session.setAttribute("user", user);
			request.getRequestDispatcher("/data/address.jsp").forward(request, response);
			
		}
		out.flush();
		out.close();
	}

}
