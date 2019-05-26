package service;

import java.util.List;

import entity.User;

public interface UserService {
	int deleteByPrimaryKey(Integer userid);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer userid);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);

    boolean doLogin(User user);

    User getUseridByUname(String uname);

    List<User> selectAllUsers();

}
