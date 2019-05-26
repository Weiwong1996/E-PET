package dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import dao.OrderMapper;
import entity.P_order;

@Repository("orderDao")
public class OrderMapperImpl extends SqlSessionDaoSupport implements OrderMapper {
	@Autowired
	@Qualifier("sqlSessionFactory")
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		super.setSqlSessionFactory(sqlSessionFactory);
	}
	//删除
	public int deleteByPrimaryKey(Integer orderid) {
		SqlSession sqlSession = this.getSqlSession();
		//防止ID冲突，下面括号内的方法名要写全名！
		int row = sqlSession.delete("dao.OrderMapper.deleteByPrimaryKey", orderid);
		return row;
	}
	//插入
	public int insert(P_order record) {
		SqlSession sqlSession = this.getSqlSession();
		int row = sqlSession.insert("dao.OrderMapper.insert", record);
		return row;
	}
	//选择性插入
	public int insertSelective(P_order record) {
		SqlSession sqlSession = this.getSqlSession();
		int row = sqlSession.insert("dao.OrderMapper.insertSelective", record);
		return row;
	}
	//通过id查找查询
	public P_order selectByPrimaryKey(Integer orderid) {
		SqlSession sqlSession = this.getSqlSession();
		P_order p_order =sqlSession.selectOne("dao.OrderMapper.selectByPrimaryKey", orderid);
		return p_order;
	}
	//按条件修改
	public int updateByPrimaryKeySelective(P_order record) {
		SqlSession sqlSession = this.getSqlSession();
		int row = sqlSession.update("dao.OrderMapper.updateByPrimaryKeySelective", record);
		return row;
	}
	//修改
	public int updateByPrimaryKey(P_order record) {
		SqlSession sqlSession = this.getSqlSession();
		int row = sqlSession.update("dao.OrderMapper.updateByPrimaryKey", record);
		return row;
	}
	//查询全部
	public List<P_order> selectAllOrders() {
		SqlSession sqlSession = this.getSqlSession();
		List<P_order> olist = sqlSession.selectList("dao.OrderMapper.selectAllOrders");
		return olist;
	}

}
