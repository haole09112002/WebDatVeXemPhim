package model.bo;

import java.sql.Date;
import java.util.List;

import model.bean.PhongChieu;
import model.dao.PhongChieuDAO;

public class PhongChieuBO {
	private PhongChieuDAO phongChieuDAO = new PhongChieuDAO();
//	public PhongChieu getPhongChieuByPhimNgayGio(int idPhim, Date ngay, int idGio)
//	{
//		return phongChieuDAO.getPhongChieuByPhimNgayGio(idPhim, ngay, idGio);
//	}
	public List<PhongChieu> getPhongChieuByIdPhimNgay(int idPhim, Date date)
	{
		return phongChieuDAO.getPhongChieuByIdPhimNgay(idPhim, date);
	}
	public PhongChieu get(int id)
	{
		return phongChieuDAO.get(id);
	}
}
