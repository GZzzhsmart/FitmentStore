package SQLservlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.alibaba.fastjson.JSON;

import Pageing.PageBean;
import Pageing.PageBeen;
import Pageing.PageBeen1;
import SQLBase.SQLSentenceimp;
import SQLBean.BankVo;
import SQLBean.CityBean;
import SQLBean.KaihuVo;
import SQLBean.ProvinceBean;
import SQLBean.UserBean;

public class userservlet extends HttpServlet {

	SQLSentenceimp sql = new SQLSentenceimp();
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession	session =request.getSession();
		String order = request.getParameter("order");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		if(order!=null || order.equals("")){
			if(order.equals("add")){
				String username = request.getParameter("username");
				String password = request.getParameter("password");
				String mobilephone = request.getParameter("mobilephone");
				String code = request.getParameter("code");
				String rand = request.getParameter("rand");
				int num = sql.finduser(mobilephone);
				System.out.println(num);
				if(num>=1){
					request.setAttribute("msg", "该用户已存在,请重新注册");
					request.getRequestDispatcher("data/zhuce.jsp").forward(request, response);
					return;
				}else {
					UserBean user = new UserBean();
					user.setLeibie(0);
					user.setUsername(username);
					user.setUserpassword(password);
					user.setUserface("images/301067.jpg");
					user.setUsermobile(mobilephone);
					user.setUserhomeaddress("保密");
					user.setUseremail("暂无");
					user.setCityid(1);
					user.setProvinceid(1);
					user.setRemainmoney(0);
					user.setLedou(0);
					sql.adduser(user);
					request.getRequestDispatcher("data/login2.jsp").forward(request, response);
				}
				if(code==null || code.equals("")){
					request.setAttribute("msg", "请输入验证码");
				}else if(!code.toUpperCase().equals(rand.toUpperCase())){
					request.setAttribute("msg", "验证码错误，请重新输入");
					request.getRequestDispatcher("data/zhuce.jsp").forward(request, response);
				}
			}else if(order.equals("login")){
				String username=request.getParameter("username");
				String password=request.getParameter("password");
				UserBean user=sql.login(username, password);
				if(user==null){
					request.setAttribute("msg", "用户名,密码错误，请确认");
					request.getRequestDispatcher("/data/login2.jsp").forward(request, response);
				}else{
					session.setAttribute("user", user);
					request.getRequestDispatcher("/data/face.jsp").forward(request, response);
				}
			}else if(order.equals("login2")){
				String username = request.getParameter("username");
				UserBean user = sql.login2(username);
				session.setAttribute("user", user);
				request.getRequestDispatcher("/data/handle.jsp").forward(request,response);
			}else if(order.equals("login3")){
				String username = request.getParameter("usermobile");
				UserBean user = sql.login2(username);
				session.setAttribute("user", user);
				request.getRequestDispatcher("/data/userziliao.jsp").forward(request,response);
			}else if(order.equals("login4")){
				String username = request.getParameter("usermobile");
				UserBean user = sql.login2(username);
				session.setAttribute("user", user);
				request.getRequestDispatcher("/data/zhanghubangding.jsp").forward(request,response);
			}else if(order.equals("update")){
				String usermobile = request.getParameter("usermobile");
				List<ProvinceBean> provList = sql.provincelist();
				List<CityBean> cityList = sql.citylist();
				if (provList.size()>0) {
					ProvinceBean p=provList.get(0);
					cityList=sql.CityList(p.provinceid);
				}
				UserBean user = sql.findusersById(usermobile);
				request.setAttribute("cityList",cityList);
				session.setAttribute("user",user);
				request.getRequestDispatcher("/data/userUpdate1.jsp").forward(request,response);
			}else if(order.equals("changecity")){
				String provinceid = request.getParameter("provinceid");
				List<CityBean> cityList = sql.citylist();
				cityList = sql.CityList(Integer.parseInt(provinceid));
				String data = JSON.toJSONString(cityList);
				out.println(data);
			}else if(order.equals("updateSave")){
				UserBean user = new UserBean();
				String usermobile=request.getParameter("usermobile");
				user.setUsermobile(usermobile);
				user.setUsername(request.getParameter("username").trim());
				user.setUsersex(Integer.parseInt(request.getParameter("usersex")));
				user.setUseremail(request.getParameter("useremail").trim());
				user.setUserhomeaddress(request.getParameter("userhomeaddress").trim());
				user.setProvinceid(Integer.parseInt(request.getParameter("provinceid")));
				user.setCityid(Integer.parseInt(request.getParameter("cityid")));
				sql.updateuserbean(user);
				user=sql.findusersById(usermobile);
				session.setAttribute("user", user);
				String data=JSON.toJSONString(user);
				out.println(data);
			}else if(order.equals("exit")){
				session.invalidate();
				Cookie cookie1 = new Cookie("usermobile",URLEncoder.encode(""));
		    	Cookie cookie2 = new Cookie("userpassword",URLEncoder.encode(""));
				cookie1.setMaxAge(0);
				cookie2.setMaxAge(0);
		    	cookie1.setPath(request.getContextPath());
		    	cookie2.setPath(request.getContextPath());
		    	response.addCookie(cookie1);
		    	response.addCookie(cookie2);
		    	request.getRequestDispatcher("/data/face.jsp").forward(request, response);
			}else if(order.equals("modifyPwd")){
				String usermobile=request.getParameter("usermobile");
				String oldPassword=request.getParameter("oldPassword");
				String newPassword=request.getParameter("newPassword");
				if(sql.usercheckPwd(usermobile, oldPassword)){
					sql.usermodifyPwd(usermobile, newPassword);
					String data="修改成功，请妥善保管";
					out.println(data);
				}else {
					String data="旧密码输入错误,请重新输入";
					out.println(data);
				}
			}else if(order.equals("modifyPwd2")){
				String usermobile=request.getParameter("usermobile");
				String oldPassword=request.getParameter("password");
				String paypassword=request.getParameter("paypassword");
				if(sql.usercheckPwd(usermobile, oldPassword)){
					sql.usermodifyPwd2(usermobile, paypassword);
					String data="修改成功，请妥善保管";
					out.println(data);
				}else {
					String data="登入密码输入错误,请重新输入";
					out.println(data);
				}
			}else if(order.equals("look")){
				String usermobile = request.getParameter("usermobile");
				UserBean user = sql.findusersById(usermobile);
				request.setAttribute("user",user);
				request.getRequestDispatcher("/datainfo/userLook.jsp").forward(request,response);
			}else if(order.equals("del")){
				String userid = request.getParameter("userid");
				sql.deluser(Integer.parseInt(userid));
				list(request, response);
				request.getRequestDispatcher("/datainfo/userlist.jsp").forward(request, response);
			}else if (order.equals("list")) {
				list1(request, response);
				request.getRequestDispatcher("/datainfo/userlist.jsp").forward(request, response);
			}else if(order.equals("kaihuAdd")){
				String kaihuname=request.getParameter("kaihuname");
				String userid=request.getParameter("userid");
				String bankid=request.getParameter("bankid");
				String bankno=request.getParameter("bankno");
				String kaihuhang=request.getParameter("kaihuhang");
				String code = request.getParameter("code").trim();
				String rand = session.getAttribute("rand").toString();
				if(!code.toUpperCase().equals(rand.toUpperCase())){
					request.setAttribute("msg", "验证码错误，请重新输入");
					request.getRequestDispatcher("/data/userziliao.jsp").forward(request, response);
				}else{
					KaihuVo kaihu1=new KaihuVo();
					kaihu1.setUserid(Integer.parseInt(userid));
					kaihu1.setBankid(Integer.parseInt(bankid));
					kaihu1.setKaihuname(kaihuname);
					kaihu1.setBankno(bankno);
					kaihu1.setKaihuhang(kaihuhang);
					sql.addkaihu(kaihu1);
					List<BankVo> bankList=sql.banklist();
					UserBean user=sql.findusersById2(Integer.parseInt(userid));
					boolean isok=sql.kaihucheckPwd(user.getUserid());
					if (isok==true) {
						KaihuVo kaihu=sql.findkaihuById(user.getUserid());
						session.setAttribute("kaihu", kaihu);
					}else {
						KaihuVo kaihu=null;
						session.setAttribute("kaihu", kaihu);
					}
					session.setAttribute("user", user);
					session.setAttribute("bankList", bankList);
					session.setAttribute("isok", isok);
					request.setAttribute("msg", "绑定成功,请确认!");
					request.getRequestDispatcher("/data/userziliao.jsp").forward(request,response);
				}
			}else if(order.equals("kaihudel")){
				String userid=request.getParameter("userid");
				sql.delkaihu(userid);
				List<BankVo> bankList=sql.banklist();
				UserBean user=sql.findusersById2(Integer.parseInt(userid));
				boolean isok=sql.kaihucheckPwd(user.getUserid());
				if (isok==true) {
					KaihuVo kaihu=sql.findkaihuById(user.getUserid());
					session.setAttribute("kaihu", kaihu);
				}else {
					KaihuVo kaihu=null;
					session.setAttribute("kaihu", kaihu);
				}
				session.setAttribute("user", user);
				session.setAttribute("bankList", bankList);
				session.setAttribute("isok", isok);
				request.getRequestDispatcher("/data/userziliao.jsp").forward(request, response);
			}else if(order.equals("kaihuupdate")){
				String kaihuid=request.getParameter("kaihuid");
				String kaihuname=request.getParameter("kaihuname");
				String userid=request.getParameter("userid");
				String bankid=request.getParameter("bankid");
				String bankno=request.getParameter("bankno");
				String kaihuhang=request.getParameter("kaihuhang");
				KaihuVo kaihuVo=new KaihuVo();
				kaihuVo.setBankid(Integer.parseInt(bankid));
				kaihuVo.setBankno(bankno);
				kaihuVo.setKaihuhang(kaihuhang);
				kaihuVo.setKaihuid(Integer.parseInt(kaihuid));
				kaihuVo.setKaihuname(kaihuname);
				kaihuVo.setUserid(Integer.parseInt(userid));
				sql.updatekaihu(kaihuVo);
				List<BankVo> bankList=sql.banklist();
				UserBean user=sql.findusersById2(Integer.parseInt(userid));
				boolean isok=sql.kaihucheckPwd(user.getUserid());
				if (isok==true) {
					KaihuVo kaihu=sql.findkaihuById(user.getUserid());
					session.setAttribute("kaihu", kaihu);
				}else {
					KaihuVo kaihu=null;
					session.setAttribute("kaihu", kaihu);
				}
				session.setAttribute("user", user);
				session.setAttribute("bankList", bankList);
				session.setAttribute("isok", isok);
				request.getRequestDispatcher("/data/userziliao.jsp").forward(request, response);
			}else if(order.equals("mymoneyList")){
				String userid=request.getParameter("userid");
				UserBean user=sql.findusersById2(Integer.parseInt(userid));
				session.setAttribute("user", user);
				request.getRequestDispatcher("/data/mymoney.jsp").forward(request, response);
			}
		}
	}
	
	public void list(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		PageBeen1 pagebeen = new PageBeen1();
		pagebeen.setPagesize(3);
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
	public void list1(HttpServletRequest request, HttpServletResponse response){
		PageBean pageBean=new PageBean();
		int allRows=sql.sumbar("select count(*) from users");
		int totalPage=pageBean.getTotalPages(6, allRows);
		String page=request.getParameter("page");

		int currentPage=0;
		if(page==null){
			page="1";
			currentPage=pageBean.getCurPage(Integer.parseInt(page));
		}else {
			currentPage=pageBean.getCurPage(Integer.parseInt(page));
		}
		
		int offset=pageBean.getCurrentPageOffset(6, currentPage);
		pageBean.setAllRows(allRows);
	    pageBean.setCurrentPage(currentPage);
	    pageBean.setTotalPage(totalPage);
		List<UserBean> userList=sql.userlist(6, offset);
		request.setAttribute("pageBean", pageBean);
		request.setAttribute("userList", userList);
		request.setAttribute("page", page);
	}
}
