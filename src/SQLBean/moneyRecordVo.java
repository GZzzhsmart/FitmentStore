package SQLBean;

import java.util.Date;

public class moneyRecordVo {

	private int recordid;  //充值ID
	private int userid;  //用户ID
	private Date paydate;   //时间
	private float paymoney;   //充值金额
	private float setmoney;   //支付金额
	private int leixing;//0:充值,1:支付
	public float getSetmoney() {
		return setmoney;
	}
	public void setSetmoney(float setmoney) {
		this.setmoney = setmoney;
	}
	public int getLeixing() {
		return leixing;
	}
	public void setLeixing(int leixing) {
		this.leixing = leixing;
	}
	public int getRecordid() {
		return recordid;
	}
	public void setRecordid(int recordid) {
		this.recordid = recordid;
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
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
	
}
