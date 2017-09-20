package SQLBean;

import java.io.Serializable;
import java.sql.Date;

public class ForumVo implements Serializable{

	private int forumid;
	private int userid;
	private int replayuserid;
	private int forumType;
	private String content;
	private Date forumdate;
	public int getForumid() {
		return forumid;
	}
	public void setForumid(int forumid) {
		this.forumid = forumid;
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public int getReplayuserid() {
		return replayuserid;
	}
	public void setReplayuserid(int replayuserid) {
		this.replayuserid = replayuserid;
	}
	public int getForumType() {
		return forumType;
	}
	public void setForumType(int forumType) {
		this.forumType = forumType;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getForumdate() {
		return forumdate;
	}
	public void setForumdate(Date forumdate) {
		this.forumdate = forumdate;
	}
}
