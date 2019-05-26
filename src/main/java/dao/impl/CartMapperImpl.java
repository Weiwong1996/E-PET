package dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import dao.CartMapper;
import entity.Cart;

@Repository("cartDao")
public class CartMapperImpl extends SqlSessionDaoSupport implements CartMapper {
	@Autowired
	@Qualifier("sqlSessionFactory")
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		super.setSqlSessionFactory(sqlSessionFactory);
	}
	//删除
	public int deleteByPrimaryKey(Integer cartid) {
		SqlSession sqlSession = this.getSqlSession();
		//防止ID冲突，下面括号内的方法名要写全名！
		int row = sqlSession.delete("dao.CartMapper.deleteByPrimaryKey", cartid);
		return row;
	}
	//插入
	public int insert(Cart record) {
		SqlSession sqlSession = this.getSqlSession();
		int row = sqlSession.insert("dao.CartMapper.insert", record);
		return row;
	}
	//选择性插入
	public int insertSelective(Cart record) {
		SqlSession sqlSession = this.getSqlSession();
		int row = sqlSession.insert("dao.CartMapper.insertSelective", record);
		return row;
	}
	//通过id查找查询
	public Cart selectByPrimaryKey(Integer cartid) {
		SqlSession sqlSession = this.getSqlSession();
		Cart cart =sqlSession.selectOne("dao.CartMapper.selectByPrimaryKey", cartid);
		return cart;
	}
	//按条件修改
	public int updateByPrimaryKeySelective(Cart record) {
		SqlSession sqlSession = this.getSqlSession();
		int row = sqlSession.update("dao.CartMapper.updateByPrimaryKeySelective", record);
		return row;
	}
	//修改
	public int updateByPrimaryKey(Cart record) {
		SqlSession sqlSession = this.getSqlSession();
		int row = sqlSession.update("dao.CartMapper.updateByPrimaryKey", record);
		return row;
	}
	public List<Cart> selectByUserid(int userid) {
		SqlSession sqlSession = this.getSqlSession();
		List<Cart> clist = sqlSession.selectList("dao.CartMapper.selectByUserid",userid);
		return clist;
	}
	public int deleteByPname(String pname) {
		SqlSession sqlSession = this.getSqlSession();
		int row = sqlSession.delete("dao.CartMapper.deleteByPname", pname);
		return row;
	}

/*	public List<Cart> selectAllCart() {
		SqlSession sqlSession = this.getSqlSession();
		List<Coach> clist =sqlSession.selectList("dao.CoachMapper.selectAllCoach");
		return clist;
	}
	@Override
	public Coach getPriceByName(String cname) {
		SqlSession sqlSession = this.getSqlSession();
		Coach coach =sqlSession.selectOne("dao.CoachMapper.getPriceByName", cname);
		return coach;
	}
	@Override
	public Coach getCidByName(String cname) {
		SqlSession sqlSession = this.getSqlSession();
		Coach coach =sqlSession.selectOne("dao.CoachMapper.getCidByName", cname);
		return coach;
	}*/

}
