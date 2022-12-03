package model.dao;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Time;
import java.util.ArrayList;
import java.util.List;

import model.bean.Admin;
import model.bean.GioChieu;

public class GioChieuDAO implements INewDAO<GioChieu> {

	@Override
	public List<GioChieu> getAll() {
		List<GioChieu> results = new ArrayList<>();
		String sql = "Select * from GioChieu";
		PreparedStatement statement = null;
			try {
				statement = DBHelper.getInstance().getConnection().prepareStatement(sql);
				ResultSet rs = statement.executeQuery();
				while (rs.next()) {
					int idGioChieu = rs.getInt(1);
					Time gioChieu = rs.getTime(2);
				 results.add(new GioChieu(idGioChieu, gioChieu));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return results;

	}

	@Override
	public GioChieu get(int id) {
		String sql = "Select * from GioChieu where idGioChieu = ?";
		PreparedStatement statement = null;
			try {
				statement =DBHelper.getInstance().getConnection().prepareStatement(sql);
				statement.setInt(1, id);
				ResultSet rs = statement.executeQuery();
				while (rs.next()) {
					int idGioChieu = rs.getInt(1);
					Time gioChieu = rs.getTime(2);
				 return new  GioChieu(idGioChieu, gioChieu);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
		
	}

	@Override
	public int add(GioChieu t) {
		String sql = "insert into GioChieu(gioChieu) values(?)";
		PreparedStatement statement = null;
		try {
			statement = DBHelper.getInstance().getConnection().prepareStatement(sql);
			statement.setTime(1, t.getGioChieu());
			return statement.executeUpdate();
		} catch (SQLException e1) {
			e1.printStackTrace();
			return 0;
		}
		
	}

	@Override
	public int update(GioChieu t) {
		// TODO Auto-generated method stub
		return 0;
		
	}

	@Override
	public int delete(GioChieu t) {
		// TODO Auto-generated method stub
		return 0;
		
	}
	
	public List<GioChieu> getByIdPhimNgayIdPhong(int idPhim, Date date, int idPhong) {
		List<GioChieu> result = new ArrayList<>();
		String sql = "SELECT giochieu.* FROM giochieu"
				+ " INNER JOIN lichchieu ON giochieu.idGioChieu = lichchieu.idGioChieu"
				+ " WHERE idPhim = ? && ngaychieu = ? && lichchieu.idPhong = ?";
		PreparedStatement statement = null;
			try {
				statement = DBHelper.getInstance().getConnection().prepareStatement(sql);
				statement.setInt(1, idPhim);
				statement.setDate(2, date);
				statement.setInt(3, idPhong);
				ResultSet rs = statement.executeQuery();
				while (rs.next()) {
				 GioChieu gioChieu = new  GioChieu(rs.getInt(1), rs.getTime(2));
				 result.add(gioChieu);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
		
	}
	
}
