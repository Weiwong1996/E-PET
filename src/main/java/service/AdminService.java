package service;

import java.util.List;

import entity.Admin;

public interface AdminService {
    int deleteByPrimaryKey(Integer adminId);

    int insert(Admin record);

    int insertSelective(Admin record);

    Admin selectByPrimaryKey(Integer adminId);

    int updateByPrimaryKeySelective(Admin record);

    int updateByPrimaryKey(Admin record);

    boolean doLogin(Admin admin);

    Admin getAdminIdByAname(String aname);

    List<Admin> selectAllAdmin();
}
