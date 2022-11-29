package model.bo;

import java.util.List;

import model.bean.TheLoai;
import model.dao.TheLoaiDAO;

public class TheLoaiBO {
	private TheLoaiDAO theLoaiDAO = new TheLoaiDAO();
	
	public TheLoai get(int id)
	{
		return theLoaiDAO.get(id);
	}
	public List<TheLoai> getAll()
	{
		return theLoaiDAO.getAll();
	}
}
