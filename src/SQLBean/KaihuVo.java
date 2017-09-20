package SQLBean;

import java.io.Serializable;

public class KaihuVo implements Serializable{
	  private int kaihuid;
	  private int userid;
	  private String kaihuname;
	  private String bankno;
	  private int bankid;
	  private String kaihuhang;
	public int getKaihuid() {
		return kaihuid;
	}
	public void setKaihuid(int kaihuid) {
		this.kaihuid = kaihuid;
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public String getKaihuname() {
		return kaihuname;
	}
	public void setKaihuname(String kaihuname) {
		this.kaihuname = kaihuname;
	}
	public String getBankno() {
		return bankno;
	}
	public void setBankno(String bankno) {
		this.bankno = bankno;
	}
	public int getBankid() {
		return bankid;
	}
	public void setBankid(int bankid) {
		this.bankid = bankid;
	}
	public String getKaihuhang() {
		return kaihuhang;
	}
	public void setKaihuhang(String kaihuhang) {
		this.kaihuhang = kaihuhang;
	}
}
