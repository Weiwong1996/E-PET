package service;

import java.util.List;

import entity.Cart;

public interface CartService {
	 int deleteByPrimaryKey(Integer cartid);

	    int insert(Cart record);

	    int insertSelective(Cart record);

	    Cart selectByPrimaryKey(Integer cartid);

	    int updateByPrimaryKeySelective(Cart record);

	    int updateByPrimaryKey(Cart record);

		List<Cart> selectByUserid(int userid);

		int deleteByPname(String pname);
}
