package model.bo;

import java.util.List;

import model.bean.Ve;
import model.dao.VeDAO;

public class VeBO {
	private VeDAO veDAO = new VeDAO();
	
	public List<Ve> getAll()
	{
		return veDAO.getAll();
	}
	
	public List<Ve> getVeByLichChieu(int idLichChieu)
	{
		return veDAO.getVeByLichChieu(idLichChieu);
	}
	
	public Ve get(int id)
	{
		return veDAO.get(id);
	}
	
	public int add(Ve v)
	{
		return veDAO.add(v);
	}
}
