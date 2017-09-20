package SQLservlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Pageing.PageBeen;
import SQLBase.SQLSentenceimp;
import SQLBean.ProvinceBean;
import SQLCon.SQLCon;

public class ProvinceServlet extends HttpServlet {

	SQLSentenceimp sql = new SQLSentenceimp();
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String order = request.getParameter("order");
		if (order.equals("") || order != null) {
			if (order.equals("list")) {
				list(request, response);
				request.getRequestDispatcher("datainfo/provincelist.jsp").forward(request, response);
			}else if(order.equals("add")){
				String provinceid = request.getParameter("provinceid");
				String provincename = request.getParameter("provincename");
				ProvinceBean province = new ProvinceBean();
				province.setProvinceid(Integer.parseInt(provinceid));
				province.setProvincename(provincename);
				sql.addprovince(province);
				//查询所有的数据，转向到列表页面
				list(request, response);
				//转向到provinceList.jsp页面
				request.getRequestDispatcher("/datainfo/provincelist.jsp").forward(request, response);
			}else if(order.equals("del")){
				String provinceid = request.getParameter("provinceid");
				sql.delprovince(Integer.parseInt(provinceid));
				list(request, response);
				//转向到provinceList.jsp页面
				request.getRequestDispatcher("/datainfo/provincelist.jsp").forward(request, response);
			}else if(order.equals("update")){
				//获取省份数据
				List<ProvinceBean> provinceList = sql.provincelist();
				request.setAttribute("provinceList",provinceList);
				//查找需要修改的省份数据
				String provinceid = request.getParameter("provinceid");
				ProvinceBean province = sql.findprovinceById(provinceid);
				request.setAttribute("province", province);
				//转向到provinceList.jsp页面
				request.getRequestDispatcher("/datainfo/provinceUpdate.jsp").forward(request, response);
			}else if(order.equals("updateSave")){
				String provinceid = request.getParameter("provinceid");
				String provincename = request.getParameter("provincename");
				ProvinceBean province = new ProvinceBean();
				province.setProvinceid(Integer.parseInt(provinceid));
				province.setProvincename(provincename);
				sql.updataeprovince(province);
				//查询所有的省份数据，并转向到列表页面
				list(request, response);
				//转向到provinceList.jsp页面
				request.getRequestDispatcher("/datainfo/provincelist.jsp").forward(request, response);
			}
		}
	}

	public void list(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PageBeen pagebeen = new PageBeen();
		pagebeen.setPagesize(10);
		pagebeen.setBarsum(sql.sumbar("select count(*) from province"));
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
		List<ProvinceBean> list = sql.provincelist(pagebeen.getPagesize(), pagebeen.getStartpage());
		request.setAttribute("list", list);
		request.setAttribute("pager", pagebeen);
	}

}
