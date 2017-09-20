package SQLBean;

import java.io.Serializable;

public class DingdanVo implements Serializable{
	private String dingdanid;//订单id
    private String dingdannumber;//订单号
    private String name;//订单名称
    private String time;//订单时间
    private float money;//商品金额
    private String username;//收货人
    private String usermobile;//收货人手机号码
    private String address;//收货地址
    private float youhui;//优惠金额
    private float price;//实付价格
    private int effective;//1待付款，2待发货3,待收货,4待评价
    private int userid ;//用户ID
    private String tupian;//商品图片
    private String liuyan;//留言
    private int homeid;//家具ID
    private int shuliang;//购买数量
	public int getShuliang() {
		return shuliang;
	}
	public void setShuliang(int shuliang) {
		this.shuliang = shuliang;
	}
	public int getHomeid() {
		return homeid;
	}
	public void setHomeid(int homeid) {
		this.homeid = homeid;
	}
	public String getLiuyan() {
		return liuyan;
	}
	public void setLiuyan(String liuyan) {
		this.liuyan = liuyan;
	}
	public String getTupian() {
		return tupian;
	}
	public void setTupian(String tupian) {
		this.tupian = tupian;
	}
	public String getDingdanid() {
		return dingdanid;
	}
	public void setDingdanid(String dingdanid) {
		this.dingdanid = dingdanid;
	}
	public String getDingdannumber() {
		return dingdannumber;
	}
	public void setDingdannumber(String dingdannumber) {
		this.dingdannumber = dingdannumber;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public float getMoney() {
		return money;
	}
	public void setMoney(float money) {
		this.money = money;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getUsermobile() {
		return usermobile;
	}
	public void setUsermobile(String usermobile) {
		this.usermobile = usermobile;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public int getEffective() {
		return effective;
	}
	public void setEffective(int effective) {
		this.effective = effective;
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public float getYouhui() {
		return youhui;
	}
	public void setYouhui(float youhui) {
		this.youhui = youhui;
	}
}
