package dao;

import java.util.List;

import entity.Admin;

public interface AdminMapper {
    int deleteByPrimaryKey(Integer adminId);

    int insert(Admin record);

    int insertSelective(Admin record);

    Admin selectByPrimaryKey(Integer adminId);

    int updateByPrimaryKeySelective(Admin record);

    int updateByPrimaryKey(Admin record);

	int doLogin(Admin admin);

	Admin getAdminIdByAname(String aname);

	List<Admin> selectAllAdmin();
}