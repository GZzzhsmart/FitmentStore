package SQLBean;

import java.io.Serializable;
import java.sql.Date;

public class ExchangeCodeVo implements Serializable{

	private int exchangecodeid;
	private int activityid;
	private int userid;
	private String exchangecode;
	private int exchangemeony;
	private int exchangestatus;
	private Date exchangedate;
	private int validay;
	public int getValiday() {
		return validay;
	}
	public void setValiday(int validay) {
		this.validay = validay;
	}
	public int getExchangecodeid() {
		return exchangecodeid;
	}
	public void setExchangecodeid(int exchangecodeid) {
		this.exchangecodeid = exchangecodeid;
	}
	public int getActivityid() {
		return activityid;
	}
	public void setActivityid(int activityid) {
		this.activityid = activityid;
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public String getExchangecode() {
		return exchangecode;
	}
	public void setExchangecode(String exchangecode) {
		this.exchangecode = exchangecode;
	}
	public int getExchangemeony() {
		return exchangemeony;
	}
	public void setExchangemeony(int exchangemeony) {
		this.exchangemeony = exchangemeony;
	}
	public int getExchangestatus() {
		return exchangestatus;
	}
	public void setExchangestatus(int exchangestatus) {
		this.exchangestatus = exchangestatus;
	}
	public Date getExchangedate() {
		return exchangedate;
	}
	public void setExchangedate(Date exchangedate) {
		this.exchangedate = exchangedate;
	}
	
}
