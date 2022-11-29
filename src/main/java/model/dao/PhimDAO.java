package model.dao;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import java.util.List;

import model.bean.Phim;

public class PhimDAO implements INewDAO<Phim> {

	@Override
	public List<Phim> getAll() {
		List<Phim> results = new ArrayList<>();
		String sql = "Select * from Phim";
		PreparedStatement statement = null;
		try {
			statement = DBHelper.getConnection().prepareStatement(sql);
			ResultSet rs = statement.executeQuery();
			while (rs.next()) {
				 int idPhim = rs.getInt(0);
				 String tenPhim = rs.getString(1);
				 String moTa = rs.getString(2);
				 String thoiLuong = rs.getString(3);
				 String nhaSanXuat = rs.getString(4);
				 String doTuoi = rs.getString(5);
				 String daoDien = rs.getString(6);
				 Date ngayKhoiChieu = rs.getDate(7);
				 Date ngayKetThuc = rs.getDate(8);
				 String linkTrailer = rs.getString(9);
				 String linkAnh = rs.getString(10);
				 int idTheLoai = rs.getInt(11);
				 String dienVien = rs.getString(12);
				 String quocGia = rs.getString(13);
				 Phim p = new Phim(idPhim, tenPhim, moTa, thoiLuong, nhaSanXuat, doTuoi, daoDien, ngayKhoiChieu, ngayKetThuc, linkTrailer, linkAnh
						 ,idTheLoai, dienVien, quocGia);
				 results.add(p);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return results;
	}

	@Override
	public Phim get(int id) {
		String sql = "Select * from Phim where idPhim = ?";
		PreparedStatement statement = null;
		try {
			statement = DBHelper.getConnection().prepareStatement(sql);
			statement.setInt(1, id);
			ResultSet rs = statement.executeQuery();
			while (rs.next()) {
				 int idPhim = rs.getInt("idPhim");
				 String tenPhim = rs.getString(1);
				 String moTa = rs.getString(2);
				 String thoiLuong = rs.getString(3);
				 String nhaSanXuat = rs.getString(4);
				 String doTuoi = rs.getString(5);
				 String daoDien = rs.getString(6);
				 Date ngayKhoiChieu = rs.getDate(7);
				 Date ngayKetThuc = rs.getDate(8);
				 String linkTrailer = rs.getString(9);
				 String linkAnh = rs.getString(10);
				 int idTheLoai = rs.getInt(11);
				 String dienVien = rs.getString(12);
				 String quocGia = rs.getString(13);
				 Phim p = new Phim(idPhim, tenPhim, moTa, thoiLuong, nhaSanXuat, doTuoi, daoDien, ngayKhoiChieu, ngayKetThuc, linkTrailer, linkAnh
						 ,idTheLoai, dienVien, quocGia);
				 return p;
			}
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		return null;
	}

	@Override
	public int add(Phim p) {
		String sql = "INSERT INTO phim ( tenPhim, moTa, thoiLuong, "
				+ "nhaSanXuat, doTuoi, daoDien, ngayKhoiChieu, ngayKetThuc, "
				+ "linkTrailer, linkAnh, idTheLoai, dienVien, quocGia) VALUES"
				+ "	(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		PreparedStatement statement = null;
		try {
			statement = DBHelper.getConnection().prepareStatement(sql);
			statement.setString(1, p.getTenPhim());
			statement.setString(2, p.getMoTa());
			statement.setString(3, p.getThoiLuong());
			statement.setString(4, p.getNhaSanXuat());
			statement.setString(5, p.getDoTuoi());
			statement.setString(6, p.getDaoDien());
			statement.setDate(7, p.getNgayKhoiChieu());
			statement.setDate(8, p.getNgayKetThuc());
			statement.setString(9, p.getLinkTrailer());
			statement.setString(10, p.getLinkAnh());
			statement.setInt(11, p.getIdTheLoai());
			statement.setString(12, p.getDienVien());
			statement.setString(13, p.getQuocGia());
			return statement.executeUpdate();
		} catch (SQLException e1) {
			e1.printStackTrace();
			return 0;
		}
		
	}

	@Override
	public int update(Phim p) {
		String sql = "update Phim set tenPhim = ?, moTa = ?, thoiLuong =?, nhaSanXuat=?, doTuoi =?, daoDien = ?"
				+ ", ngayKhoiChieu = ?, ngayKetThuc =?, linkTrailer=?, linkAnh=?, idTheLoai=?, dienVien=?, quocGia=? "
				+ "where idPhim = ?";
		PreparedStatement statement = null;
		try {
			statement = DBHelper.getConnection().prepareStatement(sql);
			statement.setString(1, p.getTenPhim());
			statement.setString(2, p.getMoTa());
			statement.setString(3, p.getThoiLuong());
			statement.setString(4, p.getNhaSanXuat());
			statement.setString(5, p.getDoTuoi());
			statement.setString(6, p.getDaoDien());
			statement.setDate(7, p.getNgayKhoiChieu());
			statement.setDate(8, p.getNgayKetThuc());
			statement.setString(9, p.getLinkTrailer());
			statement.setString(10, p.getLinkAnh());
			statement.setInt(11, p.getIdTheLoai());
			statement.setString(12, p.getDienVien());
			statement.setString(13, p.getQuocGia());
			statement.setInt(14, p.getIdPhim());
			return statement.executeUpdate();
		} catch (SQLException e1) {
			e1.printStackTrace();
			return 0;
		}
		
	}

	@Override
	public int delete(Phim p) {
		String sql = "delete from Phim where idPhim = ?";
				PreparedStatement statement = null;
		try {
			statement = DBHelper.getConnection().prepareStatement(sql);
			statement.setInt(1, p.getIdPhim());
			return statement.executeUpdate();
		} catch (SQLException e1) {
			e1.printStackTrace();
			return 0;
		}
		
	}
	
	public List<Phim> getPhimByName(String name)
	{
		List<Phim> results = new ArrayList<>();
		String sql = "Select * from Phim where tenPhim = ?";
		PreparedStatement statement = null;
		try {
			statement = DBHelper.getConnection().prepareStatement(sql);
			statement.setString(1, name);
			ResultSet rs = statement.executeQuery();
			while (rs.next()) {
				 int idPhim = rs.getInt(0);
				 String tenPhim = rs.getString(1);
				 String moTa = rs.getString(2);
				 String thoiLuong = rs.getString(3);
				 String nhaSanXuat = rs.getString(4);
				 String doTuoi = rs.getString(5);
				 String daoDien = rs.getString(6);
				 Date ngayKhoiChieu = rs.getDate(7);
				 Date ngayKetThuc = rs.getDate(8);
				 String linkTrailer = rs.getString(9);
				 String linkAnh = rs.getString(10);
				 int idTheLoai = rs.getInt(11);
				 String dienVien = rs.getString(12);
				 String quocGia = rs.getString(13);
				 Phim p = new Phim(idPhim, tenPhim, moTa, thoiLuong, nhaSanXuat, doTuoi, daoDien, ngayKhoiChieu, ngayKetThuc, linkTrailer, linkAnh
						 ,idTheLoai, dienVien, quocGia);
				 results.add(p);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return results;
	}
	public List<Phim> getPhimByIdTheLoai(int id)
	{
		List<Phim> results = new ArrayList<>();
		String sql = "Select * from Phim where idTheLoai = ?";
		PreparedStatement statement = null;
		try {
			statement = DBHelper.getConnection().prepareStatement(sql);
			statement.setInt(1, id);
			ResultSet rs = statement.executeQuery();
			while (rs.next()) {
				 int idPhim = rs.getInt(0);
				 String tenPhim = rs.getString(1);
				 String moTa = rs.getString(2);
				 String thoiLuong = rs.getString(3);
				 String nhaSanXuat = rs.getString(4);
				 String doTuoi = rs.getString(5);
				 String daoDien = rs.getString(6);
				 Date ngayKhoiChieu = rs.getDate(7);
				 Date ngayKetThuc = rs.getDate(8);
				 String linkTrailer = rs.getString(9);
				 String linkAnh = rs.getString(10);
				 int idTheLoai = rs.getInt(11);
				 String dienVien = rs.getString(12);
				 String quocGia = rs.getString(13);
				 Phim p = new Phim(idPhim, tenPhim, moTa, thoiLuong, nhaSanXuat, doTuoi, daoDien, ngayKhoiChieu, ngayKetThuc, linkTrailer, linkAnh
						 ,idTheLoai, dienVien, quocGia);
				 results.add(p);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return results;
	}
	public List<Phim> getPhimByNgayChieu(Date date)
	{
		List<Phim> results = new ArrayList<>();
		List<Integer> idList = new ArrayList<>();
		String sql = "SELECT DISTINCT  lichchieu.idPhim FROM lichchieu WHERE lichchieu.ngaychieu = ?";
		PreparedStatement statement = null;
		try {
			statement = DBHelper.getConnection().prepareStatement(sql);
			statement.setDate(1, date);
			ResultSet rs = statement.executeQuery();
			while (rs.next()) {
				idList.add(rs.getInt(0));
			}
			for (Integer id : idList) {
				results.add(this.get(id));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return results;
	}
	public Phim getPhimByIdLichChieu(int idLC) {
		String sql = "SELECT phim.* FROM phim, lichchieu WHERE lichchieu.idLichchieu = ? AND lichchieu.idPhim= phim.idPhim";
		PreparedStatement statement = null;
		try {
			statement = DBHelper.getConnection().prepareStatement(sql);
			statement.setInt(1, idLC);
			ResultSet rs = statement.executeQuery();
			while (rs.next()) {
				 int idPhim = rs.getInt("idPhim");
				 String tenPhim = rs.getString(1);
				 String moTa = rs.getString(2);
				 String thoiLuong = rs.getString(3);
				 String nhaSanXuat = rs.getString(4);
				 String doTuoi = rs.getString(5);
				 String daoDien = rs.getString(6);
				 Date ngayKhoiChieu = rs.getDate(7);
				 Date ngayKetThuc = rs.getDate(8);
				 String linkTrailer = rs.getString(9);
				 String linkAnh = rs.getString(10);
				 int idTheLoai = rs.getInt(11);
				 String dienVien = rs.getString(12);
				 String quocGia = rs.getString(13);
				 Phim p = new Phim(idPhim, tenPhim, moTa, thoiLuong, nhaSanXuat, doTuoi, daoDien, ngayKhoiChieu, ngayKetThuc, linkTrailer, linkAnh
						 ,idTheLoai, dienVien, quocGia);
				 return p;
			}
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		return null;
	}
}
