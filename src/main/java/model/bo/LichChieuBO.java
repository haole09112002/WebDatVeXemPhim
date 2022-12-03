package model.bo;


import java.sql.Date;
import java.util.List;
import model.bean.LichChieu;

import model.dao.LichChieuDAO;

public class LichChieuBO {
	LichChieuDAO lichChieuDAO = new LichChieuDAO();
	
	public List<LichChieu> getAll() {
		return lichChieuDAO.getAll();
	}

	
	public LichChieu get(int id) {
		
		return lichChieuDAO.get(id);
	}


	public int add(LichChieu t) {
		return lichChieuDAO.add(t);
	}
	public LichChieu getLichChieuByNgayChieu(int id) {
		
		return lichChieuDAO.get(id);
	}
	public List<LichChieu> getLichChieuByNgayChieuIdPhim(Date date, int idP) {
		return lichChieuDAO.getLichChieuByNgayChieuIdPhim(date, idP);
	}
	public LichChieu getLichChieuByNgayIdPhimIdGio(Date date, int idP, int idGio) {
		return lichChieuDAO.getLichChieuByNgayIdPhimIdGio(date, idP, idGio);
	}
	public List<LichChieu> getLichChieuByNgayChieuIdPhong(Date date, int idP) {
		return lichChieuDAO.getLichChieuByNgayChieuIdPhong(date, idP);
	}
}
