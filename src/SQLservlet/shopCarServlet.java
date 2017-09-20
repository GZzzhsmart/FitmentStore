package SQLservlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Pageing.PageBeen1;
import SQLBase.SQLSentenceimp;
import SQLBean.DingdanVo;
import SQLBean.HomeVo;
import SQLBean.ShoppingcarVo;


public class shopCarServlet extends HttpServlet {

	SQLSentenceimp sql = new SQLSentenceimp();
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String order = request.getParameter("order");
		if(order!=null){
			if(order.equals("list")){
				list(request, response);
				request.getRequestDispatcher("data/shoplist.jsp").forward(request, response);
			}else if(order.equals("delete")) {
				sql.shopcardelete(request.getParameter("carid"));
				list(request, response);
				request.getRequestDispatcher("data/shoplist.jsp").forward(request, response);
			}else if (order.equals("add")) {
				HomeVo homeVo = sql.findhomeById(request.getParameter("homeid"));
				ShoppingcarVo shop = new ShoppingcarVo();
				shop.setHomeid(homeVo.getHomeid());
				shop.setUsername(homeVo.getHomename());
				shop.setOneword(homeVo.getOneword());
				shop.setDiscount(homeVo.getDiscount());
				shop.setPictureurl(homeVo.getPictureurl());
				shop.setPrice(homeVo.getPrice());
				shop.setEffective(homeVo.getEffective());
				shop.setReplayusername(homeVo.getReplayusername());
				shop.setReplaydate(homeVo.getReplaydate());
				shop.setHomecount(homeVo.getHomecount());
				sql.shopcaradd(shop);
			}else if(order.equals("paymoney")){
				System.out.println("是否公司发送给对方");
				
			}
			
		}
	}
	public void list(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		PageBeen1 pagebeen = new PageBeen1();
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
		List<ShoppingcarVo> list = sql.shopcarlist(pagebeen.getPagesize(), pagebeen.getStartpage(),"");
		request.setAttribute("list", list);
		request.setAttribute("pager", pagebeen);
	}

}
