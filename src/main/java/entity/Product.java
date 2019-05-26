package entity;

import java.io.Serializable;

public class Product implements Serializable {
    private Integer pid;

    private String pname;

    private String pimg;

    private String pprice;

    private String ptype;

    private String pinfo;

	private String pstatu;

    private static final long serialVersionUID = 1L;

    public Integer getPid() {
        return pid;
    }

    public void setPid(Integer pid) {
        this.pid = pid;
    }

    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname == null ? null : pname.trim();
    }

    public String getPimg() {
        return pimg;
    }

    public void setPimg(String pimg) {
        this.pimg = pimg == null ? null : pimg.trim();
    }

    public String getPprice() {
        return pprice;
    }

    public void setPprice(String pprice) {
        this.pprice = pprice == null ? null : pprice.trim();
    }

    public String getPtype() {
        return ptype;
    }

    public void setPtype(String ptype) {
        this.ptype = ptype == null ? null : ptype.trim();
    }

    public String getPinfo() {
        return pinfo;
    }

    public void setPinfo(String pinfo) {
        this.pinfo = pinfo == null ? null : pinfo.trim();
    }

	public String getPstatu() {
		return pstatu;
	}

	public void setPstatu(String pstatu) {
		this.pstatu = pstatu;
	}

	public Product(Integer pid, String pname, String pimg, String pprice, String ptype, String pinfo) {
		super();
		this.pid = pid;
		this.pname = pname;
		this.pimg = pimg;
		this.pprice = pprice;
		this.ptype = ptype;
		this.pinfo = pinfo;
	}
	public Product() {
		super();
	}

	public Product(String pname, String pimg, String pprice, String ptype, String pinfo, String pstatu) {
		super();
		this.pname = pname;
		this.pimg = pimg;
		this.pprice = pprice;
		this.ptype = ptype;
		this.pinfo = pinfo;
		this.setPstatu(pstatu);
	}

	public Product(int pid2, String pname2, String pprice2, String ptype2, String pinfo2) {
		super();
		this.pid = pid2;
		this.pname = pname2;
		this.pprice = pprice2;
		this.ptype = ptype2;
		this.pinfo = pinfo2;
	}

	@Override
	public String toString() {
		return "Product [pid=" + pid + ", pname=" + pname + ", pimg=" + pimg + ", pprice=" + pprice + ", ptype=" + ptype
				+ ", pinfo=" + pinfo + "]";
	}

}