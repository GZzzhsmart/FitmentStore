package SQLBean;

import java.io.Serializable;

public class CollectionBean implements Serializable{

	private int collectionid;
	private String pictureurl;
	private int homeid;
	private String homename;
	private int homecount;
	private float price;
	private float discount;
	private float youhui;
	public int getCollectionid() {
		return collectionid;
	}
	public void setCollectionid(int collectionid) {
		this.collectionid = collectionid;
	}
	public String getPictureurl() {
		return pictureurl;
	}
	public void setPictureurl(String pictureurl) {
		this.pictureurl = pictureurl;
	}
	public String getHomename() {
		return homename;
	}
	public void setHomename(String homename) {
		this.homename = homename;
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
	public float getYouhui() {
		return youhui;
	}
	public void setYouhui(float youhui) {
		this.youhui = youhui;
	}
	public int getHomeid() {
		return homeid;
	}
	public void setHomeid(int homeid) {
		this.homeid = homeid;
	}
}
