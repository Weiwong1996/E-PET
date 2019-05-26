package entity;

import java.io.Serializable;

public class User implements Serializable {
    private Integer userid;

    private String uname;

    private String uemail;

	private String uphone;

    private String uaddress;

    private String upwd;

    private static final long serialVersionUID = 1L;

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

    public String getUemail() {
        return uemail;
    }

    public void setUemail(String uemail) {
        this.uemail = uemail == null ? null : uemail.trim();
    }

    public String getUphone() {
        return uphone;
    }

    public void setUphone(String uphone) {
        this.uphone = uphone == null ? null : uphone.trim();
    }

    public String getUaddress() {
        return uaddress;
    }

    public void setUaddress(String uaddress) {
        this.uaddress = uaddress == null ? null : uaddress.trim();
    }

    public String getUpwd() {
        return upwd;
    }

    public void setUpwd(String upwd) {
        this.upwd = upwd == null ? null : upwd.trim();
    }

    public User(String uname, String upwd) {
    	super();
		this.uname = uname;
		this.upwd = upwd;
	}

    public User(Integer userid, String uname, String uemail, String uphone, String uaddress, String upwd) {
		super();
		this.userid = userid;
		this.uname = uname;
		this.uemail = uemail;
		this.uphone = uphone;
		this.uaddress = uaddress;
		this.upwd = upwd;
	}

    public User(String uname, String uemail, String uphone, String uaddress, String upwd) {
		super();
		this.uname = uname;
		this.uemail = uemail;
		this.uphone = uphone;
		this.uaddress = uaddress;
		this.upwd = upwd;
	}

    public User() {
		super();
	}

	@Override
	public String toString() {
		return "User [userid=" + userid + ", uname=" + uname + ", uemail=" + uemail + ", uphone=" + uphone
				+ ", uaddress=" + uaddress + ", upwd=" + upwd + "]";
	}


}