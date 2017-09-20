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

import Pageing.PageBean;
import SQLBase.SQLSentenceimp;
import SQLBean.CollectionVo;
import SQLBean.HomeVo;
import SQLBean.UserBean;

public class CollectionServlet extends HttpServlet {
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
			if(order.equals("add")){
				String homeid=request.getParameter("homeid");
				if(sql.collectioncheckPwd(homeid)){
					String data="该商品已经存在于您的收藏夹中";
					out.println(data);
				}else{
					HomeVo home=sql.findhomeById(homeid);
					CollectionVo collection=new CollectionVo();
					collection.setDiscount(home.getDiscount());
					collection.setHomeid(Integer.parseInt(homeid));
					collection.setHomename(home.getHomename());
					collection.setPictureurl(home.getPictureurl());
					collection.setPrice(home.getPrice());
					collection.setUserid(user.getUserid());
					sql.addcollection(collection);
					String data="该商品已经成功地加入了您的收藏夹";
					out.println(data);
					
				}
				
				
			}else if(order.equals("list")){
				list(request, response, user.getUserid());
				request.setAttribute("user", user);
				request.getRequestDispatcher("/data/shoucangList.jsp").forward(request, response);
			}
	}
	public void list(HttpServletRequest request, HttpServletResponse response,int userid)
	throws ServletException, IOException {
		PageBean pageBean=new PageBean();
		int allRows=sql.sumbar("select count(*) from collection where userid="+userid);
		int totalPage=pageBean.getTotalPages(12, allRows);
		String page=request.getParameter("page");
		int currentPage=0;
		if(page==null){
			page="1";
			currentPage=pageBean.getCurPage(Integer.parseInt(page));
		}else {
			currentPage=pageBean.getCurPage(Integer.parseInt(page));
		}
		
		int offset=pageBean.getCurrentPageOffset(12, currentPage);
		pageBean.setAllRows(allRows);
	    pageBean.setCurrentPage(currentPage);
	    pageBean.setTotalPage(totalPage);
		List<CollectionVo> collectionList=sql.collectionList(12, offset,userid);
		request.setAttribute("pageBean", pageBean);
		request.setAttribute("collectionList", collectionList);
		request.setAttribute("page", page);
	}
	public void list1(HttpServletRequest request, HttpServletResponse response,int hometype)
	throws ServletException, IOException {
		PageBean pageBean=new PageBean();
		int allRows=sql.sumbar("select count(*) from home where hometype="+hometype);
		int totalPage=pageBean.getTotalPages(16, allRows);
		String page=request.getParameter("page");
		int currentPage=0;
		if(page==null){
			page="1";
			currentPage=pageBean.getCurPage(Integer.parseInt(page));
		}else {
			currentPage=pageBean.getCurPage(Integer.parseInt(page));
		}
		
		int offset=pageBean.getCurrentPageOffset(16, currentPage);
		pageBean.setAllRows(allRows);
	    pageBean.setCurrentPage(currentPage);
	    pageBean.setTotalPage(totalPage);
		List<HomeVo> homeList=sql.homeList(16, offset,hometype);
		request.setAttribute("pageBean", pageBean);
		request.setAttribute("homeList", homeList);
		request.setAttribute("page", page);
	}

}
