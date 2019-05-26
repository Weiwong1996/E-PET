package dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import dao.AdminMapper;
import entity.Admin;

@Repository("adminDao")
public class AdminMapperImpl extends SqlSessionDaoSupport implements AdminMapper {
	@Autowired
	@Qualifier("sqlSessionFactory")
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		super.setSqlSessionFactory(sqlSessionFactory);
	}
	//删除
	public int deleteByPrimaryKey(Integer adminId) {
		SqlSession sqlSession = this.getSqlSession();
		//防止ID冲突，下面括号内的方法名要写全名！
		int row = sqlSession.delete("dao.AdminMapper.deleteByPrimaryKey", adminId);
		return row;
	}
	//插入
	public int insert(Admin record) {
		SqlSession sqlSession = this.getSqlSession();
		int row = sqlSession.insert("dao.AdminMapper.insert", record);
		return row;
	}
	//选择性插入
	public int insertSelective(Admin record) {
		SqlSession sqlSession = this.getSqlSession();
		int row = sqlSession.insert("dao.AdminMapper.insertSelective", record);
		return row;
	}
	//通过id查找查询
	public Admin selectByPrimaryKey(Integer adminId) {
		SqlSession sqlSession = this.getSqlSession();
		Admin admin =sqlSession.selectOne("dao.AdminMapper.selectByPrimaryKey", adminId);
		return admin;
	}
	//按条件修改
	public int updateByPrimaryKeySelective(Admin record) {
		SqlSession sqlSession = this.getSqlSession();
		int row = sqlSession.update("dao.AdminMapper.updateByPrimaryKeySelective", record);
		return row;
	}
	//修改
	public int updateByPrimaryKey(Admin record) {
		SqlSession sqlSession = this.getSqlSession();
		int row = sqlSession.update("dao.AdminMapper.updateByPrimaryKey", record);
		return row;
	}
	//login
	public int doLogin(Admin admin) {
		SqlSession sqlSession = this.getSqlSession();
		int row = sqlSession.selectOne("dao.AdminMapper.doLogin", admin);
		return row;
	}
	public Admin getAdminIdByAname(String aname) {
		SqlSession sqlSession = this.getSqlSession();
		Admin a = sqlSession.selectOne("dao.AdminMapper.getAdminIdByAname", aname);
		return a;
	}
	public List<Admin> selectAllAdmin() {
		SqlSession sqlSession = this.getSqlSession();
		List<Admin> alist = sqlSession.selectList("dao.AdminMapper.selectAllAdmin");
		return alist;
	}

/*	public List<Admin> selectAllAdmin() {
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
