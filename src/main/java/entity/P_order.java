package entity;

import java.io.Serializable;
import java.math.BigDecimal;

public class P_order implements Serializable {
    private Integer orderid;

    private String pname;

    private Integer userid;

    private String uname;

    private String oprice;

    private String uaddress;

    private String uphone;

    private static final long serialVersionUID = 1L;


	public Integer getOrderid() {
        return orderid;
    }

    public void setOrderid(Integer orderid) {
        this.orderid = orderid;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname == null ? null : uname.trim();
    }

    public String getOprice() {
        return oprice;
    }

    public void setOprice(String oprice) {
        this.oprice = oprice;
    }

    public String getUaddress() {
        return uaddress;
    }

    public void setUaddress(String uaddress) {
        this.uaddress = uaddress == null ? null : uaddress.trim();
    }

    public String getUphone() {
        return uphone;
    }

    public void setUphone(String uphone) {
        this.uphone = uphone == null ? null : uphone.trim();
    }

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public P_order(Integer orderid, String pname, Integer userid, String uname, String oprice, String uaddress,
			String uphone) {
		super();
		this.orderid = orderid;
		this.pname = pname;
		this.userid = userid;
		this.uname = uname;
		this.oprice = oprice;
		this.uaddress = uaddress;
		this.uphone = uphone;
	}

	public P_order(String pname,int uid, String uname, String oprice, String uaddress, String uphone) {
		super();
		this.userid = uid;
		this.pname = pname;
		this.uname = uname;
		this.oprice = oprice;
		this.uaddress = uaddress;
		this.uphone = uphone;
	}

	public P_order(int oid, String uname2, String uphone2, String uaddress2) {
		super();
		this.orderid = oid;
		this.uname = uname2;
		this.uaddress = uaddress2;
		this.uphone = uphone2;
	}

}