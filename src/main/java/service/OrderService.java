package service;

import java.util.List;

import entity.P_order;

public interface OrderService {
	 int deleteByPrimaryKey(Integer orderid);

	    int insert(P_order record);

	    int insertSelective(P_order record);

	    P_order selectByPrimaryKey(Integer orderid);

	    int updateByPrimaryKeySelective(P_order record);

	    int updateByPrimaryKey(P_order record);

		List<P_order> selectAllOrders();
}
