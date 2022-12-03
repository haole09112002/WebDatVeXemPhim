package model.bo;

import java.sql.Date;
import java.util.List;

import model.bean.PhongChieu;
import model.dao.PhongChieuDAO;

public class PhongChieuBO {
	private PhongChieuDAO phongChieuDAO = new PhongChieuDAO();
	public PhongChieu getPhongChieuByPhimNgayGio(int idPhim, Date ngay, int idGio)
	{
		return phongChieuDAO.getPhongChieuByPhimNgayGio(idPhim, ngay, idGio);
	}
	public PhongChieu get(int id)
	{
		return phongChieuDAO.get(id);
	}
	public List<PhongChieu> getAll() {
		return phongChieuDAO.getAll();
	}
}
