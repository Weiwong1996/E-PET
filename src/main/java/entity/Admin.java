package entity;

import java.io.Serializable;

public class Admin implements Serializable {
    private Integer adminId;

    private String aname;

    private String apwd;

    private String aphonenum;

    private static final long serialVersionUID = 1L;

    public Integer getAdminId() {
        return adminId;
    }

    public void setAdminId(Integer adminId) {
        this.adminId = adminId;
    }

    public String getAname() {
        return aname;
    }

    public void setAname(String aname) {
        this.aname = aname == null ? null : aname.trim();
    }

    public String getApwd() {
        return apwd;
    }

    public void setApwd(String apwd) {
        this.apwd = apwd == null ? null : apwd.trim();
    }

    public String getAphonenum() {
        return aphonenum;
    }

    public void setAphonenum(String aphonenum) {
        this.aphonenum = aphonenum == null ? null : aphonenum.trim();
    }

	public Admin(String aname, String apwd) {
		super();
		this.aname = aname;
		this.apwd = apwd;
	}

	public Admin(Integer adminId, String aname, String apwd, String aphonenum) {
		super();
		this.adminId = adminId;
		this.aname = aname;
		this.apwd = apwd;
		this.aphonenum = aphonenum;
	}

	public Admin() {
		super();
	}
}