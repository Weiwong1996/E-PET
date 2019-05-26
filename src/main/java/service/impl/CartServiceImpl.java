package service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import dao.CartMapper;
import entity.Cart;
import service.CartService;

@Service("cartService")
public class CartServiceImpl implements CartService {
	@Resource
	private CartMapper cartDao;

	public int deleteByPrimaryKey(Integer cartid) {
		return (cartDao.deleteByPrimaryKey(cartid) > 0) ? 1 : 0;
	}

	public int insert(Cart record) {
		return (cartDao.insert(record) > 0) ? 1 : 0;
	}

	public int insertSelective(Cart record) {
		return (cartDao.insertSelective(record) > 0) ? 1 : 0;
	}

	public Cart selectByPrimaryKey(Integer cartid) {
		return cartDao.selectByPrimaryKey(cartid);
	}

	public int updateByPrimaryKeySelective(Cart record) {
		return (cartDao.updateByPrimaryKeySelective(record) > 0) ? 1 : 0;
	}

	public int updateByPrimaryKey(Cart record) {
		return (cartDao.updateByPrimaryKeySelective(record) > 0) ? 1 : 0;
	}

	public List<Cart> selectByUserid(int userid) {
		return cartDao.selectByUserid(userid);
	}

	public int deleteByPname(String pname) {
		return (cartDao.deleteByPname(pname) > 0) ? 1 : 0;
	}
}
