package service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import dao.UserMapper;
import entity.User;
import service.UserService;

@Service("userService")
public class UserServiceImpl implements UserService {
	@Resource
	private UserMapper userDao;

	public int deleteByPrimaryKey(Integer userid) {
		return (userDao.deleteByPrimaryKey(userid) > 0) ? 1 : 0;
	}

	public int insert(User record) {
		return (userDao.insert(record) > 0) ? 1 : 0;
	}

	public int insertSelective(User record) {
		return (userDao.insertSelective(record) > 0) ? 1 : 0;
	}

	public User selectByPrimaryKey(Integer userid) {
		return userDao.selectByPrimaryKey(userid);
	}

	public int updateByPrimaryKeySelective(User record) {
		return (userDao.updateByPrimaryKeySelective(record) > 0) ? 1 : 0;
	}

	public int updateByPrimaryKey(User record) {
		return (userDao.updateByPrimaryKeySelective(record) > 0) ? 1 : 0;
	}

	public boolean doLogin(User user) {
		return (userDao.doLogin(user)>0?true:false);
	}

	public User getUseridByUname(String uname) {
		return (userDao.getUseridByUname(uname));
	}

	public List<User> selectAllUsers() {
		return (userDao.selectAllUsers());
	}

}
