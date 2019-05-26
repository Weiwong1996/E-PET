package service;

import java.util.List;

import entity.Page;
import entity.Product;

public interface ProductService {
	int deleteByPrimaryKey(Integer pid);

    int insert(Product record);

    int insertSelective(Product record);

    Product selectByPrimaryKey(Integer pid);

    int updateByPrimaryKeySelective(Product record);

    int updateByPrimaryKey(Product record);

    List<Product> selectAllProduct();

	int proCount();

	List<Product> selectProList(Page page);

	List<Product> selectByPtype(String ptype);

	Product selectByPname(String pname);

}
