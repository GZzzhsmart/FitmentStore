package SQLBean;

import java.io.Serializable;

public class ExchangeRecordVo implements Serializable{

	private int activityid;
	private String activityname;
	private String activitydesc;
	private int managerid;
	private String activitydate;
	public int getActivityid() {
		return activityid;
	}
	public void setActivityid(int activityid) {
		this.activityid = activityid;
	}
	public String getActivityname() {
		return activityname;
	}
	public void setActivityname(String activityname) {
		this.activityname = activityname;
	}
	public String getActivitydesc() {
		return activitydesc;
	}
	public void setActivitydesc(String activitydesc) {
		this.activitydesc = activitydesc;
	}
	
	public int getManagerid() {
		return managerid;
	}
	public void setManagerid(int managerid) {
		this.managerid = managerid;
	}
	public String getActivitydate() {
		return activitydate;
	}
	public void setActivitydate(String activitydate) {
		this.activitydate = activitydate;
	}
	
}
