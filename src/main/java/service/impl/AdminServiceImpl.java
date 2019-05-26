package service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import dao.AdminMapper;
import entity.Admin;
import service.AdminService;

@Service("adminService")
public class AdminServiceImpl implements AdminService {
	@Resource
	private AdminMapper adminDao;

	public int deleteByPrimaryKey(Integer adminId) {
		return (adminDao.deleteByPrimaryKey(adminId) > 0) ? 1 : 0;
	}

	public int insert(Admin record) {
		return (adminDao.insert(record) > 0) ? 1 : 0;
	}

	public int insertSelective(Admin record) {
		return (adminDao.insertSelective(record) > 0) ? 1 : 0;
	}

	public Admin selectByPrimaryKey(Integer adminId) {
		return adminDao.selectByPrimaryKey(adminId);
	}

	public int updateByPrimaryKeySelective(Admin record) {
		return (adminDao.updateByPrimaryKeySelective(record) > 0) ? 1 : 0;
	}

	public int updateByPrimaryKey(Admin record) {
		return (adminDao.updateByPrimaryKeySelective(record) > 0) ? 1 : 0;
	}

	public boolean doLogin(Admin admin) {
		return (adminDao.doLogin(admin)>0?true:false);
	}

	public Admin getAdminIdByAname(String aname) {
		return (adminDao.getAdminIdByAname(aname));
	}

	public List<Admin> selectAllAdmin() {
		return (adminDao.selectAllAdmin());
	}

}
