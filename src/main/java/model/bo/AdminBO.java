package model.bo;

import model.bean.Admin;
import model.dao.AdminDAO;

public class AdminBO {
	private AdminDAO adminDAO = new AdminDAO();
	
	public int checkLogin(String username, String password)
	{
		Admin ad = adminDAO.checkLogin(username, password);
		if(ad != null)
			return ad.getIdAdmin();
		return -1;
	}
	public int add(Admin admin)
	{
		return adminDAO.add(admin);
	}
	public int update(Admin admin)
	{
		return adminDAO.update(admin);
	}
	public Admin get(int id)
	{
		return adminDAO.get(id);
	}
}
