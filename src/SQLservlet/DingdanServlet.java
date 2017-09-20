package SQLservlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import Pageing.PageBeen1;
import SQLBase.SQLSentenceimp;
import SQLBean.AddressVo;
import SQLBean.DingdanVo;
import SQLBean.HomeVo;
import SQLBean.PayRecordVo;
import SQLBean.UserBean;
import SQLBean.moneyRecordVo;

public class DingdanServlet extends HttpServlet {
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
		if (order.equals("init")) {
			List<DingdanVo> dingdanList=sql.dingdanList(user.getUserid());
			session.setAttribute("dingdanList", dingdanList);
			String effective="0";
			int count=sql.fidDingdan(user.getUserid());
			session.setAttribute("count", count);
			session.setAttribute("user", user);
			session.setAttribute("effective", effective);
			request.getRequestDispatcher("/data/dingdan.jsp").forward(request, response);
		}else if(order.equals("init1")){
			String effective=request.getParameter("effective");
			List<DingdanVo> dingdanList=sql.dingdanList(user.getUserid(), Integer.parseInt(effective));
			int count=sql.fidDingdan(user.getUserid());
			session.setAttribute("dingdanList", dingdanList);
			session.setAttribute("count", count);
			session.setAttribute("user", user);
			session.setAttribute("effective", effective);
			request.getRequestDispatcher("/data/dingdan.jsp").forward(request, response);
		}else if(order.equals("add1")) {
			String homeid=request.getParameter("homeid");
			String shuliang=request.getParameter("shuliang1");
			user=sql.findusersById2(user.getUserid());
			HomeVo home=sql.findhomeById(homeid);
			AddressVo address=sql.address(user.getUserid());
			request.setAttribute("home", home);
			request.setAttribute("address", address);
			request.setAttribute("user", user);
			request.setAttribute("shuliang", shuliang);
			request.getRequestDispatcher("/data/dingdanAdd.jsp").forward(request, response);
		}else if(order.equals("add2")){
			String money=request.getParameter("money1");
			String homeid=request.getParameter("homeid");
			String money2=request.getParameter("money2");
			String shuliang=request.getParameter("shuliang");
			System.out.println("shuliang="+shuliang);
			HomeVo home=sql.findhomeById(homeid);
			AddressVo address=sql.address(user.getUserid());
			DingdanVo dingdan=new DingdanVo();
			dingdan.setTupian(home.getPictureurl());
			dingdan.setName(home.getHomename());
			dingdan.setMoney(home.getPrice());
			dingdan.setPrice(Float.parseFloat(money));
			dingdan.setUsername(address.getUsername());
			dingdan.setUsermobile(address.getTelephone());
			dingdan.setAddress(address.getAddress());
			dingdan.setYouhui(home.getDiscount());
			dingdan.setUserid(user.getUserid());
			dingdan.setShuliang(Integer.parseInt(shuliang));
			dingdan.setHomeid(Integer.parseInt(homeid));
			dingdan.setLiuyan(request.getParameter("liuyan"));
			dingdan.setEffective(1);
			sql.addDingdan(dingdan,Integer.parseInt(money2));
			dingdan=sql.finddingdanById2(Integer.parseInt(homeid),user.getUserid());
			home=sql.findhomeById(homeid);
			request.setAttribute("home", home);
			request.setAttribute("dingdan", dingdan);
			request.setAttribute("address", address);
			request.setAttribute("user", user);
			request.getRequestDispatcher("/data/dingdanLook.jsp").forward(request, response);
			
		}else if(order.equals("look")){
			String homeid=request.getParameter("homeid");
			String dingdanid=request.getParameter("dingdanid");
			DingdanVo dingdan=sql.finddingdanById(dingdanid);
			HomeVo home=sql.findhomeById(homeid);
			AddressVo address=sql.address(user.getUserid());
			request.setAttribute("home", home);
			request.setAttribute("dingdan", dingdan);
			request.setAttribute("address", address);
			request.setAttribute("user", user);
			request.getRequestDispatcher("/data/dingdanLook.jsp").forward(request, response);
			
		}else if(order.equals("del")){
			String dingdanid=request.getParameter("dingdanid");
			sql.deldingdan(dingdanid);
			List<DingdanVo> dingdanList=sql.dingdanList(user.getUserid());
			int count1=sql.fidDingdan1(user.getUserid());
			int count2=sql.fidDingdan2(user.getUserid());
			int count3=sql.fidDingdan3(user.getUserid());
			int count4=sql.fidDingdan4(user.getUserid());
			session.setAttribute("dingdanList", dingdanList);
			session.setAttribute("count1", count1);
			session.setAttribute("count2", count2);
			session.setAttribute("count3", count3);
			session.setAttribute("count4", count4);
			session.setAttribute("user", user);
			request.getRequestDispatcher("/data/handle.jsp").forward(request, response);
			
		}else if(order.equals("paymoney")){
			String dingdanid=request.getParameter("dingdanid");
			DingdanVo dingdan=sql.finddingdanById(dingdanid);
			request.setAttribute("dingdan", dingdan);
			request.setAttribute("user", user);
			request.getRequestDispatcher("/data/dingdanpaymoney.jsp").forward(request, response);
		}else if(order.equals("mymoneyAdd")){
			String dingdanid=request.getParameter("dingdanid");
			DingdanVo dingdan=sql.finddingdanById(dingdanid);
			String paymoney=request.getParameter("paymoney");
			String paypassword=request.getParameter("paypassword");
			System.out.println(paypassword);
			String code = request.getParameter("code").trim();
			String rand = session.getAttribute("rand").toString();
			if(!code.toUpperCase().equals(rand.toUpperCase())){
				request.setAttribute("msg", "验证码错误，请重新输入");
				request.setAttribute("dingdan", dingdan);
				request.setAttribute("user", user);
				request.getRequestDispatcher("/data/dingdanpaymoney.jsp").forward(request, response);
			}else{
				if (!paypassword.equals(user.getPaypassword())) {
					System.out.println(user.getPaypassword());
					request.setAttribute("msg", "交易密码错误,请确认");
					request.setAttribute("dingdan", dingdan);
					request.setAttribute("user", user);
					request.getRequestDispatcher("/data/dingdanpaymoney.jsp").forward(request, response);
					
				}else {
					if (Float.parseFloat(paymoney)>user.getRemainmoney()) {
						System.out.println("paymoney="+paymoney);
						System.out.println("user.getRemainmoney()="+user.getRemainmoney());
						request.setAttribute("msg", "余额不足,请先充值");
						request.setAttribute("dingdan", dingdan);
						request.setAttribute("user", user);
						request.getRequestDispatcher("/data/dingdanpaymoney.jsp").forward(request, response);
					}else{
						AddressVo address=sql.address(user.getUserid());
						sql.updatedingdan(dingdan);
						dingdan=sql.finddingdanById(dingdanid);
						user=sql.findusersById2(user.getUserid());
						moneyRecordVo monRecord=new moneyRecordVo();
						monRecord.setPaymoney(0);
						monRecord.setLeixing(1);
						monRecord.setSetmoney(Float.parseFloat(paymoney));
						monRecord.setUserid(user.getUserid());
						sql.addmoneyRecord(monRecord);
						PayRecordVo payRecord =new PayRecordVo();
						payRecord.setHomeid(dingdan.getHomeid());
						payRecord.setHomename(dingdan.getName());
						payRecord.setOrdernumber(dingdan.getDingdannumber());
						payRecord.setPayer(user.getUsername());
						payRecord.setPaymoney(Float.parseFloat(paymoney));
						payRecord.setTupian(dingdan.getTupian());
						payRecord.setUserid(dingdan.getUserid());
						payRecord.setDizhi(address.getAddress());
						payRecord.setShuliang(dingdan.getShuliang());
						sql.addPayRecord(payRecord);
						
						List<DingdanVo> dingdanList=sql.dingdanList(user.getUserid());
						int count1=sql.fidDingdan1(user.getUserid());
						int count2=sql.fidDingdan2(user.getUserid());
						int count3=sql.fidDingdan3(user.getUserid());
						int count4=sql.fidDingdan4(user.getUserid());
						request.setAttribute("msg", "付款成功！请确认");
						session.setAttribute("dingdanList", dingdanList);
						session.setAttribute("count1", count1);
						session.setAttribute("count2", count2);
						session.setAttribute("count3", count3);
						session.setAttribute("count4", count4);
						session.setAttribute("user", user);
						request.getRequestDispatcher("/data/handle.jsp").forward(request, response);
					}
				}
			}
		}else if(order.equals("shouhuo")){
			String dingdanid=request.getParameter("dingdanid");
			DingdanVo dingdan=sql.finddingdanById(dingdanid);
			sql.updatedingdan2(dingdan);
			String homeid=dingdan.getHomeid()+"";
			System.out.println(homeid);
			HomeVo home=sql.findhomeById(homeid);
			AddressVo address=sql.address(user.getUserid());
			dingdan=sql.finddingdanById(dingdanid);
			request.setAttribute("home", home);
			request.setAttribute("dingdan", dingdan);
			request.setAttribute("address", address);
			request.setAttribute("user", user);
			request.setAttribute("msg", "收货成功!");
			request.getRequestDispatcher("/data/dingdanLook.jsp").forward(request, response);
		}else if(order.equals("list")){
			list(request, response);
			request.getRequestDispatcher("/data/dingdanlist.jsp").forward(request, response);
		}else if(order.equals("fahuo")){
			String dingdanid=request.getParameter("dingdanid");
			DingdanVo dingdan=new DingdanVo();
			dingdan.setDingdanid(dingdanid);
			sql.updatedingdan3(dingdan);
			list(request, response);
			request.getRequestDispatcher("/data/dingdanlist.jsp").forward(request, response);
		}
		
		out.flush();
		out.close();
	}
	public void list(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		PageBeen1 pagebeen = new PageBeen1();
		pagebeen.setPagesize(10);
		pagebeen.setBarsum(sql.sumbar("select count(*) from dingdan where effective=4"));
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
		List<DingdanVo> list = sql.dingdanList1(pagebeen.getPagesize(), pagebeen.getStartpage());
		request.setAttribute("list", list);
		request.setAttribute("pager", pagebeen);
	}

}
