package SQLBean;

import java.io.Serializable;

public class UserBean implements Serializable{

	private int userid;
	private String usermobile;
	private String userpassword;
	private String username;
	private int usersex;
	private String userhomeaddress;
	private String useremail;
	private String userregisterdate;
	private int provinceid;
	private int cityid;
	private String provincename;
	private String cityname;
	private int leibie;
	private String userface;
	private float remainmoney;
	private int ledou;
	private String paypassword;
	public String getPaypassword() {
		return paypassword;
	}
	public void setPaypassword(String paypassword) {
		this.paypassword = paypassword;
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public String getUsermobile() {
		return usermobile;
	}
	public void setUsermobile(String usermobile) {
		this.usermobile = usermobile;
	}
	public String getUserpassword() {
		return userpassword;
	}
	public void setUserpassword(String userpassword) {
		this.userpassword = userpassword;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public int getUsersex() {
		return usersex;
	}
	public void setUsersex(int usersex) {
		this.usersex = usersex;
	}
	public String getUserhomeaddress() {
		return userhomeaddress;
	}
	public void setUserhomeaddress(String userhomeaddress) {
		this.userhomeaddress = userhomeaddress;
	}
	public String getUseremail() {
		return useremail;
	}
	public void setUseremail(String useremail) {
		this.useremail = useremail;
	}
	public String getUserregisterdate() {
		return userregisterdate;
	}
	public void setUserregisterdate(String userregisterdate) {
		this.userregisterdate = userregisterdate;
	}
	public int getProvinceid() {
		return provinceid;
	}
	public void setProvinceid(int provinceid) {
		this.provinceid = provinceid;
	}
	public int getCityid() {
		return cityid;
	}
	public void setCityid(int cityid) {
		this.cityid = cityid;
	}
	public String getProvincename() {
		return provincename;
	}
	public void setProvincename(String provincename) {
		this.provincename = provincename;
	}
	public String getCityname() {
		return cityname;
	}
	public void setCityname(String cityname) {
		this.cityname = cityname;
	}
	public int getLeibie() {
		return leibie;
	}
	public void setLeibie(int leibie) {
		this.leibie = leibie;
	}
	public String getUserface() {
		return userface;
	}
	public void setUserface(String userface) {
		this.userface = userface;
	}
	public float getRemainmoney() {
		return remainmoney;
	}
	public void setRemainmoney(float remainmoney) {
		this.remainmoney = remainmoney;
	}
	public int getLedou() {
		return ledou;
	}
	public void setLedou(int ledou) {
		this.ledou = ledou;
	}
	
}
