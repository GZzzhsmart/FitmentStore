package SQLBean;

import java.util.Date;

public class UserCourseEvalVo {

	private int usercourseevalid;  
	private int userid;   
	private int homeid;   
	private int evallevel;   
	private String evalcontent;  //评价内容 
	private Date evaldate;
	private String username; 
	private String userpictureurl; //用户头像
	private String pictureurl1; //
	private String pictureurl2; //
	public int getUsercourseevalid() {
		return usercourseevalid;
	}
	public void setUsercourseevalid(int usercourseevalid) {
		this.usercourseevalid = usercourseevalid;
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
	public Date getEvaldate() {
		return evaldate;
	}
	public void setEvaldate(Date evaldate) {
		this.evaldate = evaldate;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getUserpictureurl() {
		return userpictureurl;
	}
	public void setUserpictureurl(String userpictureurl) {
		this.userpictureurl = userpictureurl;
	}
	public String getPictureurl1() {
		return pictureurl1;
	}
	public void setPictureurl1(String pictureurl1) {
		this.pictureurl1 = pictureurl1;
	}
	public String getPictureurl2() {
		return pictureurl2;
	}
	public void setPictureurl2(String pictureurl2) {
		this.pictureurl2 = pictureurl2;
	}   
	
}
