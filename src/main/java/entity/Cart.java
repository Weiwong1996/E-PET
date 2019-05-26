package entity;

import java.io.Serializable;
import java.math.BigDecimal;

public class Cart implements Serializable {
    private Integer cartid;

    private Integer userid;

    private String pname;

    private BigDecimal csumprice;

    private String pimg;

    private String pprice;

    private static final long serialVersionUID = 1L;

	public Integer getCartid() {
        return cartid;
    }

    public void setCartid(Integer cartid) {
        this.cartid = cartid;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname;
    }

    public BigDecimal getCsumprice() {
        return csumprice;
    }

    public void setCsumprice(BigDecimal csumprice) {
        this.csumprice = csumprice;
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
        this.pprice = pprice;
    }

	public Cart(Integer userid, String pname, String pimg, String pprice) {
		super();
		this.userid = userid;
		this.pname = pname;
		this.pimg = pimg;
		this.pprice = pprice;
	}

	public Cart(Integer cartid, Integer userid, String pname, BigDecimal csumprice, String pimg, String pprice) {
		super();
		this.cartid = cartid;
		this.userid = userid;
		this.pname = pname;
		this.csumprice = csumprice;
		this.pimg = pimg;
		this.pprice = pprice;
	}

	public Cart() {
		super();
	}
}