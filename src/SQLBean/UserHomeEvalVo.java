package SQLBean;

import java.util.Date;

public class UserHomeEvalVo {

	private int userhomeevalid;  
	private int userid;   
	private String username;
	private int homeid;   
	private String homename;
	private int evallevel;   
	private String evalcontent;   
	private String evaldate;
	public int getUserhomeevalid() {
		return userhomeevalid;
	}
	public void setUserhomeevalid(int userhomeevalid) {
		this.userhomeevalid = userhomeevalid;
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
	public int getEvallevel() {
		return evallevel;
	}
	public void setEvallevel(int evallevel) {
		this.evallevel = evallevel;
	}
	public String getEvalcontent() {
		return evalcontent;
	}
	public void setEvalcontent(String evalcontent) {
		this.evalcontent = evalcontent;
	}
	public String getEvaldate() {
		return evaldate;
	}
	public void setEvaldate(String evaldate) {
		this.evaldate = evaldate;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getHomename() {
		return homename;
	}
	public void setHomename(String homename) {
		this.homename = homename;
	}   
	
}
