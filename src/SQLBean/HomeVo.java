package SQLBean;

public class HomeVo {

	private int homeid;
	private String homename;
	private String pictureurl;
	private String oneword;
	private String introduce;
	private int homecount;
	private float price;
	private float discount;
	private int chargeType;//0家具，1建材灯饰,2家居家饰
	private int effective;
	private String replaydate;
	private String replayusername;
	private int seq;
	private String big_small;//规格
	private int buyed;//已售数量
	private int hometype;//0:床,1:床垫,3衣柜,4:沙发,5:电视柜,6:餐桌,7:餐椅,
	//8:书桌,9:书柜,10:儿童床,11:儿童桌,11:吊灯,12：吸顶灯13：卫浴14：浴室柜
	//15：座便器16：床上用品17：布艺织物18：家居饰品19：居家日用
	private String pictureurl2;
	private String pictureurl3;
	private String pictureurl4;
	private int tejia;//0：原价，1：特价
	private String fengge;//风格
	private String chandi;//产地
	public String getFengge() {
		return fengge;
	}
	public void setFengge(String fengge) {
		this.fengge = fengge;
	}
	public String getChandi() {
		return chandi;
	}
	public void setChandi(String chandi) {
		this.chandi = chandi;
	}
	public int getTejia() {
		return tejia;
	}
	public void setTejia(int tejia) {
		this.tejia = tejia;
	}
	public int getBuyed() {
		return buyed;
	}
	public void setBuyed(int buyed) {
		this.buyed = buyed;
	}
	public String getBig_small() {
		return big_small;
	}
	public void setBig_small(String big_small) {
		this.big_small = big_small;
	}
	public int getHomeid() {
		return homeid;
	}
	public void setHomeid(int homeid) {
		this.homeid = homeid;
	}
	public String getHomename() {
		return homename;
	}
	public void setHomename(String homename) {
		this.homename = homename;
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
	public String getIntroduce() {
		return introduce;
	}
	public void setIntroduce(String introduce) {
		this.introduce = introduce;
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
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public int getChargeType() {
		return chargeType;
	}
	public void setChargeType(int chargeType) {
		this.chargeType = chargeType;
	}
	public int getHometype() {
		return hometype;
	}
	public void setHometype(int hometype) {
		this.hometype = hometype;
	}
	public String getPictureurl2() {
		return pictureurl2;
	}
	public void setPictureurl2(String pictureurl2) {
		this.pictureurl2 = pictureurl2;
	}
	public String getPictureurl3() {
		return pictureurl3;
	}
	public void setPictureurl3(String pictureurl3) {
		this.pictureurl3 = pictureurl3;
	}
	public String getPictureurl4() {
		return pictureurl4;
	}
	public void setPictureurl4(String pictureurl4) {
		this.pictureurl4 = pictureurl4;
	}
	
}
