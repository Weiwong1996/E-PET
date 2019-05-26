package dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import dao.UserMapper;
import entity.User;

@Repository("userDao")
public class UserMapperImpl extends SqlSessionDaoSupport implements UserMapper {
	@Autowired
	@Qualifier("sqlSessionFactory")
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		super.setSqlSessionFactory(sqlSessionFactory);
	}
	//删除
	public int deleteByPrimaryKey(Integer userid) {
		SqlSession sqlSession = this.getSqlSession();
		//防止ID冲突，下面括号内的方法名要写全名！
		int row = sqlSession.delete("dao.UserMapper.deleteByPrimaryKey", userid);
		return row;
	}
	//插入
	public int insert(User record) {
		SqlSession sqlSession = this.getSqlSession();
		int row = sqlSession.insert("dao.UserMapper.insert", record);
		return row;
	}
	//选择性插入
	public int insertSelective(User record) {
		SqlSession sqlSession = this.getSqlSession();
		int row = sqlSession.insert("dao.UserMapper.insertSelective", record);
		return row;
	}
	//通过id查找查询
	public User selectByPrimaryKey(Integer userid) {
		SqlSession sqlSession = this.getSqlSession();
		User user =sqlSession.selectOne("dao.UserMapper.selectByPrimaryKey", userid);
		return user;
	}
	//按条件修改
	public int updateByPrimaryKeySelective(User record) {
		SqlSession sqlSession = this.getSqlSession();
		int row = sqlSession.update("dao.UserMapper.updateByPrimaryKeySelective", record);
		return row;
	}
	//修改
	public int updateByPrimaryKey(User record) {
		SqlSession sqlSession = this.getSqlSession();
		int row = sqlSession.update("dao.UserMapper.updateByPrimaryKey", record);
		return row;
	}
	public int doLogin(User user) {
		SqlSession sqlSession = this.getSqlSession();
		int row = sqlSession.selectOne("dao.UserMapper.doLogin", user);
		return row;
	}
	public User getUseridByUname(String uname) {
		SqlSession sqlSession = this.getSqlSession();
		User u = sqlSession.selectOne("dao.UserMapper.getUseridByUname", uname);
		return u;
	}
	public List<User> selectAllUsers() {
		SqlSession sqlSession = this.getSqlSession();
		List<User> ulist = sqlSession.selectList("dao.UserMapper.selectAllUsers");
		return ulist;
	}
}
