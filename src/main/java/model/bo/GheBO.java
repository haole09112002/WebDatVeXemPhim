package model.bo;

import java.util.List;

import model.bean.GhePhongChieu;
import model.dao.GhePhongChieuDAO;

public class GheBO {
	private GhePhongChieuDAO gheDAO = new GhePhongChieuDAO();
	
//	public List<GhePhongChieu> getGheByIdVe(int idVe)
//	{
//		return gheDAO.getByVe(idVe);
//	}
	public List<GhePhongChieu> getGheByIdPhongChieu(int idPC)
	{
		return gheDAO.getByPhongChieu(idPC);
	}
	public int update(GhePhongChieu ghe)
	{
		return gheDAO.update(ghe);
	}
	public int add(GhePhongChieu ghe)
	{
		return gheDAO.add(ghe);
	}
	public GhePhongChieu get(int id)
	{
		return gheDAO.get(id);
	}
	public List<GhePhongChieu> getGheDaDatByLichChieu(int idLichChieu)
	{
		return gheDAO.getGheDaDatByLichChieu(idLichChieu);
	}
}
