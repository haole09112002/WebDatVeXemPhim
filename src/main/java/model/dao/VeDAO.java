package model.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.bean.Ve;

public class VeDAO implements INewDAO<Ve> {

	@Override
	public List<Ve> getAll() {
		List<Ve> results = new ArrayList<>();
		String sql = "Select * from Ve";
		PreparedStatement statement = null;
		try {
				statement = DBHelper.getConnection().prepareStatement(sql);
				ResultSet rs = statement.executeQuery();
				while (rs.next()) {
					int idVe = rs.getInt(0);
					int idLichChieu = rs.getInt(1);	
					String tenKhach = rs.getString(2);
					String soDienThoai = rs.getString(3);
					Double tongTien = rs.getDouble(4);
					results.add(new Ve( idVe, idLichChieu, tenKhach, soDienThoai, tongTien));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return results;
	}

	@Override
	public Ve get(int id) {
		String sql = "Select * from Ve where idVe = ?";
		PreparedStatement statement = null;
		try {
				statement = DBHelper.getConnection().prepareStatement(sql);
				statement.setInt(1, id);
				ResultSet rs = statement.executeQuery();
				while (rs.next()) {
					int idVe = rs.getInt(0);
					int idLichChieu = rs.getInt(1);	
					String tenKhach = rs.getString(2);
					String soDienThoai = rs.getString(3);
					Double tongTien = rs.getDouble(4);
					return new Ve( idVe, idLichChieu, tenKhach, soDienThoai, tongTien);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public void add(Ve t) {
		String sql = "insert into Ve(idLichChieu, tenKhach, soDienThoai, tongTien) values (?,?,?,?)";
		PreparedStatement statement = null;
		try {
				statement = DBHelper.getConnection().prepareStatement(sql);
				statement.setInt(1, t.getIdLichChieu());
				statement.setString(2, t.getTenKhach());
				statement.setString(3, t.getSoDienThoai());
				statement.setDouble(4, t.getTongTien());
				statement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void update(Ve t) {
		
		
	}

	@Override
	public void delete(Ve t) {
		
	}

}
