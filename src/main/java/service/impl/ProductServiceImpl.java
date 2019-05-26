package service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import dao.ProductMapper;
import entity.Page;
import entity.Product;
import service.ProductService;

@Service("productService")
public class ProductServiceImpl implements ProductService {
	@Resource
	private ProductMapper productDao;

	public int deleteByPrimaryKey(Integer pid) {
		return (productDao.deleteByPrimaryKey(pid) > 0) ? 1 : 0;
	}

	public int insert(Product record) {
		return (productDao.insert(record) > 0) ? 1 : 0;
	}

	public int insertSelective(Product record) {
		return (productDao.insertSelective(record) > 0) ? 1 : 0;
	}

	public Product selectByPrimaryKey(Integer pid) {
		return productDao.selectByPrimaryKey(pid);
	}

	public int updateByPrimaryKeySelective(Product record) {
		return (productDao.updateByPrimaryKeySelective(record) > 0) ? 1 : 0;
	}

	public int updateByPrimaryKey(Product record) {
		return (productDao.updateByPrimaryKeySelective(record) > 0) ? 1 : 0;
	}

	public List<Product> selectAllProduct() {
		return (productDao.selectAllProduct());
	}

	public int proCount() {
		return (productDao.proCount());
	}

	public List<Product> selectProList(Page page) {
		return (productDao.selectProList(page));
	}

	public List<Product> selectByPtype(String ptype) {
		return productDao.selectByPtype(ptype);
	}

	public Product selectByPname(String pname) {
		return productDao.selectByPname(pname);
	}

}
