package SQLBase;

import java.util.List;
import java.util.Map;

import SQLBean.BankVo;


import SQLBean.AddressVo;
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
import SQLBean.UserHomeEvalVo;
import SQLBean.moneyRecordVo;

public interface SQLSentence {

	//省份城市的新增删除和修改
	public abstract List<ProvinceBean> provincelist();
	public abstract List<ProvinceBean> provincelist(int pagesize,int startpage);
	public abstract void delprovince (int provinceid);
	public abstract void addprovince(ProvinceBean provincebean);
	public abstract ProvinceBean findprovinceById(String provinceid);
	public abstract void updataeprovince(ProvinceBean provincebean);
	public abstract int sumbar(String sql);
	//用户的注册操作
	public abstract List<UserBean> userlist();
	public abstract List<UserBean> userlist(int pagesize,int startpage);
	public abstract void deluser (int userid);
	public abstract void adduser(UserBean userbean);
	public abstract void updateuserbean(UserBean userbean);
	public abstract UserBean findusersById(String usermobile);
	public abstract UserBean findusersById2(int userid);
	public abstract UserBean logincheck(String name);
	public abstract UserBean login(String username,String password);
	public abstract UserBean login2(String username);
	public abstract boolean usercheckPwd(String usermobile,String oldPassword);//查找用户是否存在
	public abstract void usermodifyPwd(String usermobile,String newPassword);//修改密码
	public abstract void usermodifyPwd2(String usermobile,String paypassword);//设置交易密码
	
	//城市列表
	public abstract List<CityBean> citylist();
	public abstract List<CityBean> citylist(int pagesize,int startpage);
	public abstract void delcity (int cityid);
	public abstract void addcity(CityBean city);
	public abstract void updatecity(CityBean city);
	public abstract CityBean findCityById(String cityid);
	public abstract List<CityBean> CityList(int provinceid);
	//银行列表
	public abstract void addbank(BankVo bank);
	public abstract void delbank(int bankid);
	public abstract void updatebank(BankVo bank);
	public abstract BankVo findbankById(String bankid);
	public abstract List<BankVo> banklist();
	public abstract List<BankVo> banklist(int pagesize,int startpage);
	//管理员列表
	public abstract void addmanager(ManagerBean manager);
	public abstract void delmanager(int managerid);
	public abstract void updatemanager(ManagerBean manager);
	public abstract ManagerBean findmanagerById(String Managerid);
	public abstract List<ManagerBean> managerlist();
	public abstract List<ManagerBean> managerlist(int pagesize,int startpage);
	public abstract ManagerBean Login(String managername);
	public abstract boolean checkPwd(String managerid,String oldpassword);
	public abstract void modifyPwd(String managerid,String newpassword);
	//收货地址表
	public abstract void addAddress(AddressVo addressVo);
	public abstract List<AddressVo> addressList(int userid);
	public abstract AddressVo address(int userid);
	public abstract void setEffective(String addressid);
	public abstract void delAddress(String addressid);
	public abstract AddressVo findAddressById(String addressid);
	public abstract void updateAddressVo(AddressVo addressVo);
	public abstract int findAddress(int userid);
	//家具表
	public abstract void addhome(HomeVo home);
	public abstract void delhome(int homeid);
	public abstract void updatehome(HomeVo home);
	public abstract List<HomeVo> homeList();
	public abstract List<HomeVo> homeList(int pagesize,int startpage);
	public abstract HomeVo findhomeById(String homeid);
	public abstract List<HomeVo> homeList(int pagesize,int startpage,int hometype);
	public abstract List<HomeVo> homeList(int pagesize,int startpage,String homename);
	//订单表
	public abstract List<DingdanVo> dingdanList(int userid);
	public abstract List<DingdanVo> dingdanList(int userid,int effective);
	public abstract List<DingdanVo> dingdanList1(int pagesize,int startpage);
	public abstract int fidDingdan(int userid);
	public abstract int fidDingdan1(int userid);
	public abstract int fidDingdan2(int userid);
	public abstract int fidDingdan3(int userid);
	public abstract int fidDingdan4(int userid);
	public abstract int fidDingdan5(int userid);
	public abstract void addDingdan(DingdanVo dingdan,int money);
	public abstract DingdanVo finddingdanById(String dingdanid);
	public abstract DingdanVo finddingdanById2(int homeid,int userid);
	public abstract void updatedingdan(DingdanVo dingdan);
	public abstract void updatedingdan2(DingdanVo dingdan);
	public abstract void updatedingdan3(DingdanVo dingdan);
	public abstract void deldingdan(String dingdanid);
	public abstract List<DingdanVo> dingdanList(int pagesize,int startpage,int userid,int effective);
	//新闻资讯表
	public abstract void addnewsMsg(NewMsgBean msg);
	public abstract void updatenewMsg(NewMsgBean msg);
	public abstract void delnewMsg(String newMsgId);
	public abstract NewMsgBean findNewMsgById(String newMsgId);
	public abstract List<NewMsgBean> newmsgList();
	public abstract List<NewMsgBean> newmsgList(String name);
	public abstract List<NewMsgBean> findNewMsgById(int pagesize, int startpage);
	//优惠券活动表
	public abstract void addExchangerecord(ExchangeRecordVo exchange);
	public abstract void updateExchangerecord(ExchangeRecordVo exchange);
	public abstract void delExchangerecord(int activityid);
	public abstract ExchangeRecordVo findExchangerecordById(String activityid);
	public abstract List<ExchangeRecordVo> exchangerecordList();
	public abstract List<ExchangeRecordVo> exchangerecordList(int managerid,int pagesize,int startpage);
	//优惠券活动明细表
	public abstract ExchangeCodeVo codeFint(String exchangecodeid);
	public abstract List<ExchangeCodeVo> codeFint(int exchangecodeid);
	public abstract void addexchangecode(int activityid,int money,int day,int count);
	public abstract List<ExchangeCodeVo> codeList(int exchangecodeid);
	public abstract List<ExchangeCodeVo> codeList(int pagesize,int startpage);
	
