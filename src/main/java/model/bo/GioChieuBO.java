package model.bo;

import model.bean.GioChieu;
import model.dao.GioChieuDAO;

import java.sql.Date;
import java.util.List;

public class GioChieuBO {
	private GioChieuDAO gioChieuDAO = new GioChieuDAO();
	public List<GioChieu> getByIdRapNgayIdPhim(int idRap, Date date, int idPhim )
	{
		return gioChieuDAO.getByIdRapNgayIdPhim(idRap, date, idPhim);
	}
	public List<GioChieu> getAll()
	{
		return gioChieuDAO.getAll();
	}
	public GioChieu get(int id)
	{
		return gioChieuDAO.get(id);
	}
	public int add(GioChieu g)
	{
		return gioChieuDAO.add(g);
	}
}
