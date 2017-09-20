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
import SQLBean.CityBean;
import SQLBean.ProvinceBean;

public class cityServlet extends HttpServlet {

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
				request.getRequestDispatcher("/datainfo/citylist.jsp").forward(request, response);
			}else if(order.equals("init")){
				//获取省份的数据.
				List<ProvinceBean> provList = sql.provincelist();
				request.setAttribute("provList", provList);
				//转向到cityList.jsp页面
				request.getRequestDispatcher("/datainfo/cityAdd.jsp").forward(request, response);
			}else if(order.equals("addinit")){
				//获取省份的数据
				List<ProvinceBean> provList = sql.provincelist();
				request.setAttribute("provList", provList);
				request.getRequestDispatcher("/datainfo/cityAdd.jsp").forward(request, response);
			}else if(order.equals("add")){
				String provinceid = request.getParameter("provinceid");
				String cityname = request.getParameter("cityname");
				String provincename = request.getParameter("provincename");
				CityBean city = new CityBean();
				city.setProvinceid(Integer.parseInt(provinceid));
				city.setCityname(cityname);
				city.setProvincename(provincename);
				sql.addcity(city);
				//查询所有的数据，转向到列表页面
				list(request, response);
				//转向到cityList.jsp页面
				request.getRequestDispatcher("/datainfo/citylist.jsp").forward(request, response);
			}else if(order.equals("del")){
				String cityid = request.getParameter("cityid");
				sql.delcity(Integer.parseInt(cityid));
				list(request, response);
				//转向到cityList.jsp页面
				request.getRequestDispatcher("/datainfo/citylist.jsp").forward(request, response);
			}else if(order.equals("update")){
				//获取省份数据
				List<ProvinceBean> provList = sql.provincelist();
				request.setAttribute("provList",provList);
				//查找需要修改的城市数据
				String cityid = request.getParameter("cityid");
				CityBean city = sql.findCityById(cityid);
				request.setAttribute("city", city);
				//转向到cityList.jsp页面
				request.getRequestDispatcher("/datainfo/cityUpdate.jsp").forward(request, response);
			}else if(order.equals("updateSave")){
				String provinceid = request.getParameter("provinceid");
				String cityid = request.getParameter("cityid");
				String cityname = request.getParameter("cityname");
				CityBean city = new CityBean();
				city.setProvinceid(Integer.parseInt(provinceid));
				city.setCityname(cityname);
				city.setCityid(Integer.parseInt(cityid));
				sql.updatecity(city);
				//查询所有的城市数据，并转向到列表页面
				list(request, response);
				//转向到cityList.jsp页面
				request.getRequestDispatcher("/datainfo/citylist.jsp").forward(request, response);
			}
		}
	}

	public void list(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		PageBeen pagebeen = new PageBeen();
		pagebeen.setPagesize(10);
		pagebeen.setBarsum(sql.sumbar("select count(*) from city"));
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
		List<CityBean> list = sql.citylist(pagebeen.getPagesize(), pagebeen.getStartpage());
		request.setAttribute("list", list);
		request.setAttribute("pager", pagebeen);
	}

}