	//充值或支付表
	public abstract List<moneyRecordVo> moneylist(int userid,int pagesize,int startpage);
	public abstract List<moneyRecordVo> moneylist2(int userid,int pagesize,int startpage,String sdate,String edate);
	public abstract int fidmoneyRecord(int userid);
	public abstract void addmoneyRecord(moneyRecordVo moneyRecord);
	//购买记录表
	public abstract void addPayRecord(PayRecordVo payRecord);
	public abstract List<PayRecordVo> payRecordList(int pagesize,int startpage,String homeid);
	//收藏表
	public abstract void addcollection(CollectionVo collection);
	public abstract boolean collectioncheckPwd(String homeid);
	public abstract void delcollection(int homeid,int userid);
	public abstract List<CollectionVo> collectionList(int pagesize,int startpage,int userid);
	//购物车
	public List<ShoppingcarVo> shopcarlist(int pagesize, int startpage,String ifvalue);
	public void shopcaradd(ShoppingcarVo shopcarbean);
	public void shopcardelete(String carid);
	public ShoppingcarVo findshopcar(String courseid,String studentmobile);
	
	//评价表
	public abstract void addpingjia(UserCourseEvalVo pingjia);
	public abstract UserCourseEvalVo fidmoneypingjia(int userid,int homeid);
	public abstract int fidpingjia(int homeid);
	public abstract List<UserCourseEvalVo> pingjiaList(int pagesize,int startpage,int homeid);
	
	//开户表
	public abstract void addkaihu(KaihuVo kaihu);
	public abstract void delkaihu(String userid);
	public abstract void updatekaihu(KaihuVo kaihu);
	public abstract KaihuVo findkaihuById(int userid);
	public abstract boolean kaihucheckPwd(int userid);
}
