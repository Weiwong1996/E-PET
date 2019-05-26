package dao;

import java.util.List;

import entity.User;

public interface UserMapper {
    int deleteByPrimaryKey(Integer userid);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer userid);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);

    int doLogin(User user);

    User getUseridByUname(String uname);

    List<User> selectAllUsers();

}