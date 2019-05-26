package service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import dao.OrderMapper;
import entity.P_order;
import service.OrderService;

@Service("orderService")
public class OrderServiceImpl implements OrderService {
	@Resource
	private OrderMapper orderDao;

	public int deleteByPrimaryKey(Integer orderid) {
		return (orderDao.deleteByPrimaryKey(orderid) > 0) ? 1 : 0;
	}

	public int insert(P_order record) {
		return (orderDao.insert(record) > 0) ? 1 : 0;
	}

	public int insertSelective(P_order record) {
		return (orderDao.insertSelective(record) > 0) ? 1 : 0;
	}

	public P_order selectByPrimaryKey(Integer orderid) {
		return orderDao.selectByPrimaryKey(orderid);
	}

	public int updateByPrimaryKeySelective(P_order record) {
		return (orderDao.updateByPrimaryKeySelective(record) > 0) ? 1 : 0;
	}

	public int updateByPrimaryKey(P_order record) {
		return (orderDao.updateByPrimaryKeySelective(record) > 0) ? 1 : 0;
	}

	public List<P_order> selectAllOrders() {
		return (orderDao.selectAllOrders());
	}

}
