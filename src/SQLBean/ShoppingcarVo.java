package SQLBean;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import SQLBase.SQLSentenceimp;

public class ShoppingcarVo implements Serializable{

	private int carid;
	private int homeid;
	private String username;
	private String pictureurl;
	private String oneword;
	private int homecount;
	private float price;
	private float discount;
	private int effective;
	private String replaydate;
	private String replayusername;
	public void setCarid(int carid) {
		this.carid = carid;
	}
	public int getHomeid() {
		return homeid;
	}
	public void setHomeid(int homeid) {
		this.homeid = homeid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPictureurl() {
		return pictureurl;
	}
	public void setPictureurl(String pictureurl) {
		this.pictureurl = pictureurl;
	}
	public String getOneword() {
		return oneword;
	}
	public void setOneword(String oneword) {
		this.oneword = oneword;
	}
	public int getHomecount() {
		return homecount;
	}
	public void setHomecount(int homecount) {
		this.homecount = homecount;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public float getDiscount() {
		return discount;
	}
	public void setDiscount(float discount) {
		this.discount = discount;
	}
	public int getEffective() {
		return effective;
	}
	public void setEffective(int effective) {
		this.effective = effective;
	}
	public String getReplaydate() {
		return replaydate;
	}
	public void setReplaydate(String replaydate) {
		this.replaydate = replaydate;
	}
	public String getReplayusername() {
		return replayusername;
	}
	public void setReplayusername(String replayusername) {
		this.replayusername = replayusername;
	}
	public int getCarid() {
		return carid;
	}
}
