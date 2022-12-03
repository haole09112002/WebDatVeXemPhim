package model.bo;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import model.bean.Phim;
import model.dao.PhimDAO;

public class PhimBO {
	private PhimDAO phimDAO = new PhimDAO();
	
	public List<Phim> getAllPhim()
	{
		return phimDAO.getAll();
	}
	
	public Phim getPhimById(int id)
	{
		return phimDAO.get(id);
	}
	
	public int add(Phim p)
	{
		return phimDAO.add(p);
	}
	
	public int update(Phim p)
	{
		return phimDAO.update(p);
	}
	
	public List<Phim> getPhimByName(String name)
	{
		return phimDAO.getPhimByName(name);
	}
	
	public List<Phim> getPhimByIdTheLoai(int idTheLoai)
	{
		return phimDAO.getPhimByIdTheLoai(idTheLoai);
	}
	public List<Phim> getPhimByNameAndTheLoai(String name, int idTheLoai)
	{
		List<Phim> results = new ArrayList<>();
		for(Phim p : phimDAO.getPhimByIdTheLoai(idTheLoai))
		{
			if(p.getTenPhim().contains(name))
				results.add(p);
		}
		return results;
		
	}
	public List<Phim> getPhimByNgay(Date ngay)
	{
		return phimDAO.getPhimByNgayChieu(ngay);
	}
	

	
	public Phim getPhimByIdLichChieu(int idLich)
	{
		return phimDAO.getPhimByIdLichChieu(idLich);
	}

	public int delete(Phim p)
	{
		return phimDAO.delete(p);
	}
}
