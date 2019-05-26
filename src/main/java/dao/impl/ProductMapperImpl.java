package dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import dao.ProductMapper;
import entity.Page;
import entity.Product;

@Repository("productDao")
public class ProductMapperImpl extends SqlSessionDaoSupport implements ProductMapper {
	@Autowired
	@Qualifier("sqlSessionFactory")
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		super.setSqlSessionFactory(sqlSessionFactory);
	}
	//删除
	public int deleteByPrimaryKey(Integer pid) {
		SqlSession sqlSession = this.getSqlSession();
		//防止ID冲突，下面括号内的方法名要写全名！
		int row = sqlSession.delete("dao.ProductMapper.deleteByPrimaryKey", pid);
		return row;
	}
	//插入
	public int insert(Product record) {
		SqlSession sqlSession = this.getSqlSession();
		int row = sqlSession.insert("dao.ProductMapper.insert", record);
		return row;
	}
	//选择性插入
	public int insertSelective(Product record) {
		SqlSession sqlSession = this.getSqlSession();
		int row = sqlSession.insert("dao.ProductMapper.insertSelective", record);
		return row;
	}
	//通过id查找查询
	public Product selectByPrimaryKey(Integer pid) {
		SqlSession sqlSession = this.getSqlSession();
		Product product =sqlSession.selectOne("dao.ProductMapper.selectByPrimaryKey", pid);
		return product;
	}
	//按条件修改
	public int updateByPrimaryKeySelective(Product record) {
		SqlSession sqlSession = this.getSqlSession();
		int row = sqlSession.update("dao.ProductMapper.updateByPrimaryKeySelective", record);
		return row;
	}
	//修改
	public int updateByPrimaryKey(Product record) {
		SqlSession sqlSession = this.getSqlSession();
		int row = sqlSession.update("dao.ProductMapper.updateByPrimaryKey", record);
		return row;
	}
	public List<Product> selectAllProduct() {
		SqlSession sqlSession = this.getSqlSession();
		List<Product> plist =sqlSession.selectList("dao.ProductMapper.selectAllProduct");
		return plist;
	}
	public int proCount() {
		SqlSession sqlSession = this.getSqlSession();
		int row = sqlSession.selectOne("dao.ProductMapper.proCount");
		return row;
	}
	public List<Product> selectProList(Page page) {
		SqlSession sqlSession = this.getSqlSession();
		List<Product> plist =sqlSession.selectList("dao.ProductMapper.selectProList",page);
		return plist;
	}
	public List<Product> selectByPtype(String ptype) {
		SqlSession sqlSession = this.getSqlSession();
		List<Product> plist =sqlSession.selectList("dao.ProductMapper.selectByPtype", ptype);
		return plist;
	}
	public Product selectByPname(String pname) {
		SqlSession sqlSession = this.getSqlSession();
		Product product =sqlSession.selectOne("dao.ProductMapper.selectByPname", pname);
		return product;
	}

}
