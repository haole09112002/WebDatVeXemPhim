package model.dao;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.bean.LichChieu;
import model.bean.PhongChieu;

public class LichChieuDAO implements INewDAO<LichChieu>{

	@Override
	public List<LichChieu> getAll() {
		List<LichChieu> results = new ArrayList<>();
		String sql = "Select * from LichChieu";
		PreparedStatement statement = null;
			try {
				statement = DBHelper.getInstance().getConnection().prepareStatement(sql);
				ResultSet rs = statement.executeQuery();
				while (rs.next()) {
					int idLichChieu = rs.getInt(1);
					int idPhim = rs.getInt(2);
					int idPhong = rs.getInt(3);
					Date ngayChieu = rs.getDate(4);
					int idGioChieu = rs.getInt(5);
					int giaVe = rs.getInt(6);
				 results.add(new LichChieu(idLichChieu, idPhim, idPhong, ngayChieu, idGioChieu, giaVe));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return results;
	}

	@Override
	public LichChieu get(int id) {
		String sql = "Select * from LichChieu where idLichChieu = ?";
		PreparedStatement statement = null;
			try {
				statement = DBHelper.getInstance().getConnection().prepareStatement(sql);
				statement.setInt(1, id);
				ResultSet rs = statement.executeQuery();
				while (rs.next()) {
					int idLichChieu = rs.getInt(1);
					int idPhim = rs.getInt(2);
					int idPhong = rs.getInt(3);
					Date ngayChieu = rs.getDate(4);
					int idGioChieu = rs.getInt(5);
					int giaVe = rs.getInt(6);
				return new LichChieu(idLichChieu, idPhim, idPhong, ngayChieu, idGioChieu, giaVe);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public int add(LichChieu t) {
		String sql = "insert into LichChieu(idPhim, idPhong, ngayChieu, idGioChieu, giaVe) values (?,?,?,?,?)";
		try {
			PreparedStatement statement = DBHelper.getInstance().getConnection().prepareStatement(sql);
			statement.setInt(1, t.getIdPhim());
			statement.setInt(1, t.getIdPhong());
			statement.setDate(1, t.getNgayChieu());
			statement.setInt(1, t.getIdGioChieu());
			statement.setDouble(1, t.getGiaVe());
			return statement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;
	}

	@Override
	public int update(LichChieu t) {
		
		return 0;
	}

	@Override
	public int delete(LichChieu t) {
	
		return 0;
	}
	public List<LichChieu> getLichChieuByNgayChieu(Date date) {
		
		List<LichChieu> results = new ArrayList<>();
		String sql = "Select * from LichChieu where ngayChieu = ?";
		PreparedStatement statement = null;
			try {
				statement = DBHelper.getInstance().getConnection().prepareStatement(sql);
				statement.setDate(1, date);
				ResultSet rs = statement.executeQuery();
				while (rs.next()) {
					int idLichChieu = rs.getInt(1);
					int idPhim = rs.getInt(2);
					int idPhong = rs.getInt(3);
					Date ngayChieu = rs.getDate(4);
					int idGioChieu = rs.getInt(5);
					int giaVe = rs.getInt(6);
				 results.add(new LichChieu(idLichChieu, idPhim, idPhong, ngayChieu, idGioChieu, giaVe));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return results;
	}
	public List<LichChieu> getLichChieuByNgayChieuIdPhim(Date date, int idP) {
		
		List<LichChieu> results = new ArrayList<>();
		String sql = "Select * from LichChieu where ngayChieu = ? and idPhim = ?";
		PreparedStatement statement = null;
			try {
				statement = DBHelper.getInstance().getConnection().prepareStatement(sql);
				statement.setDate(1, date);
				statement.setInt(2, idP);
				ResultSet rs = statement.executeQuery();
				while (rs.next()) {
					int idLichChieu = rs.getInt(1);
					int idPhim = rs.getInt(2);
					int idPhong = rs.getInt(3);
					Date ngayChieu = rs.getDate(4);
					int idGioChieu = rs.getInt(5);
					int giaVe = rs.getInt(6);
				 results.add(new LichChieu(idLichChieu, idPhim, idPhong, ngayChieu, idGioChieu, giaVe));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return results;
	}
	public LichChieu getLichChieuByNgayIdPhimIdGio(Date date, int idPg, int idGio) {
		String sql = "Select * from LichChieu where ngayChieu = ? and idPhong = ? && idGioChieu = ?";
		PreparedStatement statement = null;
			try {
				statement = DBHelper.getInstance().getConnection().prepareStatement(sql);
				statement.setDate(1, date);
				statement.setInt(2, idPg);
				statement.setInt(3, idGio);
				ResultSet rs = statement.executeQuery();
				while (rs.next()) {
					int idLichChieu = rs.getInt(1);
					int idPhim = rs.getInt(2);
					int idPhong = rs.getInt(3);
					Date ngayChieu = rs.getDate(4);
					int idGioChieu = rs.getInt(5);
					int giaVe = rs.getInt(6);
				return new LichChieu(idLichChieu, idPhim, idPhong, ngayChieu, idGioChieu, giaVe);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
}
