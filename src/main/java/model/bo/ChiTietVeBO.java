package model.bo;

import java.util.List;

import model.bean.ChiTietVe;
import model.dao.ChiTietVeDAO;

public class ChiTietVeBO {
	private ChiTietVeDAO chiTietVeDAO = new ChiTietVeDAO();
	
//	public List<ChiTietVe> getAll()
//	{
//		return chiTietVeDAO.getAll();
//	}
//	
//	public ChiTietVe getByKey( int idVe , int idGhe)
//	{
//		return chiTietVeDAO.getByIdId(idVe, idGhe);
//	}
//	
//	public List<ChiTietVe> getByidVe(int idVe)
//	{
//		return chiTietVeDAO.getByIdVe(idVe);
//	}
	public int add(ChiTietVe t)
	{
		return chiTietVeDAO.add(t);
	}

}
