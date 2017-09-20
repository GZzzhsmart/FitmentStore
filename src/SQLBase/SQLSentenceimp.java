package SQLBase;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import SQLup.ContextUtils;

import SQLBean.AddressVo;
import SQLBean.BankVo;
import SQLBean.CityBean;
import SQLBean.CollectionVo;
import SQLBean.DingdanVo;
import SQLBean.ExchangeCodeVo;
import SQLBean.ExchangeRecordVo;
import SQLBean.HomeVo;
import SQLBean.KaihuVo;
import SQLBean.ManagerBean;
import SQLBean.NewMsgBean;
import SQLBean.PayRecordVo;
import SQLBean.ProvinceBean;
import SQLBean.ShoppingcarVo;
import SQLBean.UserBean;
import SQLBean.UserCourseEvalVo;
import SQLBean.moneyRecordVo;
import SQLCon.DBConn;

public class SQLSentenceimp implements SQLSentence{

	Connection con = DBConn.openDB();
	
	/**
	 * 省份表
	 * */
	//新增
	public void addprovince(ProvinceBean provincebean) {
		try {
			Statement stmt = con.createStatement();
			String sql = "insert into province values('"+provincebean.getProvincename()+"')";
			System.out.println(sql);
			stmt.executeUpdate(sql);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	public ProvinceBean findprovinceById(String provinceid) {
		ProvinceBean province= new ProvinceBean();
		try {
			Statement stmt = con.createStatement();
			String sql = "select * from province where provinceid="+provinceid;
			System.out.println(sql);
			ResultSet rs = stmt.executeQuery(sql);
			if(rs.next()){
				province.setProvinceid(rs.getInt("provinceid"));
				province.setProvincename(rs.getString("provincename").trim());
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return province;
	}
	
	//删除
	public void delprovince(int provinceid) {
		try{
			Statement stmt = con.createStatement();
			String sql ="delete province where provinceid="+provinceid;
			System.out.println(sql);
			stmt.executeUpdate(sql);
		}catch(SQLException e){
			e.printStackTrace();
		}
		
	}
	//查询
	public List<ProvinceBean> provincelist() {
		List<ProvinceBean> list = new ArrayList<ProvinceBean>();
		try{
			Statement stmt = con.createStatement();
			String sql = "select * from province order by provinceid";
			ResultSet rs = stmt.executeQuery(sql);
			while(rs.next()){
				ProvinceBean prov = new ProvinceBean();
				prov.setProvinceid(rs.getInt("provinceid"));
				prov.setProvincename(rs.getString("provincename").trim());
				list.add(prov);
			}
		}catch(SQLException e){
			e.printStackTrace();
		}
		return list;
	}
	//修改
	public void updataeprovince(ProvinceBean provincebean) {
		try {
			Statement stmt = con.createStatement();
			String sql = "update province set provinceName='" + provincebean.getProvincename() +"' where provinceId="+provincebean.getProvinceid();
			System.out.println(sql);
			stmt.executeUpdate(sql);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	//分页
	public List<ProvinceBean> provincelist(int pagesize, int startpage) {
		List<ProvinceBean> list = new ArrayList<ProvinceBean>();
		try {
			Statement st = con.createStatement();
			//select top("+pagesize+") p.*,c.* from province p,city c where p.provinceid=c.provinceid and cityid not in (select top("+startpage+") cityid from city) order by cityid asc
			String sql = "select * from (select rownum rn,p.* from province p) where rn>=("+startpage+"+1) and rn<=("+startpage+"+"+pagesize+")";
			System.out.println(sql);
			ResultSet rs = st.executeQuery(sql);
			while(rs.next()){
				ProvinceBean provincebean = new ProvinceBean();
				provincebean.setProvinceid(rs.getInt("provinceid"));
				provincebean.setProvincename(rs.getString("provincename").trim());
				list.add(provincebean);
			}
		} catch (Exception e) {
			System.out.println("查询省份城市列表出错！");
			e.printStackTrace();
		}
		return list;
	}

	public int sumbar(String sql) {
		int sumbar=0;
		try {
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(sql);
			if(rs.next()){
				sumbar = rs.getInt(1);
			}
		} catch (Exception e) {
			System.out.println("查询总记录条数出错！");
			e.printStackTrace();
		}
		return sumbar;
	}
	/**
	 * 用户表
	 * */
	public List<UserBean> userlist() {
		List<UserBean> list = new ArrayList<UserBean>();
		try{
			Statement stmt = con.createStatement();
			String sql = "select * from users order by userid";
			ResultSet rs = stmt.executeQuery(sql);
			while(rs.next()){
				UserBean users = new UserBean();
				users.setUserid(rs.getInt("userid"));
				users.setUsermobile(rs.getString("usermobile"));
				users.setUserpassword(rs.getString("userpassword"));
				users.setUsername(rs.getString("username"));
				users.setUserface(rs.getString("userface"));
				users.setUsersex(rs.getInt("usersex"));
				users.setUserhomeaddress(rs.getString("userhomeaddress"));
				users.setUseremail(rs.getString("useremail"));
				users.setProvinceid(rs.getInt("provinceid"));
				users.setCityid(rs.getInt("cityid"));
				users.setLeibie(rs.getInt("leibie"));
				users.setUserregisterdate(rs.getString("userregisterdate"));
				users.setRemainmoney(rs.getFloat("remainmoney"));
				users.setLedou(rs.getInt("ledou"));
				list.add(users);
			}
			rs.close();
			con.close();
		}catch(SQLException e){
			e.printStackTrace();
		}
		return list;
	}
	public List<UserBean> userlist(int pagesize, int startpage) {
		List<UserBean> list = new ArrayList<UserBean>();
		try {
			Statement st = con.createStatement();
			String sql = "select * from (select rownum rn,u.* from users u) where rn>=("+startpage+"+1) and rn<=("+startpage+"+"+pagesize+")";
			ResultSet rs = st.executeQuery(sql);
			while(rs.next()){
				UserBean users = new UserBean();
				users.setUserid(rs.getInt("userid"));
				users.setUsermobile(rs.getString("usermobile"));
				users.setUserpassword(rs.getString("userpassword"));
				users.setUsername(rs.getString("username"));
				users.setUserface(rs.getString("userface"));
				users.setUsersex(rs.getInt("usersex"));
				users.setUserhomeaddress(rs.getString("userhomeaddress"));
				users.setUseremail(rs.getString("useremail"));
				users.setProvinceid(rs.getInt("provinceid"));
				users.setCityid(rs.getInt("cityid"));
				users.setLeibie(rs.getInt("leibie"));
				users.setUserregisterdate(rs.getString("userregisterdate"));
				users.setRemainmoney(rs.getFloat("remainmoney"));
				users.setLedou(rs.getInt("ledou"));
				list.add(users);
			}
		} catch (Exception e) {
			System.out.println("查询用户列表出错");
			e.printStackTrace();
		}
		return list;
	}
	public void deluser(int userid) {
		try{
			Statement stmt = con.createStatement();
			String sql ="delete user where userid="+userid;
			System.out.println(sql);
			stmt.executeUpdate(sql);
			stmt.close();
		}catch(SQLException e){
			e.printStackTrace();
		}
	}
	public void updateuserbean(UserBean user) {
		try {
			Statement stm=con.createStatement();
			String sql="update users set  username='"+user.getUsername()+
			"',usersex='"+user.getUsersex()+
			"',userhomeaddress='"+user.getUserhomeaddress()+
			"',useremail='"+user.getUseremail()+
			"',provinceid='"+user.getProvinceid()+
			"',cityid='"+user.getCityid()+"' where usermobile="+user.getUsermobile();
			stm.executeUpdate(sql);
			stm.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	public void adduser(UserBean userbean) {
		try {
			Statement st = con.createStatement();
			String sql = "insert into users values(";
			sql+="userid.nextval,'"+userbean.getUsermobile()+"',";
			sql+="'"+userbean.getUserpassword()+"',";
			sql+="'"+userbean.getUsername()+"',";
			sql+="'"+userbean.getUserface()+"',";
			sql+="'"+userbean.getUsersex()+"',";
			sql+="'"+userbean.getUserhomeaddress()+"',";
			sql+="'"+userbean.getUseremail()+"',";
			sql+="sysdate,";
			sql+="'"+userbean.getProvinceid()+"',";
			sql+="'"+userbean.getCityid()+"',";
			sql+="'"+userbean.getLeibie()+"',";
			sql+="'"+userbean.getRemainmoney()+"',";
			sql+="5,";
			sql+="0";
			sql+=")";
			System.out.println(sql);
			st.executeUpdate(sql);
		} catch (Exception e) {
			System.out.println("新增出错");
			e.printStackTrace();
		}
	}
	public int finduser(String mobilephone){
		int m=0;
		try {
			Statement st = con.createStatement();
			String sql = "select count(*) from users where usermobile='"+mobilephone+"'";
			System.out.println(sql);
			ResultSet rs = st.executeQuery(sql);
			if(rs.next()){
				m = rs.getInt(1);
			}
		} catch (Exception e) {
			System.out.println("查找用户出错");
			e.printStackTrace();
		}
		return m;
	}
	public UserBean login(String username, String password) {
		Connection conn=DBConn.openDB();
		UserBean users= new UserBean();
		try {
			Statement stmt=conn.createStatement();
			String sql="select * from users where usermobile="+username+" and userpassword='"+password+"'";
			ResultSet rs=stmt.executeQuery(sql);
			if (rs.next()) {
				users.setUserid(rs.getInt("userid"));
				users.setUsermobile(rs.getString("usermobile"));
				users.setUserpassword(rs.getString("userpassword"));
				users.setUsername(rs.getString("username"));
				users.setUserface(rs.getString("userface"));
				users.setUsersex(rs.getInt("usersex"));
				users.setUserhomeaddress(rs.getString("userhomeaddress"));
				users.setUseremail(rs.getString("useremail"));
				users.setProvinceid(rs.getInt("provinceid"));
				users.setCityid(rs.getInt("cityid"));
				users.setLeibie(rs.getInt("leibie"));
				users.setUserregisterdate(rs.getString("userregisterdate"));
				users.setRemainmoney(rs.getFloat("remainmoney"));
				users.setLedou(rs.getInt("ledou"));
				users.setPaypassword(rs.getString("paypassword"));
			}else {
				users=null;
			}
			rs.close();
			stmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return users;
	}
	public UserBean login2(String username) {
		Connection conn=DBConn.openDB();
		UserBean users= new UserBean();
		try {
			Statement stmt=conn.createStatement();
			String sql="select * from users where usermobile="+username;
			ResultSet rs=stmt.executeQuery(sql);
			if (rs.next()) {
				users.setUserid(rs.getInt("userid"));
				users.setUsermobile(rs.getString("usermobile"));
				users.setUserpassword(rs.getString("userpassword"));
				users.setUsername(rs.getString("username"));
				users.setUserface(rs.getString("userface"));
				users.setUsersex(rs.getInt("usersex"));
				users.setUserhomeaddress(rs.getString("userhomeaddress"));
				users.setUseremail(rs.getString("useremail"));
				users.setProvinceid(rs.getInt("provinceid"));
				users.setCityid(rs.getInt("cityid"));
				users.setLeibie(rs.getInt("leibie"));
				users.setUserregisterdate(rs.getString("userregisterdate"));
				users.setRemainmoney(rs.getFloat("remainmoney"));
				users.setLedou(rs.getInt("ledou"));
				users.setPaypassword(rs.getString("paypassword"));
			}else {
				users=null;
			}
			rs.close();
			stmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return users;
	}
	public UserBean logincheck(String name){
		UserBean users = new UserBean();
		try {
			Statement st = con.createStatement();
			String sql = "select *  from users where usermobile='"+name+"'";
			ResultSet rs = st.executeQuery(sql);
			if(rs.next()){
				users.setUserid(rs.getInt("userid"));
				users.setUsermobile(rs.getString("usermobile"));
				users.setUserpassword(rs.getString("userpassword"));
				users.setUsername(rs.getString("username"));
				users.setUserface(rs.getString("userface"));
				users.setUsersex(rs.getInt("usersex"));
				users.setUserhomeaddress(rs.getString("userhomeaddress"));
				users.setUseremail(rs.getString("useremail"));
				users.setProvinceid(rs.getInt("provinceid"));
				users.setCityid(rs.getInt("cityid"));
				users.setLeibie(rs.getInt("leibie"));
				users.setUserregisterdate(rs.getString("userregisterdate"));
				users.setRemainmoney(rs.getFloat("remainmoney"));
				users.setLedou(rs.getInt("ledou"));
				users.setPaypassword(rs.getString("paypassword"));
			}
		} catch (Exception e) {
			System.out.println("检查用户名出错");
			e.printStackTrace();
		}
		return users;
	}
	public UserBean findusersById(String usermobile) {
		Connection conn=DBConn.openDB();
		UserBean user=new UserBean();
		try {
			Statement stmt=conn.createStatement();
			String sql="select  u.*,p.provincename,c.cityname from users u left join province p on u.provinceid=p.provinceid left join city c on u.cityid=c.cityid where usermobile="+usermobile;
			ResultSet rs=stmt.executeQuery(sql);
			if(rs.next()){
				user.setUserid(rs.getInt("userid"));
				user.setUsermobile(rs.getString("usermobile"));
				user.setUserpassword(rs.getString("userpassword"));
				user.setUsername(rs.getString("username"));
				user.setUserface(rs.getString("userface"));
				user.setUsersex(rs.getInt("usersex"));
				user.setUserhomeaddress(rs.getString("userhomeaddress"));
				user.setUseremail(rs.getString("useremail"));
				user.setProvinceid(rs.getInt("provinceid"));
				user.setCityid(rs.getInt("cityid"));
				user.setLeibie(rs.getInt("leibie"));
				user.setUserregisterdate(rs.getString("userregisterdate"));
				user.setCityname(rs.getString("cityname"));
				user.setProvincename(rs.getString("provincename"));
				user.setLedou(rs.getInt("ledou"));
				user.setRemainmoney(rs.getFloat("remainmoney"));
				user.setPaypassword(rs.getString("paypassword"));
			}
			rs.close();
			stmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return user;
	}
	public UserBean findusersById2(int userid) {
		Connection conn=DBConn.openDB();
		UserBean user=new UserBean();
		try {
			Statement stmt=conn.createStatement();
			String sql="select  u.*,p.provincename,c.cityname from users u left join province p on u.provinceid=p.provinceid left join city c on u.cityid=c.cityid where userid="+userid;
			System.out.println(sql);
			ResultSet rs=stmt.executeQuery(sql);
			if(rs.next()){
				user.setUserid(rs.getInt("userid"));
				user.setUsermobile(rs.getString("usermobile"));
				user.setUserpassword(rs.getString("userpassword"));
				user.setUsername(rs.getString("username"));
				user.setUserface(rs.getString("userface"));
				user.setUsersex(rs.getInt("usersex"));
				user.setUserhomeaddress(rs.getString("userhomeaddress"));
				user.setUseremail(rs.getString("useremail"));
				user.setProvinceid(rs.getInt("provinceid"));
				user.setCityid(rs.getInt("cityid"));
				user.setLeibie(rs.getInt("leibie"));
				user.setUserregisterdate(rs.getString("userregisterdate"));
				user.setCityname(rs.getString("cityname"));
				user.setProvincename(rs.getString("provincename"));
				user.setLedou(rs.getInt("ledou"));
				user.setRemainmoney(rs.getFloat("remainmoney"));
				user.setPaypassword(rs.getString("paypassword"));
			}
			rs.close();
			stmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return user;
	}
	public boolean usercheckPwd(String usermobile, String oldPassword) {
		boolean isok=false;
		Connection conn = DBConn.openDB();
		try {
			Statement stmt = conn.createStatement();
			String sql = "select * from users where usermobile="+usermobile + " and userpassword='"+oldPassword +"'";
			ResultSet rs = stmt.executeQuery(sql);
			if(rs.next()){
				isok=true;
			}
			rs.close();
			stmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return isok;
	}
	public void usermodifyPwd(String usermobile, String newPassword) {
		Connection conn=DBConn.openDB();
		try {
			Statement stmt=conn.createStatement();
			String sql="update users set userpassword='"+newPassword+"' where usermobile="+usermobile;
			stmt.executeUpdate(sql);
			stmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	public void usermodifyPwd2(String usermobile, String paypassword) {
		Connection conn=DBConn.openDB();
		try {
			Statement stmt=conn.createStatement();
			String sql="update users set paypassword='"+paypassword+"' where usermobile="+usermobile;
			stmt.executeUpdate(sql);
			stmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	
	/**
	 * 城市表
	 * */
	//新增
	public void addcity(CityBean city) {
		try {
			Statement stmt = con.createStatement();
			String sql = "insert into city values('" + city.getCityname() +"',"+city.getProvinceid()+")";
			System.out.println(sql);
			stmt.executeUpdate(sql);
			stmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	//查询
	public List<CityBean> citylist() {
		List<CityBean> list = new ArrayList<CityBean>();
		try{
			Statement stmt = con.createStatement();
			String sql = "select * from city order by cityid";
			ResultSet rs = stmt.executeQuery(sql);
			while(rs.next()){
				CityBean city = new CityBean();
				city.setCityid(rs.getInt("cityid"));
				city.setCityname(rs.getString("cityName"));
				city.setProvinceid(rs.getInt("provinceid"));
				list.add(city);
			}
		}catch(SQLException e){
			e.printStackTrace();
		}
		return list;
	}
	//分页
	public List<CityBean> citylist(int pagesize, int startpage) {
		List<CityBean> list = new ArrayList<CityBean>();
		try {
			Statement st = con.createStatement();
			//select top("+pagesize+") p.*,c.* from province p,city c where p.provinceid=c.provinceid and cityid not in (select top("+startpage+") cityid from city) order by cityid asc
			String sql = "select * from (select rownum rn,p.provinceid,p.provincename,c.cityid,c.cityname from city c,province p where c.provinceid=p.provinceid) where rn>=("+startpage+"+1) and rn<=("+pagesize+"+"+startpage+")";
			System.out.println(sql);
			ResultSet rs = st.executeQuery(sql);
			while(rs.next()){
				CityBean citybean = new CityBean();
				citybean.setCityid(rs.getInt("cityid"));
				citybean.setCityname(rs.getString("cityName"));
				citybean.setProvinceid(rs.getInt("provinceid"));
				citybean.setProvincename(rs.getString("provincename"));
				list.add(citybean);
			}
		} catch (Exception e) {
			System.out.println("查询省份城市列表出错！");
			e.printStackTrace();
		}
		return list;
	}
	//删除
	public void delcity(int cityid) {
		try{
			Statement stmt = con.createStatement();
			String sql ="delete city where cityid="+cityid;
			System.out.println(sql);
			stmt.executeUpdate(sql);
			
		}catch(SQLException e){
			e.printStackTrace();
		}
		
	}
	//修改
	public void updatecity(CityBean city) {
		try {
			Statement stmt = con.createStatement();
			String sql = "update city set cityName='" + city.getCityname() +"',provinceid="+city.getProvinceid()+" where cityid="+city.getCityid();
			System.out.println(sql);
			stmt.executeUpdate(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	//查找城市
	public CityBean findCityById(String cityid) {
		CityBean city = null;
		try{
			Statement stmt = con.createStatement();
			String sql = "select * from city where cityid="+cityid;
			ResultSet rs = stmt.executeQuery(sql);
			if(rs.next()){
				city = new CityBean();
				city.setCityid(rs.getInt("cityid"));
				city.setCityname(rs.getString("cityName").trim());
				city.setProvinceid(rs.getInt("provinceid"));
			}
		}catch(SQLException e){
			e.printStackTrace();
		}
		return city;
	}
	public List<CityBean> CityList(int provinceid) {
		Connection conn = DBConn.openDB();
		List<CityBean> list = new ArrayList<CityBean>();
		try {
			Statement stmt = conn.createStatement();
			String sql = "select * from city where provinceid="+provinceid;
			ResultSet rs = stmt.executeQuery(sql);
			while(rs.next()){
				CityBean city= new CityBean();
				city.setCityid(rs.getInt("cityid"));
				city.setCityname(rs.getString("cityname").trim());
				city.setProvinceid(rs.getInt("provinceid"));
				list.add(city);
			}
			rs.close();
			stmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	/**
	 * 银行表
	 * */
	
	//新增
	public void addbank(BankVo bank) {
		try {
			Statement stmt = con.createStatement();
			String sql = "insert into bank values(bankid.nextval,'" + bank.getBankname() +"')";
			System.out.println(sql);
			stmt.executeUpdate(sql);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	//查询
	public List<BankVo> banklist() {
		List<BankVo> list = new ArrayList<BankVo>();
		try {
			Statement stmt = con.createStatement();
			String sql = "select * from bank order by bankid";
			ResultSet rs = stmt.executeQuery(sql);
			while(rs.next()){
				BankVo bank = new BankVo();
				bank.setBankid(rs.getInt("bankid"));
				bank.setBankname(rs.getString("bankname").trim());
				list.add(bank);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	//删除
	public void delbank(int bankid) {
		try {
			Statement stmt = con.createStatement();
			String sql = "delete bank where bankid=" + bankid;
			System.out.println(sql);
			stmt.executeUpdate(sql);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	//通过Id查找银行数据
	public BankVo findbankById(String bankid) {
		BankVo bank= new BankVo();
		try {
			Statement stmt = con.createStatement();
			String sql = "select * from bank where bankid="+bankid;
			System.out.println(sql);
			ResultSet rs = stmt.executeQuery(sql);
			if(rs.next()){
				bank.setBankid(rs.getInt("bankid"));
				bank.setBankname(rs.getString("bankname").trim());
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return bank;
	}
	//分页
	public List<BankVo> banklist(int pagesize, int startpage) {
		List<BankVo> list = new ArrayList<BankVo>();
		try {
			Statement st = con.createStatement();
			String sql = "select * from (select rownum rn,b.* from bank b) where rn>=("+startpage+"+1) and rn<=("+startpage+"+"+pagesize+")";
			System.out.println(sql);
			ResultSet rs = st.executeQuery(sql);
			while(rs.next()){
				BankVo bank = new BankVo();
				bank.setBankid(rs.getInt("bankid"));
				bank.setBankname(rs.getString("bankname").trim());
				list.add(bank);
			}
		} catch (Exception e) {
			System.out.println("查询省份城市列表出错！");
			e.printStackTrace();
		}
		return list;
	}
	//修改
	public void updatebank(BankVo bank) {
		try{
			Statement stmt = con.createStatement();
			String sql = "update bank set bankname='"+bank.getBankname()+"'where bankid=" + bank.getBankid();
			System.out.println(sql);
			stmt.executeUpdate(sql);
			
		}catch(SQLException e){
			e.printStackTrace();
		}
		
	}
	/**
	 * 管理员列表
	 * */
	
	//新增
	public void addmanager(ManagerBean manager) {
		try {
			Statement stmt = con.createStatement();
			String sql = "insert into manager values(";
			sql += "manager_id.nextval,";
			sql += "'"+manager.getManageraccount() +"',";
			sql += "'"+manager.getManagerpassword()+"',";
			sql += "'"+manager.getManagername()+"',";
			sql += "'"+manager.getManagerfave()+"',";
			sql += "'"+manager.getSex()+"',";
			sql += "'"+manager.getContact()+"'";
			sql += ")";
			System.out.println(sql);
			stmt.executeUpdate(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	//删除
	public void delmanager(int managerid) {
		try {
			Statement stmt = con.createStatement();
			String sql = "delete manager where manager_id="+managerid;
			System.out.println(sql);
			stmt.executeUpdate(sql);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	//查找
	public ManagerBean findmanagerById(String Managerid) {
		Connection con = DBConn.openDB();
		ManagerBean manager= new ManagerBean();
		try {
			Statement stmt = con.createStatement();
			String sql = "select * from manager where manager_id="+Managerid;
			System.out.println(sql);
			ResultSet rs = stmt.executeQuery(sql);
			if(rs.next()){
				manager.setManagerid(rs.getInt("manager_id"));
				manager.setManageraccount(rs.getString("manager_account").trim());
				manager.setManagerpassword(rs.getString("manager_password"));
				manager.setManagername(rs.getString("manager_name").trim());
				manager.setManagerfave(rs.getString("manager_fave").trim());
				manager.setSex(rs.getInt("manager_sex"));
				manager.setContact(rs.getString("manager_contact").trim());
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return manager;
	}
	//查询
	public List<ManagerBean> managerlist() {
		List<ManagerBean> list = new ArrayList<ManagerBean>();
		try {
			Statement stmt = con.createStatement();
			String sql = "select * from manager order by manager_id";
			ResultSet rs = stmt.executeQuery(sql);
			while(rs.next()){
				ManagerBean manager = new ManagerBean();
				manager.setManagerid(rs.getInt("manager_id"));
				manager.setManageraccount(rs.getString("manager_account").trim());
				manager.setManagerpassword(rs.getString("manager_password"));
				manager.setManagername(rs.getString("manager_name").trim());
				manager.setManagerfave(rs.getString("manager_fave"));
				manager.setSex(rs.getInt("manager_sex"));
				manager.setContact(rs.getString("manager_contact").trim());
				list.add(manager);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	//分页
	public List<ManagerBean> managerlist(int pagesize, int startpage) {
		Connection con = DBConn.openDB();
		List<ManagerBean> list = new ArrayList<ManagerBean>();
		try {
			Statement st = con.createStatement();
			String sql = "select * from (select rownum rn,m.* from manager m) where rn>=("+startpage+"+1) and rn<=("+startpage+"+"+pagesize+")";
			System.out.println(sql);
			ResultSet rs = st.executeQuery(sql);
			while(rs.next()){
				ManagerBean manager = new ManagerBean();
				manager.setManagerid(rs.getInt("manager_id"));
				manager.setManageraccount(rs.getString("manager_account").trim());
				manager.setManagerpassword(rs.getString("manager_password"));
				manager.setManagername(rs.getString("manager_name").trim());
				manager.setManagerfave(rs.getString("manager_fave"));
				manager.setSex(rs.getInt("manager_sex"));
				manager.setContact(rs.getString("manager_contact").trim());
				list.add(manager);
			}
		} catch (Exception e) {
			System.out.println("查询省份城市列表出错！");
			e.printStackTrace();
		}
		return list;
	}
	
	//修改
	public void updatemanager(ManagerBean manager) {
		try {
			Statement stmt = con.createStatement();
			String sql = "update manager set manager_account='";
			sql += manager.getManageraccount() +"',manager_password='";
			sql += manager.getManagerpassword() +"',manager_fave='";
			sql += manager.getManagerfave() +"',manager_name='";
			sql += manager.getManagername()+"',manager_sex='";
			sql += manager.getSex()+"',manager_contact='";
			sql += manager.getContact()+"' ";
			sql += " where manager_id="+manager.getManagerid();
			System.out.println(sql);
			stmt.executeUpdate(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	//检查旧密码
	public boolean checkPwd(String managerid, String oldpassword) {
		boolean isok = false;
		Connection conn = DBConn.openDB();
		ManagerBean manager = new ManagerBean();
		try {
			Statement stmt = conn.createStatement();
			String sql = "select * from manager where manager_id="+managerid+" and  manager_password='"+oldpassword+"'";
			System.out.println(sql);
			ResultSet rs = stmt.executeQuery(sql);
			if(rs.next()){
				isok=true;
			}
			rs.close();
			stmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return isok;
	}
	
	//修改密码
	public void modifyPwd(String managerid, String newpassword) {
		Connection conn = DBConn.openDB();
		ManagerBean manager = new ManagerBean();
		try {
			Statement stmt = conn.createStatement();
			String sql = "update manager set manager_password='"+newpassword+"' where manager_id="+managerid;
			System.out.println(sql);
			stmt.executeUpdate(sql);
			stmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	
	//登录检查
	public ManagerBean Login(String managername) {
		Connection conn=DBConn.openDB();
		ManagerBean manager= new ManagerBean();
		try {
			Statement stmt=conn.createStatement();
			String sql="select * from manager where manager_name='"+managername+"'";
			ResultSet rs=stmt.executeQuery(sql);
			if (rs.next()) {
				manager.setManagerid(rs.getInt("manager_id"));
				manager.setManageraccount(rs.getString("manager_account").trim());
				manager.setManagerpassword(rs.getString("manager_password"));
				manager.setManagername(rs.getString("manager_name").trim());
				manager.setManagerfave(rs.getString("manager_fave"));
				manager.setSex(rs.getInt("manager_sex"));
				manager.setContact(rs.getString("manager_contact").trim());
			}
		} catch (SQLException e) {
			System.out.println("登录检查失败");
			e.printStackTrace();
		}
		return manager;
	}
	/**
	 * 收货地址表
	 * */
	
	public void addAddress(AddressVo addressVo) {
		try {
			Statement st = con.createStatement();
			String sql = "insert into address values(";
			sql+="addressid.nextval,'"+addressVo.getUserid()+"',";
			sql+="'"+addressVo.getUsername()+"',";
			sql+="'"+addressVo.getAddress()+"',";
			sql+="'"+addressVo.getTelephone()+"',";
			sql+="'"+addressVo.getPhone()+"',";
			sql+="'"+addressVo.getUnicode()+"',";
			sql+="'"+addressVo.getEffective()+"'";
			sql+=")";
			st.executeUpdate(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public List<AddressVo> addressList(int userid) {
		Connection conn = DBConn.openDB();
		List<AddressVo> list = new ArrayList<AddressVo>();
		try {
			Statement stmt = conn.createStatement();
			String sql = "select * from address where userid="+userid+"order by effective";
			ResultSet rs = stmt.executeQuery(sql);
			while(rs.next()){
				AddressVo addressVo= new AddressVo();
				addressVo.setAddressid(rs.getString("addressid"));
				addressVo.setUserid(rs.getInt("userid"));
				addressVo.setUsername(rs.getString("username"));
				addressVo.setAddress(rs.getString("address"));
				addressVo.setTelephone(rs.getString("telephone"));
				addressVo.setPhone(rs.getString("phone"));
				addressVo.setUnicode(rs.getString("unicode"));
				addressVo.setEffective(rs.getInt("effective"));
				list.add(addressVo);
			}
			rs.close();
			stmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public AddressVo address(int userid) {
		Connection conn = DBConn.openDB();
		AddressVo addressVo= new AddressVo();
		try {
			Statement stmt = conn.createStatement();
			String sql = "select * from address where userid="+userid+" and effective=0";
			ResultSet rs = stmt.executeQuery(sql);
			while(rs.next()){
				
				addressVo.setAddressid(rs.getString("addressid"));
				addressVo.setUserid(rs.getInt("userid"));
				addressVo.setUsername(rs.getString("username"));
				addressVo.setAddress(rs.getString("address"));
				addressVo.setTelephone(rs.getString("telephone"));
				addressVo.setPhone(rs.getString("phone"));
				addressVo.setUnicode(rs.getString("unicode"));
				addressVo.setEffective(rs.getInt("effective"));
			}
			rs.close();
			stmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return addressVo;
	}
	public void setEffective(String addressid) {
		Connection conn=DBConn.openDB();
		try {
			Statement stmt=conn.createStatement();
			String sql="update address set effective=1";
			stmt.executeUpdate(sql);
			sql="update address set effective=0 where addressid="+addressid;
			stmt.executeUpdate(sql);
			stmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

	public void delAddress(String addressid) {
		Connection conn=DBConn.openDB();
		try {
			Statement stmt=conn.createStatement();
			String sql="delete address where addressid="+addressid;
			stmt.executeUpdate(sql);
			stmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

	public AddressVo findAddressById(String addressid) {
		Connection conn = DBConn.openDB();
		AddressVo addressVo= new AddressVo();
		try {
			Statement stmt = conn.createStatement();
			String sql = "select * from address where addressid="+addressid;
			ResultSet rs = stmt.executeQuery(sql);
			if(rs.next()){
				addressVo.setAddressid(rs.getString("addressid"));
				addressVo.setUserid(rs.getInt("userid"));
				addressVo.setUsername(rs.getString("username"));
				addressVo.setAddress(rs.getString("address"));
				addressVo.setTelephone(rs.getString("telephone"));
				addressVo.setPhone(rs.getString("phone"));
				addressVo.setUnicode(rs.getString("unicode"));
				addressVo.setEffective(rs.getInt("effective"));
			}
			rs.close();
			stmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return addressVo;
	}

	public void updateAddressVo(AddressVo addressVo) {
		try {
			Statement stm=con.createStatement();
			String sql="update address set  username='"+addressVo.getUsername()+
			"',address='"+addressVo.getAddress()+
			"',telephone='"+addressVo.getTelephone()+
			"',phone='"+addressVo.getPhone()+
			"',unicode='"+addressVo.getUnicode()+"' where addressid="+addressVo.getAddressid();
			stm.executeUpdate(sql);
			stm.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

	public int findAddress(int userid) {
		int m=0;
		try {
			Statement st = con.createStatement();
			String sql = "select count(*) from address where userid='"+userid+"'";
			ResultSet rs = st.executeQuery(sql);
			if(rs.next()){
				m = rs.getInt(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return m;
	}
	/**
	 * 家具表
	 * */
	public void addhome(HomeVo home) {
		try {
			Statement stmt = con.createStatement();
			String sql = "insert into home values(";
			sql += "home_id.nextval,";
			sql += "'"+home.getHomename() +"',";
			sql += "'"+home.getPictureurl()+"',";
			sql += "'"+home.getOneword()+"',";
			sql += "'"+home.getHomecount()+"',";
			sql += "'"+home.getPrice()+"',";
			sql += "'"+home.getDiscount()+"',";
			sql += "'"+home.getEffective()+"',";
			sql += "sysdate,";
			sql += "'"+home.getReplayusername()+"',";
			sql +="'"+home.getChargeType()+"',";
			sql +="'"+home.getBig_small()+"',";
			sql +="'"+home.getBuyed()+"',";
			sql += "'"+home.getHometype()+"',";
			sql += "'"+home.getPictureurl2()+"',";
			sql += "'"+home.getPictureurl3()+"',";
			sql += "'"+home.getPictureurl4()+"',";
			sql+="'"+home.getTejia()+"',";
			sql += "'"+home.getFengge()+"',";
			sql += "'"+home.getChandi()+"'";
			sql += ")";
			System.out.println(sql);
			stmt.executeUpdate(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	public void delhome(int homeid) {
		try {
			Statement stmt = con.createStatement();
			String sql = "delete home where homeid="+homeid;
			System.out.println(sql);
			stmt.executeUpdate(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	public HomeVo findhomeById(String homeid) {
		Connection con = DBConn.openDB();
		HomeVo home= new HomeVo();
		try {
			Statement stmt = con.createStatement();
			String sql = "select * from home where home_id="+homeid;
			System.out.println(sql);
			ResultSet rs = stmt.executeQuery(sql);
			if(rs.next()){
				home.setHomeid(rs.getInt("home_id"));
				home.setHomename(rs.getString("home_name"));
				home.setPictureurl(rs.getString("picture_url"));
				home.setOneword(rs.getString("one_word"));
				home.setHomecount(rs.getInt("home_count"));
				home.setPrice(rs.getFloat("price"));
				home.setDiscount(rs.getFloat("discount"));
				home.setEffective(rs.getInt("effective"));
				home.setReplaydate(rs.getString("replay_date"));
				home.setReplayusername(rs.getString("replay_username"));
				home.setChargeType(rs.getInt("charge_type"));
				home.setBig_small(rs.getString("big_small"));
				home.setBuyed(rs.getInt("buyed"));
				home.setHometype(rs.getInt("hometype"));
				home.setPictureurl2(rs.getString("picture_url2"));
				home.setPictureurl3(rs.getString("picture_url3"));
				home.setPictureurl4(rs.getString("picture_url4"));
				home.setTejia(rs.getInt("tejia"));
				home.setFengge(rs.getString("fengge"));
				home.setChandi(rs.getString("chandi"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return home;
	}
	
	public List<HomeVo> homeList() {
		List<HomeVo> list = new ArrayList<HomeVo>();
		try {
			Statement stmt = con.createStatement();
			String sql = "select * from home order by home_id";
			ResultSet rs = stmt.executeQuery(sql);
			while(rs.next()){
				HomeVo home = new HomeVo();
				home.setHomeid(rs.getInt("home_id"));
				home.setHomename(rs.getString("home_name"));
				home.setPictureurl(rs.getString("picture_url"));
				home.setOneword(rs.getString("one_word"));
				home.setHomecount(rs.getInt("home_count"));
				home.setPrice(rs.getFloat("price"));
				home.setDiscount(rs.getFloat("discount"));
				home.setEffective(rs.getInt("effective"));
				home.setReplaydate(rs.getString("replay_date"));
				home.setReplayusername(rs.getString("replay_username"));
				home.setChargeType(rs.getInt("charge_type"));
				home.setBig_small(rs.getString("big_small"));
				home.setBuyed(rs.getInt("buyed"));
				home.setHometype(rs.getInt("hometype"));
				home.setPictureurl2(rs.getString("picture_url2"));
				home.setPictureurl3(rs.getString("picture_url3"));
				home.setPictureurl4(rs.getString("picture_url4"));
				home.setTejia(rs.getInt("tejia"));
				home.setFengge(rs.getString("fengge"));
				home.setChandi(rs.getString("chandi"));
				list.add(home);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public List<HomeVo> homeList(int pagesize, int startpage) {
		Connection con = DBConn.openDB();
		List<HomeVo> list = new ArrayList<HomeVo>();
		try {
			Statement st = con.createStatement();
			String sql = "select * from (select rownum rn,h.* from home h) where rn>=("+startpage+"+1) and rn<=("+startpage+"+"+pagesize+")";
			System.out.println(sql);
			ResultSet rs = st.executeQuery(sql);
			while(rs.next()){
				HomeVo home = new HomeVo();
				home.setHomeid(rs.getInt("home_id"));
				home.setHomename(rs.getString("home_name"));
				home.setPictureurl(rs.getString("picture_url"));
				home.setOneword(rs.getString("one_word"));
				home.setHomecount(rs.getInt("home_count"));
				home.setPrice(rs.getFloat("price"));
				home.setDiscount(rs.getFloat("discount"));
				home.setEffective(rs.getInt("effective"));
				home.setReplaydate(rs.getString("replay_date"));
				home.setReplayusername(rs.getString("replay_username"));
				home.setChargeType(rs.getInt("charge_type"));
				home.setBig_small(rs.getString("big_small"));
				home.setBuyed(rs.getInt("buyed"));
				home.setHometype(rs.getInt("hometype"));
				home.setPictureurl2(rs.getString("picture_url2"));
				home.setPictureurl3(rs.getString("picture_url3"));
				home.setPictureurl4(rs.getString("picture_url4"));
				home.setTejia(rs.getInt("tejia"));
				home.setFengge(rs.getString("fengge"));
				home.setChandi(rs.getString("chandi"));
				list.add(home);
			}
		} catch (Exception e) {
			System.out.println("查询家具列表出错！");
			e.printStackTrace();
		}
		return list;
	}
	
	public void updatehome(HomeVo home) {
		try {
			Statement stmt = con.createStatement();
			String sql = "update home set home_name='";
			sql += home.getHomename() +"',picture_url='";
			sql += home.getPictureurl() +"',one_word='";
			sql += home.getOneword() +"',home_count="+home.getHomecount()+",price=";
			sql += home.getPrice()+",discount=";
			sql += home.getDiscount()+",effective=";
			sql += home.getEffective()+",replay_date=sysdate,replay_username='";
			sql += home.getReplayusername()+"',charge_type=";
			sql += home.getChargeType()+",,hometype= ";
			sql += home.getHometype()+",big_small=";
			sql += home.getBig_small()+",picture_url2= ";
			sql += home.getPictureurl2() +"',picture_url3='";
			sql += home.getPictureurl3() +"',picture_url4='";
			sql += home.getPictureurl4() +"',tejia= "+home.getTejia()+",fengge='";
			sql += home.getFengge() +"',chandi= '"+home.getChandi()+"'";
			sql += " where home_id="+home.getHomeid();
			System.out.println(sql);
			stmt.executeUpdate(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public List<HomeVo> homeList(int pagesize, int startpage, int hometype) {
		Connection con = DBConn.openDB();
		List<HomeVo> list = new ArrayList<HomeVo>();
		try {
			Statement st = con.createStatement();
			String sql = "select * from (select h.* from home h) where rownum>=("+startpage+"+1) and rownum<=("+startpage+"+"+pagesize+") and hometype="+hometype;
			System.out.println(sql);
			ResultSet rs = st.executeQuery(sql);
			while(rs.next()){
				HomeVo home = new HomeVo();
				home.setHomeid(rs.getInt("home_id"));
				home.setHomename(rs.getString("home_name"));
				home.setPictureurl(rs.getString("picture_url"));
				home.setOneword(rs.getString("one_word"));
				home.setHomecount(rs.getInt("home_count"));
				home.setPrice(rs.getFloat("price"));
				home.setDiscount(rs.getFloat("discount"));
				home.setEffective(rs.getInt("effective"));
				home.setReplaydate(rs.getString("replay_date"));
				home.setReplayusername(rs.getString("replay_username"));
				home.setChargeType(rs.getInt("charge_type"));
				home.setBig_small(rs.getString("big_small"));
				home.setBuyed(rs.getInt("buyed"));
				home.setHometype(rs.getInt("hometype"));
				home.setPictureurl2(rs.getString("picture_url2"));
				home.setPictureurl3(rs.getString("picture_url3"));
				home.setPictureurl4(rs.getString("picture_url4"));
				home.setTejia(rs.getInt("tejia"));
				home.setFengge(rs.getString("fengge"));
				home.setChandi(rs.getString("chandi"));
				list.add(home);
			}
		} catch (Exception e) {
			System.out.println("查询家具列表出错！");
			e.printStackTrace();
		}
		return list;
	}

	//查找家具
	public List<HomeVo> homeList(int pagesize, int startpage, String homename) {
		Connection con = DBConn.openDB();
		List<HomeVo> list = new ArrayList<HomeVo>();
		try {
			Statement st = con.createStatement();
			String sql = "select * from (select rownum rn,h.* from home h where h.home_name like '%"+homename +"%') where rn>=("+startpage+"+1) and rn<=("+startpage+"+"+pagesize+")";
			System.out.println(sql);
			ResultSet rs = st.executeQuery(sql);
			while(rs.next()){
				HomeVo home = new HomeVo();
				home.setHomeid(rs.getInt("home_id"));
				home.setHomename(rs.getString("home_name"));
				home.setPictureurl(rs.getString("picture_url"));
				home.setOneword(rs.getString("one_word"));
				home.setHomecount(rs.getInt("home_count"));
				home.setPrice(rs.getFloat("price"));
				home.setDiscount(rs.getFloat("discount"));
				home.setEffective(rs.getInt("effective"));
				home.setReplaydate(rs.getString("replay_date"));
				home.setReplayusername(rs.getString("replay_username"));
				home.setChargeType(rs.getInt("charge_type"));
				home.setBig_small(rs.getString("big_small"));
				home.setBuyed(rs.getInt("buyed"));
				home.setHometype(rs.getInt("hometype"));
				home.setPictureurl2(rs.getString("picture_url2"));
				home.setPictureurl3(rs.getString("picture_url3"));
				home.setPictureurl4(rs.getString("picture_url4"));
				home.setTejia(rs.getInt("tejia"));
				home.setFengge(rs.getString("fengge"));
				home.setChandi(rs.getString("chandi"));
				list.add(home);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	/**
	 * 订单表
	 * */
	public List<DingdanVo> dingdanList(int userid) {
		Connection conn = DBConn.openDB();
		List<DingdanVo> list = new ArrayList<DingdanVo>();
		try {
			Statement stmt = conn.createStatement();
			String sql = "select * from dingdan where userid="+userid+"order by effective";
			ResultSet rs = stmt.executeQuery(sql);
			while(rs.next()){
				DingdanVo dingdanVo= new DingdanVo();
				dingdanVo.setDingdanid(rs.getString("dingdanid"));
				dingdanVo.setDingdannumber(rs.getString("dingdannumber"));
				dingdanVo.setName(rs.getString("name"));
				dingdanVo.setTime(rs.getString("time"));
				dingdanVo.setMoney(rs.getFloat("money"));
				dingdanVo.setUserid(rs.getInt("userid"));
				dingdanVo.setUsername(rs.getString("username"));
				dingdanVo.setUsermobile(rs.getString("usermobile"));
				dingdanVo.setAddress(rs.getString("address"));
				dingdanVo.setYouhui(rs.getFloat("youhui"));
				dingdanVo.setPrice(rs.getFloat("price"));
				dingdanVo.setEffective(rs.getInt("effective"));
				dingdanVo.setTupian(rs.getString("tupian"));
				dingdanVo.setHomeid(rs.getInt("homeid"));
				dingdanVo.setShuliang(rs.getInt("shuliang"));
				list.add(dingdanVo);
			}
			rs.close();
			stmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	public int fidDingdan1(int userid) {
		int m=0;
		try {
			Statement st = con.createStatement();
			String sql = "select count(*) from dingdan where userid='"+userid+"' and effective=1";
			ResultSet rs = st.executeQuery(sql);
			if(rs.next()){
				m = rs.getInt(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return m;
	}

	public int fidDingdan2(int userid) {
		int m=0;
		try {
			Statement st = con.createStatement();
			String sql = "select count(*) from dingdan where userid='"+userid+"' and effective=2";
			ResultSet rs = st.executeQuery(sql);
			if(rs.next()){
				m = rs.getInt(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return m;
	}

	public int fidDingdan3(int userid) {
		int m=0;
		try {
			Statement st = con.createStatement();
			String sql = "select count(*) from dingdan where userid='"+userid+"' and effective=3";
			ResultSet rs = st.executeQuery(sql);
			if(rs.next()){
				m = rs.getInt(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return m;
	}

	public int fidDingdan4(int userid) {
		int m=0;
		try {
			Statement st = con.createStatement();
			String sql = "select count(*) from dingdan where userid='"+userid+"' and effective=4";
			ResultSet rs = st.executeQuery(sql);
			if(rs.next()){
				m = rs.getInt(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return m;
	}

	public DingdanVo finddingdanById2(int homeid, int userid) {
		Connection con = DBConn.openDB();
		DingdanVo dingdanVo= new DingdanVo();
		try {
			Statement stmt = con.createStatement();
			String sql = "select * from dingdan where homeid="+homeid+" and userid="+userid;
			ResultSet rs = stmt.executeQuery(sql);
			if(rs.next()){
				dingdanVo.setDingdanid(rs.getString("dingdanid"));
				dingdanVo.setDingdannumber(rs.getString("dingdannumber"));
				dingdanVo.setName(rs.getString("name"));
				dingdanVo.setTime(rs.getString("time"));
				dingdanVo.setMoney(rs.getFloat("money"));
				dingdanVo.setUserid(rs.getInt("userid"));
				dingdanVo.setUsername(rs.getString("username"));
				dingdanVo.setUsermobile(rs.getString("usermobile"));
				dingdanVo.setAddress(rs.getString("address"));
				dingdanVo.setYouhui(rs.getFloat("youhui"));
				dingdanVo.setPrice(rs.getFloat("price"));
				dingdanVo.setEffective(rs.getInt("effective"));
				dingdanVo.setTupian(rs.getString("tupian"));
				dingdanVo.setHomeid(rs.getInt("homeid"));
				dingdanVo.setShuliang(rs.getInt("shuliang"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return dingdanVo;
	}
	public int fidDingdan5(int userid) {
		int m=0;
		try {
			Statement st = con.createStatement();
			String sql = "select count(*) from dingdan where userid='"+userid+"' and effective=5";
			ResultSet rs = st.executeQuery(sql);
			if(rs.next()){
				m = rs.getInt(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return m;
	}
	public int fidDingdan(int userid) {
		int m=0;
		try {
			Statement st = con.createStatement();
			String sql = "select count(*) from dingdan where userid="+userid;
			ResultSet rs = st.executeQuery(sql);
			if(rs.next()){
				m = rs.getInt(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return m;
	}

	public List<DingdanVo> dingdanList(int userid, int effective) {
		Connection conn = DBConn.openDB();
		List<DingdanVo> list = new ArrayList<DingdanVo>();
		try {
			Statement stmt = conn.createStatement();
			String sql = "select * from dingdan where userid="+userid+" and effective="+effective+" order by dingdanid";
			System.out.println(sql);
			ResultSet rs = stmt.executeQuery(sql);
			while(rs.next()){
				DingdanVo dingdanVo= new DingdanVo();
				dingdanVo.setDingdanid(rs.getString("dingdanid"));
				dingdanVo.setDingdannumber(rs.getString("dingdannumber"));
				dingdanVo.setName(rs.getString("name"));
				dingdanVo.setTime(rs.getString("time"));
				dingdanVo.setMoney(rs.getFloat("money"));
				dingdanVo.setUserid(rs.getInt("userid"));
				dingdanVo.setUsername(rs.getString("username"));
				dingdanVo.setUsermobile(rs.getString("usermobile"));
				dingdanVo.setAddress(rs.getString("address"));
				dingdanVo.setYouhui(rs.getFloat("youhui"));
				dingdanVo.setPrice(rs.getFloat("price"));
				dingdanVo.setEffective(rs.getInt("effective"));
				dingdanVo.setTupian(rs.getString("tupian"));
				dingdanVo.setHomeid(rs.getInt("homeid"));
				dingdanVo.setShuliang(rs.getInt("shuliang"));
				list.add(dingdanVo);
			}
			rs.close();
			stmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	//随机生成订单号
	private String dingdannumber() throws SQLException{
		Random rand = new Random();
		String sql = "";
		long cnt = 0;
		int suffix=0;
		String prefix="";
		Connection conn = DBConn.openDB();
		Statement stmt = conn.createStatement();
		do{
			suffix=rand.nextInt(8999999)+1000000;
			prefix = ContextUtils.produceExchangeCode()+suffix;
			sql = "select count(dingdannumber) cnt from dingdan where dingdannumber='"+prefix+"'";
			ResultSet rs = stmt.executeQuery(sql);
			if(rs.next()){
				cnt = rs.getInt("cnt");
			}
		}while(cnt>0);
		stmt.close();
		return prefix;
	}

	public void addDingdan(DingdanVo dingdan,int money) {
		try {
			Statement stmt = con.createStatement();
			String sql = "insert into dingdan values(";
			sql += "dingdanid.nextval,";
			sql += "'"+dingdannumber()+"',";
			sql += "'"+dingdan.getName() +"',";
			sql += "sysdate,";
			sql += "'"+dingdan.getMoney()+"',";
			sql += "'"+dingdan.getUsername()+"',";
			sql += "'"+dingdan.getUsermobile()+"',";
			sql += "'"+dingdan.getAddress()+"',";
			sql +="'"+dingdan.getYouhui()+"',";
			sql +="'"+dingdan.getPrice()+"',";
			sql +="'"+dingdan.getEffective()+"',";
			sql +="'"+dingdan.getUserid()+"',";
			sql +="'"+dingdan.getTupian()+"',";
			sql +="'"+dingdan.getHomeid()+"',";
			sql +="'"+dingdan.getShuliang()+"',";
			sql +="'"+dingdan.getLiuyan()+"'";
			sql += ")";
			System.out.println(sql);
			stmt.executeUpdate(sql);
			String hql="update users set ledou="+money+"where userid="+dingdan.getUserid();
			stmt.executeUpdate(hql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	
	public DingdanVo finddingdanById(String dingdanid) {
		Connection con = DBConn.openDB();
		DingdanVo dingdanVo= new DingdanVo();
		try {
			Statement stmt = con.createStatement();
			String sql = "select * from dingdan where dingdanid="+dingdanid;
			ResultSet rs = stmt.executeQuery(sql);
			if(rs.next()){
				dingdanVo.setDingdanid(rs.getString("dingdanid"));
				dingdanVo.setDingdannumber(rs.getString("dingdannumber"));
				dingdanVo.setName(rs.getString("name"));
				dingdanVo.setTime(rs.getString("time"));
				dingdanVo.setMoney(rs.getFloat("money"));
				dingdanVo.setUserid(rs.getInt("userid"));
				dingdanVo.setUsername(rs.getString("username"));
				dingdanVo.setUsermobile(rs.getString("usermobile"));
				dingdanVo.setAddress(rs.getString("address"));
				dingdanVo.setYouhui(rs.getFloat("youhui"));
				dingdanVo.setPrice(rs.getFloat("price"));
				dingdanVo.setEffective(rs.getInt("effective"));
				dingdanVo.setTupian(rs.getString("tupian"));
				dingdanVo.setHomeid(rs.getInt("homeid"));
				dingdanVo.setShuliang(rs.getInt("shuliang"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return dingdanVo;
	}
	public void updatedingdan(DingdanVo dingdan) {
		Connection conn=DBConn.openDB();
		try {
			Statement stmt=conn.createStatement();
			String sql="update dingdan set effective=2 where dingdanid="+dingdan.getDingdanid();
			stmt.executeUpdate(sql);
			String sql2="update users set remainmoney=remainmoney-"+dingdan.getMoney()+" where userid="+dingdan.getUserid();
			stmt.executeUpdate(sql2);
			String sql3="update home set buyed=buyed+"+dingdan.getShuliang()+" where home_id="+dingdan.getHomeid();
			stmt.executeUpdate(sql3);
			
			stmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	public void deldingdan(String dingdanid) {
		try {
			Statement stmt = con.createStatement();
			String sql = "delete dingdan where dingdanid="+dingdanid;
			stmt.executeUpdate(sql);
			stmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	public void updatedingdan2(DingdanVo dingdan) {
		Connection conn=DBConn.openDB();
		try {
			Statement stmt=conn.createStatement();
			String sql="update dingdan set effective=4 where dingdanid="+dingdan.getDingdanid();
			stmt.executeUpdate(sql);
			stmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	public void updatedingdan3(DingdanVo dingdan) {
		Connection conn=DBConn.openDB();
		try {
			Statement stmt=conn.createStatement();
			String sql="update dingdan set effective=3 where dingdanid="+dingdan.getDingdanid();
			stmt.executeUpdate(sql);
			stmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	
	public List<DingdanVo> dingdanList(int pagesize, int startpage,int userid, 
			int effective) {
		Connection con = DBConn.openDB();
		List<DingdanVo> list = new ArrayList<DingdanVo>();
		try {
			Statement st = con.createStatement();
			String sql = "select * from (select h.* from dingdan h) where rownum>=("+startpage+"+1) and rownum<=("+startpage+"+"+pagesize+") and userid="+userid+" and effective="+effective;
			System.out.println(sql);
			ResultSet rs = st.executeQuery(sql);
			while(rs.next()){
				DingdanVo dingdanVo= new DingdanVo();
				dingdanVo.setDingdanid(rs.getString("dingdanid"));
				dingdanVo.setDingdannumber(rs.getString("dingdannumber"));
				dingdanVo.setName(rs.getString("name"));
				dingdanVo.setTime(rs.getString("time"));
				dingdanVo.setMoney(rs.getFloat("money"));
				dingdanVo.setUserid(rs.getInt("userid"));
				dingdanVo.setUsername(rs.getString("username"));
				dingdanVo.setUsermobile(rs.getString("usermobile"));
				dingdanVo.setAddress(rs.getString("address"));
				dingdanVo.setYouhui(rs.getFloat("youhui"));
				dingdanVo.setPrice(rs.getFloat("price"));
				dingdanVo.setEffective(rs.getInt("effective"));
				dingdanVo.setTupian(rs.getString("tupian"));
				dingdanVo.setHomeid(rs.getInt("homeid"));
				dingdanVo.setShuliang(rs.getInt("shuliang"));
				list.add(dingdanVo);
			}
			rs.close();
			st.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	public List<DingdanVo> dingdanList1(int pagesize, int startpage) {
		Connection con = DBConn.openDB();
		List<DingdanVo> list = new ArrayList<DingdanVo>();
		try {
			Statement st = con.createStatement();
			String sql = "select * from (select h.* from dingdan h) where rownum>=("+startpage+"+1) and rownum<=("+startpage+"+"+pagesize+") and effective=2";
			ResultSet rs = st.executeQuery(sql);
			while(rs.next()){
				DingdanVo dingdanVo= new DingdanVo();
				dingdanVo.setDingdanid(rs.getString("dingdanid"));
				dingdanVo.setDingdannumber(rs.getString("dingdannumber"));
				dingdanVo.setName(rs.getString("name"));
				dingdanVo.setTime(rs.getString("time"));
				dingdanVo.setMoney(rs.getFloat("money"));
				dingdanVo.setUserid(rs.getInt("userid"));
				dingdanVo.setUsername(rs.getString("username"));
				dingdanVo.setUsermobile(rs.getString("usermobile"));
				dingdanVo.setAddress(rs.getString("address"));
				dingdanVo.setYouhui(rs.getFloat("youhui"));
				dingdanVo.setPrice(rs.getFloat("price"));
				dingdanVo.setEffective(rs.getInt("effective"));
				dingdanVo.setTupian(rs.getString("tupian"));
				dingdanVo.setHomeid(rs.getInt("homeid"));
				dingdanVo.setShuliang(rs.getInt("shuliang"));
				list.add(dingdanVo);
			}
			rs.close();
			st.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	/**
	 *新闻资讯表 
	 * */
	
	public void addnewsMsg(NewMsgBean msg) {
		Connection conn = DBConn.openDB();
		try {
			Statement stmt = conn.createStatement();
			String sql = "insert into NewMsg values(";
			sql += "new_msg_id.nextval,";
			sql += "'"+msg.getMsgName() +"',";
			sql += "'"+msg.getOneWord()+"',";
			sql += "'"+msg.getMsgContent()+"',";
			sql += "'"+msg.getMsgContentUrl()+"',";
			sql += "sysdate,";
			sql += "'"+msg.getPublishUsername()+"',";
			sql += "'"+msg.getEffective()+"',";
			sql += "'"+msg.getSeq()+"',";
			sql += "'"+msg.getNewsType()+"',";
			sql += "'"+msg.getImageUrl()+"'";
			sql += ")";
			System.out.println(sql);
			stmt.executeUpdate(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	public void delnewMsg(String newMsgId) {
		Connection conn = DBConn.openDB();
		try {
			Statement stmt = conn.createStatement();
			String sql = "delete NewMsg where new_msg_id="+newMsgId;
			System.out.println(sql);
			stmt.executeUpdate(sql);
			stmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	public NewMsgBean findNewMsgById(String newMsgId) {
		Connection conn = DBConn.openDB();
		NewMsgBean msg= new NewMsgBean();
		try {
			Statement stmt = conn.createStatement();
			String sql = "select * from NewMsg where new_msg_id="+newMsgId;
			System.out.println(sql);
			ResultSet rs = stmt.executeQuery(sql);
			if(rs.next()){
				msg.setNewMsgId(rs.getInt("new_msg_id"));
				msg.setMsgName(rs.getString("msg_name").trim());
				msg.setOneWord(rs.getString("one_word"));
				msg.setMsgContent(rs.getString("msg_content"));
				msg.setMsgContentUrl(rs.getString("msg_content_url").trim());
				msg.setPublishDate(rs.getString("publish_date"));
				msg.setPublishUsername(rs.getString("publish_username"));
				msg.setEffective(rs.getInt("effective"));
				msg.setSeq(rs.getInt("seq"));
				msg.setNewsType(rs.getInt("newsType"));
				msg.setImageUrl(rs.getString("image_Url"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return msg;
	}
	public List<NewMsgBean> findNewMsgById(int pagesize, int startpage) {
		Connection con = DBConn.openDB();
		List<NewMsgBean> list = new ArrayList<NewMsgBean>();
		try {
			Statement st = con.createStatement();
			String sql = "select * from (select rownum rn,n.* from newmsg n) where rn>=("+startpage+"+1) and rn<=("+startpage+"+"+pagesize+")";
			System.out.println(sql);
			ResultSet rs = st.executeQuery(sql);
			while(rs.next()){
				NewMsgBean msg=new NewMsgBean();
				msg.setNewMsgId(rs.getInt("new_msg_id"));
				msg.setMsgName(rs.getString("msg_name").trim());
				msg.setOneWord(rs.getString("one_word"));
				msg.setMsgContent(rs.getString("msg_content"));
				msg.setMsgContentUrl(rs.getString("msg_content_url").trim());
				msg.setPublishDate(rs.getString("publish_date"));
				msg.setPublishUsername(rs.getString("publish_username"));
				msg.setEffective(rs.getInt("effective"));
				msg.setSeq(rs.getInt("seq"));
				msg.setNewsType(rs.getInt("newsType"));
				msg.setImageUrl(rs.getString("image_Url"));
				list.add(msg);
			}
		} catch (Exception e) {
			System.out.println("查询新闻资讯出错！");
			e.printStackTrace();
		}
		return list;
	}
	public List<NewMsgBean> newmsgList() {
		Connection conn=DBConn.openDB();
		List<NewMsgBean> list=new ArrayList<NewMsgBean>();
		try {
			Statement stmt=conn.createStatement();
			String sql="select * from NewMsg order by new_msg_id";
			System.out.println(sql);
			ResultSet rs=stmt.executeQuery(sql);
			while(rs.next()){
				NewMsgBean msg=new NewMsgBean();
				msg.setNewMsgId(rs.getInt("new_msg_id"));
				msg.setMsgName(rs.getString("msg_name").trim());
				msg.setOneWord(rs.getString("one_word"));
				msg.setMsgContent(rs.getString("msg_content"));
				msg.setMsgContentUrl(rs.getString("msg_content_url").trim());
				msg.setPublishDate(rs.getString("publish_date"));
				msg.setPublishUsername(rs.getString("publish_username"));
				msg.setEffective(rs.getInt("effective"));
				msg.setSeq(rs.getInt("seq"));
				msg.setNewsType(rs.getInt("newsType"));
				msg.setImageUrl(rs.getString("image_Url"));
				list.add(msg);
			}
			rs.close();
			stmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	//模糊查询
	public List<NewMsgBean> newmsgList(String name) {
		Connection conn = DBConn.openDB();
		List<NewMsgBean> list=new ArrayList<NewMsgBean>();
		try {
			Statement stm=conn.createStatement();
			String sql="select * from NewMsg where  msg_name  like '%"+name+"%'";
			ResultSet rs=stm.executeQuery(sql);
			while(rs.next()){
				NewMsgBean msg=new NewMsgBean();
				msg.setNewMsgId(rs.getInt("new_msg_id"));
				msg.setMsgName(rs.getString("msg_name").trim());
				msg.setOneWord(rs.getString("one_word"));
				msg.setMsgContent(rs.getString("msg_content"));
				msg.setMsgContentUrl(rs.getString("msg_content_url").trim());
				msg.setPublishDate(rs.getString("publish_date"));
				msg.setPublishUsername(rs.getString("publish_username"));
				msg.setEffective(rs.getInt("effective"));
				msg.setSeq(rs.getInt("seq"));
				msg.setNewsType(rs.getInt("newsType"));
				msg.setImageUrl(rs.getString("image_Url"));
				list.add(msg);
			}
			stm.close();
			rs.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	public void updatenewMsg(NewMsgBean msg) {
		Connection conn=DBConn.openDB();
		try {
			Statement stm=conn.createStatement();
			String sql="update NewMsg set  msg_name='"+msg.getMsgName()+
			"',one_word='"+msg.getOneWord()+
			"',msg_content='"+msg.getMsgContent()+
			"',msg_content_url='"+msg.getMsgContentUrl()+
			"',publish_date=sysdate,effective="+msg.getEffective()+
			",seq="+msg.getSeq()+",newsType="+msg.getNewsType()+
			",Image_Url='"+msg.getImageUrl()+"' where new_msg_id="+msg.getNewMsgId();
			System.out.println(sql);
			stm.executeUpdate(sql);
			stm.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	/**
	 * 优惠券活动表
	 * */
	//新增
	public void addExchangerecord(ExchangeRecordVo exchange) {
		Connection conn = DBConn.openDB();
		try {
			Statement stmt = conn.createStatement();
			String sql = "insert into exchangerecord values(";
			sql += "activity_id.nextval,";
			sql += "'"+exchange.getActivityname() +"',";
			sql += "'"+exchange.getActivitydesc()+"',";
			sql += "sysdate,";
			sql += "'"+exchange.getManagerid()+"'";
			sql += ")";
			System.out.println(sql);
			stmt.executeUpdate(sql);
			stmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	//删除
	public void delExchangerecord(int activityid) {
		Connection conn = DBConn.openDB();
		try {
			Statement stmt = conn.createStatement();
			String sql = "delete exchangerecord where activity_id="+activityid;
			System.out.println(sql);
			stmt.executeUpdate(sql);
			stmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	//列表
	public List<ExchangeRecordVo> exchangerecordList() {
		Connection conn=DBConn.openDB();
		List<ExchangeRecordVo> list=new ArrayList<ExchangeRecordVo>();
		try {
			Statement stmt=conn.createStatement();
			String sql="select * from exchangerecord";
			System.out.println(sql);
			ResultSet rs=stmt.executeQuery(sql);
			while(rs.next()){
				ExchangeRecordVo exchange= new ExchangeRecordVo();
				exchange.setActivityid(rs.getInt("activity_id"));
				exchange.setActivityname(rs.getString("activity_name"));
				exchange.setActivitydesc(rs.getString("activity_desc"));
				exchange.setActivitydate(rs.getString("activity_date"));
				exchange.setManagerid(rs.getInt("manager_id"));
				list.add(exchange);
			}
			rs.close();
			stmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	//分页
	public List<ExchangeRecordVo> exchangerecordList(int managerid,int pagesize, int startpage) {
		Connection conn = DBConn.openDB();
		List<ExchangeRecordVo> list = new ArrayList<ExchangeRecordVo>();
		try {
			Statement stmt = conn.createStatement();
			String sql = "select * from (select rownum rn,e.activity_id,e.activity_name,e.activity_desc,m.manager_id,e.activity_date from manager m,exchangerecord e where e.manager_id=m.manager_id and rownum<='"+startpage+pagesize+"') where rn='"+(startpage+1)+"'";
			System.out.println(sql);
			ResultSet rs = stmt.executeQuery(sql);
			while(rs.next()){
				ExchangeRecordVo exchange= new ExchangeRecordVo();
				exchange.setActivityid(rs.getInt("activity_id"));
				exchange.setActivityname(rs.getString("activity_name"));
				exchange.setActivitydesc(rs.getString("activity_desc"));
				exchange.setActivitydate(rs.getString("activity_date"));
				exchange.setManagerid(rs.getInt("manager_id"));
				list.add(exchange);
			}
			rs.close();
			stmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	//查询
	public ExchangeRecordVo findExchangerecordById(String activityid) {
		Connection conn = DBConn.openDB();
		ExchangeRecordVo exchange= new ExchangeRecordVo();
		try {
			Statement stmt = conn.createStatement();
			String sql = "select * from exchangerecord where activity_id="+activityid;
			System.out.println(sql);
			ResultSet rs = stmt.executeQuery(sql);
			if(rs.next()){
				exchange.setActivityid(rs.getInt("activity_id"));
				exchange.setActivityname(rs.getString("activity_name"));
				exchange.setActivitydesc(rs.getString("activity_desc"));
				exchange.setActivitydate(rs.getString("activity_date"));
				exchange.setManagerid(rs.getInt("manager_id"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return exchange;
	}
	//修改
	public void updateExchangerecord(ExchangeRecordVo exchange) {
		Connection conn=DBConn.openDB();
		try {
			Statement stm=conn.createStatement();
			String sql="update exchangerecord set activity_name='"+exchange.getActivityname()+"',activity_date=sysdate, activity_desc='"+exchange.getActivitydesc()+"' where activity_id="+exchange.getActivityid();
			System.out.println(sql);
			stm.executeUpdate(sql);
			stm.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	/**
	 * 优惠券活动明细表
	 * */
	public void addexchangecode(int activityid, int money, int day,int count) {
		Connection conn = DBConn.openDB();
		try {
			Statement stmt = conn.createStatement();
			for(int i=0;i<count;i++){
				String sql = "insert into exchangecode(exchangecodeid,activityid,userid,exchangecode,exchangemeony,exchangestatus,exchangedate,validay) values(";
				sql += "exchangecodeid.nextval,";
				sql += "'"+activityid+"',";
				sql += "null,";
				sql += "'"+procudeCode()+"',";
				sql += " "+money+",";
				sql += " 0,";
				sql += "null,";
				sql += ""+day+"";
				sql += ")";
				System.out.println(sql);
				stmt.executeUpdate(sql);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	//产生随机兑换码
	private String procudeCode() throws SQLException{
		Random rand = new Random();
		String sql = "";
		long cnt = 0;
		int suffix=0;
		String prefix="";
		Connection conn = DBConn.openDB();
		Statement stmt = conn.createStatement();
		do{
			suffix=rand.nextInt(899999)+100000;
			prefix = ContextUtils.produceExchangeCode()+suffix;
			sql = "select count(exchangecode) cnt from exchangecode where exchangecode='"+prefix+"'";
			ResultSet rs = stmt.executeQuery(sql);
			if(rs.next()){
				cnt = rs.getInt("cnt");
			}
		}while(cnt>0);
		return prefix;
	}
	
	public List<ExchangeCodeVo> codeList(int exchangecodeid) {
		Connection conn = DBConn.openDB();
		List<ExchangeCodeVo> list = new ArrayList<ExchangeCodeVo>();
		try {
			Statement stmt = conn.createStatement();
			String sql = "select * from exchangecode where exchangecodeid="+exchangecodeid +" order by exchangecodeid desc";
			System.out.println(sql);
			ResultSet rs = stmt.executeQuery(sql);
			while(rs.next()){
				ExchangeCodeVo code= new ExchangeCodeVo();
				code.setExchangecodeid(rs.getInt("exchangecodeid"));
				code.setActivityid(rs.getInt("activityid"));
				code.setUserid(rs.getInt("userid"));
				code.setExchangecode(rs.getString("exchangecode"));
				code.setExchangemeony(rs.getInt("exchangemeony"));
				code.setExchangestatus(rs.getInt("exchangestatus"));
				code.setValiday(rs.getInt("validay"));
				code.setExchangedate(rs.getDate("exchangedate"));
				list.add(code);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	//分页
	public List<ExchangeCodeVo> codeList(int pagesize, int startpage) {
		Connection con = DBConn.openDB();
		List<ExchangeCodeVo> list = new ArrayList<ExchangeCodeVo>();
		try {
			Statement st = con.createStatement();
			String sql = "select * from (select rownum rn,e.* from exchangecode e) where rn>=("+startpage+"+1) and rn<=("+startpage+pagesize+")";
			System.out.println(sql);
			ResultSet rs = st.executeQuery(sql);
			while(rs.next()){
				ExchangeCodeVo code=new ExchangeCodeVo();
				code.setExchangecodeid(rs.getInt("exchangecodeid"));
				code.setActivityid(rs.getInt("activityid"));
				code.setUserid(rs.getInt("userid"));
				code.setExchangecode(rs.getString("exchangecode"));
				code.setExchangemeony(rs.getInt("exchangemeony"));
				code.setExchangestatus(rs.getInt("exchangestatus"));
				code.setExchangedate(rs.getDate("exchangedate"));
				code.setValiday(rs.getInt("validay"));
				list.add(code);
			}
		} catch (Exception e) {
			System.out.println("查询优惠券信息出错！");
			e.printStackTrace();
		}
		return list;
	}
	public ExchangeCodeVo codeFint(String exchangecodeid) {
		Connection conn = DBConn.openDB();
		ExchangeCodeVo code=null;
		try {
			Statement stm=conn.createStatement();
			String sql="select * from exchangecode  where exchangecodeid="+exchangecodeid;
			System.out.println(sql);
			ResultSet rs=stm.executeQuery(sql);
			if(rs.next()){
				code=new ExchangeCodeVo();
				code.setExchangecodeid(rs.getInt("exchangecodeid"));
				code.setActivityid(rs.getInt("activityid"));
				code.setUserid(rs.getInt("userid"));
				code.setExchangecode(rs.getString("exchangecode"));
				code.setExchangemeony(rs.getInt("exchangemeony"));
				code.setExchangestatus(rs.getInt("exchangestatus"));
				code.setExchangedate(rs.getDate("exchangedate"));
				code.setValiday(rs.getInt("validay"));
				if(code.getExchangestatus()==1){
					code.setExchangedate(rs.getDate("exchangedate"));
				}
			}else{
				code = null;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return code;
	}
	public List<ExchangeCodeVo> codeFint(int exchangecodeid) {
		Connection conn = DBConn.openDB();
		List<ExchangeCodeVo> list=new ArrayList<ExchangeCodeVo>();
		try {
			Statement stm=conn.createStatement();
			String sql="select * from exchangecode  where userid="+exchangecodeid;
			System.out.println(sql);
			ResultSet rs=stm.executeQuery(sql);
			while(rs.next()){
				ExchangeCodeVo code=new ExchangeCodeVo();
				code.setExchangecodeid(rs.getInt("exchangecodeid"));
				code.setActivityid(rs.getInt("activityid"));
				code.setUserid(rs.getInt("userid"));
				code.setExchangecode(rs.getString("exchangecode"));
				code.setExchangemeony(rs.getInt("exchangemeony"));
				code.setExchangestatus(rs.getInt("exchangestatus"));
				code.setExchangedate(rs.getDate("exchangedate"));
				code.setValiday(rs.getInt("validay"));
				if(code.getExchangestatus()==1){
					code.setExchangedate(rs.getDate("exchangedate"));
				}
				list.add(code);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	/**
	 * 充值支付表
	 * */
	public List<moneyRecordVo> moneylist(int userid, int pagesize, int startpage) {
		Connection con = DBConn.openDB();
		List<moneyRecordVo> list = new ArrayList<moneyRecordVo>();
		try {
			Statement st = con.createStatement();
			String sql = "select * from (select rownum rn,h.* from moneyrecord h) where rn>=("+startpage+"+1) and rn<=("+startpage+"+"+pagesize+") and userid="+userid;
			ResultSet rs = st.executeQuery(sql);
			while(rs.next()){
				moneyRecordVo moneyRecord = new moneyRecordVo();
				moneyRecord.setRecordid(rs.getInt("recordid"));
				moneyRecord.setUserid(rs.getInt("userid"));
				moneyRecord.setPaydate(rs.getDate("pay_date"));
				moneyRecord.setPaymoney(rs.getFloat("pay_money"));
				moneyRecord.setLeixing(rs.getInt("leixing"));
				moneyRecord.setSetmoney(rs.getFloat("setmoney"));
				list.add(moneyRecord);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public List<moneyRecordVo> moneylist2(int userid, int pagesize,
			int startpage, String sdate, String edate) {
		Connection con = DBConn.openDB();
		List<moneyRecordVo> list = new ArrayList<moneyRecordVo>();
		try {
			Statement st = con.createStatement();
			String sql = "select * from (select rownum rn,h.* from moneyrecord h) where rn>=("+startpage+"+1) and rn<=("+startpage+"+"+pagesize+") and userid="+userid+" and pay_date between  to_date('"+sdate+"','YYYY-MM-DD HH24:MI:SS') and to_date('"+edate+"','YYYY-MM-DD HH24:MI:SS')";
			ResultSet rs = st.executeQuery(sql);
			while(rs.next()){
				moneyRecordVo moneyRecord = new moneyRecordVo();
				moneyRecord.setRecordid(rs.getInt("recordid"));
				moneyRecord.setUserid(rs.getInt("userid"));
				moneyRecord.setPaydate(rs.getDate("pay_date"));
				moneyRecord.setPaymoney(rs.getFloat("pay_money"));
				moneyRecord.setLeixing(rs.getInt("leixing"));
				moneyRecord.setSetmoney(rs.getFloat("setmoney"));
				list.add(moneyRecord);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public int fidmoneyRecord(int userid) {
		int m=0;
		try {
			Statement st = con.createStatement();
			String sql = "select count(*) from moneyrecord where userid="+userid;
			ResultSet rs = st.executeQuery(sql);
			if(rs.next()){
				m = rs.getInt(1);
			}
			st.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return m;
	}

	public void addmoneyRecord(moneyRecordVo moneyRecord) {
		Connection conn=DBConn.openDB();
		try {
			Statement stmt=conn.createStatement();
			String sql = "insert into moneyRecord values(";
			sql+="kaihuid.nextval,";
			sql += "'"+moneyRecord.getUserid()+"',";
			sql +="sysdate,";
			sql +="'"+moneyRecord.getPaymoney()+"',";
			sql +="'"+moneyRecord.getLeixing()+"',";
			sql +="'"+moneyRecord.getSetmoney()+"'";
			sql+=")";
			stmt.executeUpdate(sql);
			String hql="update users set remainmoney=remainmoney+"+moneyRecord.getPaymoney()+" where userid="+moneyRecord.getUserid();
			stmt.executeUpdate(hql);
			stmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	
	/**
	 * 购买记录表
	 * */
	public void addPayRecord(PayRecordVo payRecord) {
		Connection conn=DBConn.openDB();
		try {
			Statement stmt=conn.createStatement();
			String sql = "insert into PayRecord values(";
			sql+="PayRecordid.nextval,";
			sql += "'"+payRecord.getUserid()+"',";
			sql += "'"+payRecord.getHomeid()+"',";
			sql +="sysdate,";
			sql +="'"+payRecord.getPaymoney()+"',";
			sql +="'"+payRecord.getPayer()+"',";
			sql +="'"+payRecord.getOrdernumber()+"',";
			sql +="'"+payRecord.getHomename()+"',";
			sql +="'"+payRecord.getTupian()+"',";
			sql +="'"+payRecord.getDizhi()+"',";
			sql +="'"+payRecord.getShuliang()+"'";
			sql+=")";
			stmt.executeUpdate(sql);
			stmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

	public List<PayRecordVo> payRecordList(int pagesize, int startpage,
			String homeid) {
		Connection con = DBConn.openDB();
		List<PayRecordVo> list = new ArrayList<PayRecordVo>();
		try {
			Statement st = con.createStatement();
			String sql = "select * from (select rownum rn,h.* from PayRecord h) where rn>=("+startpage+"+1) and rn<=("+startpage+"+"+pagesize+") and homeid="+homeid;
			ResultSet rs = st.executeQuery(sql);
			while(rs.next()){
				PayRecordVo payRecord = new PayRecordVo();
				payRecord.setPayrecordid(rs.getInt("payrecordid"));
				payRecord.setUserid(rs.getInt("userid"));
				payRecord.setHomeid(rs.getInt("homeid"));
				payRecord.setPaydate(rs.getDate("paydate"));
				payRecord.setPaymoney(rs.getFloat("paymoney"));
				payRecord.setPayer(rs.getString("payer"));
				payRecord.setOrdernumber(rs.getString("ordernumber"));
				payRecord.setHomename(rs.getString("homename"));
				payRecord.setTupian(rs.getString("tupian"));
				payRecord.setDizhi(rs.getString("dizhi"));
				payRecord.setShuliang(rs.getInt("shuliang"));
				list.add(payRecord);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	//收藏表
	public void addcollection(CollectionVo collection) {
		Connection conn=DBConn.openDB();
		try {
			Statement stmt=conn.createStatement();
			String sql = "insert into collection values(";
			sql+="collectionid.nextval,";
			sql += "'"+collection.getPictureurl()+"',";
			sql += "'"+collection.getPrice()+"',";
			sql +="'"+collection.getDiscount()+"',";
			sql +="'"+collection.getHomeid()+"',";
			sql +="'"+collection.getHomename()+"',";
			sql +="'"+collection.getUserid()+"'";
			sql+=")";
			stmt.executeUpdate(sql);
			stmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public boolean collectioncheckPwd(String homeid) {
		boolean isok=false;
		Connection conn = DBConn.openDB();
		try {
			Statement stmt = conn.createStatement();
			String sql = "select * from collection where homeid="+homeid;
			ResultSet rs = stmt.executeQuery(sql);
			if(rs.next()){
				isok=true;
			}
			rs.close();
			stmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return isok;
	}

	public void delcollection(int homeid, int userid) {
		try {
			Statement stmt = con.createStatement();
			String sql = "delete collection where homeid="+homeid+" and userid="+userid;
			stmt.executeUpdate(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

	public List<CollectionVo> collectionList(int pagesize, int startpage,
			int userid) {
		Connection con = DBConn.openDB();
		List<CollectionVo> list = new ArrayList<CollectionVo>();
		try {
			Statement st = con.createStatement();
			String sql = "select * from (select h.* from collection h) where rownum>=("+startpage+"+1) and rownum<=("+startpage+"+"+pagesize+") and userid="+userid;
			ResultSet rs = st.executeQuery(sql);
			while(rs.next()){
				CollectionVo collection = new CollectionVo();
				collection.setCollectionid(rs.getInt("collectionid"));
				collection.setPictureurl(rs.getString("pictureurl"));
				collection.setHomename(rs.getString("homename"));
				collection.setUserid(rs.getInt("userid"));
				collection.setHomeid(rs.getInt("homeid"));
				collection.setPrice(rs.getFloat("price"));
				collection.setDiscount(rs.getFloat("discount"));
				list.add(collection);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	//购物车表
	public List<ShoppingcarVo> shopcarlist(int pagesize, int startpage,String ifvalue) {
		List<ShoppingcarVo> shoplist = new ArrayList<ShoppingcarVo>();
		try {
			Statement st = con.createStatement();
//			String sql = "select top("+pagesize+") s.*,c.course_name from shoppingcar s,course c where s.course_id=c.course_id and carid not in (select top("+startpage+") carid from shoppingcar) and studentname='"+studentname+"' order by replay_date desc";
			String sql = "select * from (select s.* from shoppingcar s "+ifvalue+") where rownum>="+(startpage+1)+" and rownum<="+(pagesize+startpage);
			ResultSet rs = st.executeQuery(sql);
			while (rs.next()) {
				ShoppingcarVo shopbean = new ShoppingcarVo();
				shopbean.setCarid(rs.getInt("carid"));
				shopbean.setHomeid(rs.getInt("homeid"));
				shopbean.setUsername(rs.getString("username"));
				shopbean.setPictureurl(rs.getString("pictureurl"));
				shopbean.setOneword(rs.getString("oneword"));
				shopbean.setHomecount(rs.getInt("homecount"));
				shopbean.setPrice(rs.getFloat("price"));
				shopbean.setDiscount(rs.getFloat("discount"));
				shopbean.setEffective(rs.getInt("effective"));
				shopbean.setReplaydate(rs.getString("replaydate"));
				shopbean.setReplayusername(rs.getString("replayusername"));
				shoplist.add(shopbean);
			}
			rs.close();
			st.close();
		}catch (Exception e) {
			System.out.println("");
		}
		return shoplist;
	}
	public void shopcaradd(ShoppingcarVo shopcarbean) {
		try {
			Statement st = con.createStatement();
			String sql = "insert into shoppingcar values(carid.nextval,";
			sql+="'"+shopcarbean.getHomeid()+"',";
			sql+="'"+shopcarbean.getUsername()+"',";
			sql+="'"+shopcarbean.getPictureurl()+"',";
			sql+="'"+shopcarbean.getOneword()+"',";
			sql+="'"+shopcarbean.getHomecount()+"',";
			sql+="'"+shopcarbean.getPrice()+"',";
			sql+="'"+shopcarbean.getDiscount()+"',";
			sql+="sysdate,";
			sql+="'"+shopcarbean.getReplayusername()+"',";
			sql+="'"+shopcarbean.getEffective()+"')";
			System.out.println(sql);
			st.executeUpdate(sql);
			st.close();
		} catch (Exception e) {
			System.out.println("购物车添加出错啦！");
			e.printStackTrace();
		}
		
	}

	public void shopcardelete(String carid) {
		try {
			Statement st = con.createStatement();
			String sql = "delete shoppingcar where carid="+carid;
			st.executeUpdate(sql);
			st.close();
		} catch (Exception e) {
			System.out.println("删除购物车出错！");
		}
		
	}
	public ShoppingcarVo findshopcar(String courseid,String studentmobile){
		ShoppingcarVo shopbean = new ShoppingcarVo();
//		try {
//			Statement st = con.createStatement();
//			String sql = "select * from shoppingcar where course_id="+courseid+" and studentmobile='"+studentmobile+"'";
//			System.out.println(sql);
//			ResultSet rs = st.executeQuery(sql);
//			if (rs.next()) {
//				shopbean.setStudentmobile(rs.getString("studentmobile"));
//			}
//			rs.close();
//			st.close();
//		}catch (Exception e) {
//			System.out.println("查找购物车失败！");
//			e.printStackTrace();
//		}
	return shopbean;
	}
	
	
	//评价表
	public void addpingjia(UserCourseEvalVo pingjia) {
		try {
			Statement stmt = con.createStatement();
			String sql = "insert into UserHomeEval values(";
			sql += "userhomeevalid.nextval,";
			sql += "'"+pingjia.getUserid() +"',";
			sql += "'"+pingjia.getHomeid()+"',";
			sql += "'"+pingjia.getEvallevel()+"',";
			sql += "'"+pingjia.getEvalcontent()+"',";
			sql += "sysdate,";
			sql += "'"+pingjia.getUsername()+"',";
			sql += "'"+pingjia.getUserpictureurl()+"',";
			sql += "'"+pingjia.getPictureurl1()+"',";
			sql += "'"+pingjia.getPictureurl2()+"'";
			sql += ")";
			stmt.executeUpdate(sql);
			String hql="update dingdan set effective=5 where homeid="+pingjia.getHomeid()+" and userid="+pingjia.getUserid();
			System.out.println(hql);
			stmt.executeUpdate(hql);
			stmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

	public UserCourseEvalVo fidmoneypingjia(int userid, int homeid) {
		UserCourseEvalVo pingjia= new UserCourseEvalVo();
		try {
			Statement stmt = con.createStatement();
			String sql = "select * from UserHomeEval where userid="+userid+" and homeid="+homeid;
			System.out.println(sql);
			ResultSet rs = stmt.executeQuery(sql);
			if(rs.next()){
				pingjia.setUsercourseevalid(rs.getInt("userhomeevalid"));
				pingjia.setUserid(rs.getInt("userid"));
				pingjia.setHomeid(rs.getInt("homeid"));
				pingjia.setEvallevel(rs.getInt("evallevel"));
				pingjia.setEvalcontent(rs.getString("evalcontent"));
				pingjia.setEvaldate(rs.getDate("evaldate"));
				pingjia.setUsername(rs.getString("username"));
				pingjia.setUserpictureurl(rs.getString("userpictureurl"));
				pingjia.setPictureurl1(rs.getString("pictureurl1"));
				pingjia.setPictureurl2(rs.getString("pictureurl2"));
			}
			rs.close();
			stmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return pingjia;
	}

	public int fidpingjia(int homeid) {
		int m=0;
		try {
			Statement st = con.createStatement();
			String sql = "select count(*) from UserHomeEval where homeid="+homeid;
			ResultSet rs = st.executeQuery(sql);
			if(rs.next()){
				m = rs.getInt(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return m;
	}

	public List<UserCourseEvalVo> pingjiaList(int pagesize, int startpage,
			int homeid) {
		Connection con = DBConn.openDB();
		List<UserCourseEvalVo> list = new ArrayList<UserCourseEvalVo>();
		try {
			Statement st = con.createStatement();
			String sql = "select * from (select h.* from UserHomeEval h) where rownum>=("+startpage+"+1) and rownum<=("+startpage+"+"+pagesize+") and homeid="+homeid;
			System.out.println("pingjiaList="+sql);
			System.out.println(sql);
			ResultSet rs = st.executeQuery(sql);
			while(rs.next()){
				UserCourseEvalVo pingjia = new UserCourseEvalVo();
				pingjia.setUsercourseevalid(rs.getInt("userhomeevalid"));
				pingjia.setUserid(rs.getInt("userid"));
				pingjia.setHomeid(rs.getInt("homeid"));
				pingjia.setEvallevel(rs.getInt("evallevel"));
				pingjia.setEvalcontent(rs.getString("evalcontent"));
				pingjia.setEvaldate(rs.getDate("evaldate"));
				pingjia.setUsername(rs.getString("username"));
				pingjia.setUserpictureurl(rs.getString("userpictureurl"));
				pingjia.setPictureurl1(rs.getString("pictureurl1"));
				pingjia.setPictureurl2(rs.getString("pictureurl2"));
				list.add(pingjia);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	//开户表
	public void addkaihu(KaihuVo kaihu) {
		Connection conn=DBConn.openDB();
		try {
			Statement stmt=conn.createStatement();
			String sql = "insert into kaihu values(";
			sql+="kaihuid.nextval,";
			sql += "'"+kaihu.getUserid()+"',";
			sql +="'"+kaihu.getKaihuname()+"',";
			sql +="'"+kaihu.getBankno()+"',";
			sql +="'"+kaihu.getBankid()+"',";
			sql +="'"+kaihu.getKaihuhang()+"'";
			sql+=")";
			stmt.executeUpdate(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

	public void delkaihu(String userid) {
		Connection conn=DBConn.openDB();
		try {
			Statement stmt=conn.createStatement();
			String sql="delete kaihu where userid="+userid;
			stmt.executeUpdate(sql);
			stmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public KaihuVo findkaihuById(int userid) {
		Connection con = DBConn.openDB();
		KaihuVo kaihu= new KaihuVo();
		try {
			Statement stmt = con.createStatement();
			String sql = "select * from kaihu where userid="+userid;
			ResultSet rs = stmt.executeQuery(sql);
			if(rs.next()){
				kaihu.setKaihuid(rs.getInt("kaihuid"));
				kaihu.setUserid(rs.getInt("userid"));
				kaihu.setKaihuname(rs.getString("kaihuname"));
				kaihu.setBankno(rs.getString("bankno").trim());
				kaihu.setBankid(rs.getInt("bankid"));
				kaihu.setKaihuhang(rs.getString("kaihuhang").trim());
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return kaihu;
	}

	public void updatekaihu(KaihuVo kaihu) {
		Connection conn=DBConn.openDB();
		try {
			Statement stmt=conn.createStatement();
			String sql="update kaihu set userid='";
			sql += +kaihu.getUserid() +"',kaihuname='";
			sql += kaihu.getKaihuname() +"',bankno='";
			sql += kaihu.getBankno() +"',bankid='";
			sql += kaihu.getBankid()+"',kaihuhang='";
			sql += kaihu.getKaihuhang()+"'";
			sql+=" where kaihuid="+kaihu.getKaihuid();
			stmt.executeUpdate(sql);
			stmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	public boolean kaihucheckPwd(int userid) {
		boolean isok=false;
		Connection conn = DBConn.openDB();
		try {
			Statement stmt = conn.createStatement();
			String sql = "select * from kaihu where userid="+userid;
			ResultSet rs = stmt.executeQuery(sql);
			if(rs.next()){
				isok=true;
			}
			rs.close();
			stmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return isok;
	}
}
