package SQLBean;

import java.util.Date;

public class PayRecordVo {

	private int payrecordid;  //缴费id
	private int userid;    //客户id
	private int homeid;  //家具Id
	private Date paydate;		//付款时间
	private float paymoney;    //付款金额
	private String payer;		//付款人
	private String ordernumber;//订单号
	private String homename;//家具名称
	private String tupian;//家具图片
	private String dizhi;//地址
	private int shuliang;//购买数量
	public int getPayrecordid() {
		return payrecordid;
	}
	public void setPayrecordid(int payrecordid) {
		this.payrecordid = payrecordid;
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public int getHomeid() {
		return homeid;
	}
	public void setHomeid(int homeid) {
		this.homeid = homeid;
	}
	public Date getPaydate() {
		return paydate;
	}
	public void setPaydate(Date paydate) {
		this.paydate = paydate;
	}
	public float getPaymoney() {
		return paymoney;
	}
	public void setPaymoney(float paymoney) {
		this.paymoney = paymoney;
	}
	public String getPayer() {
		return payer;
	}
	public void setPayer(String payer) {
		this.payer = payer;
	}
	public String getOrdernumber() {
		return ordernumber;
	}
	public void setOrdernumber(String ordernumber) {
		this.ordernumber = ordernumber;
	}
	public String getHomename() {
		return homename;
	}
	public void setHomename(String homename) {
		this.homename = homename;
	}
	public String getTupian() {
		return tupian;
	}
	public void setTupian(String tupian) {
		this.tupian = tupian;
	}
	public String getDizhi() {
		return dizhi;
	}
	public void setDizhi(String dizhi) {
		this.dizhi = dizhi;
	}
	public int getShuliang() {
		return shuliang;
	}
	public void setShuliang(int shuliang) {
		this.shuliang = shuliang;
	}
	
}
