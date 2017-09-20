package SQLBean;

import java.util.Date;

public class CashRecordVo {

	private int  payrecordid;  
	private int userid;     
	private int homeid;
	private int storeid;   
    private  Date	cashdate;   
    private float paymoney;     
    private  float Incommoney;    
    private int status;      
    private String reason;
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
	public int getStoreid() {
		return storeid;
	}
	public void setStoreid(int storeid) {
		this.storeid = storeid;
	}
	public Date getCashdate() {
		return cashdate;
	}
	public void setCashdate(Date cashdate) {
		this.cashdate = cashdate;
	}
	public float getPaymoney() {
		return paymoney;
	}
	public void setPaymoney(float paymoney) {
		this.paymoney = paymoney;
	}
	public float getIncommoney() {
		return Incommoney;
	}
	public void setIncommoney(float incommoney) {
		Incommoney = incommoney;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public String getReason() {
		return reason;
	}
	public void setReason(String reason) {
		this.reason = reason;
	}    
    
}
