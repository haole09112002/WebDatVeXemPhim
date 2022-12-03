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
				statement = DBHelper.getInstance().getConnection().prepareStatement(sql);
				ResultSet rs = statement.executeQuery();
				while (rs.next()) {
					int idVe = rs.getInt(1);
					int idLichChieu = rs.getInt(2);	
					String tenKhach = rs.getString(3);
					String soDienThoai = rs.getString(4);
					Double tongTien = rs.getDouble(5);
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
				statement = DBHelper.getInstance().getConnection().prepareStatement(sql);
				statement.setInt(1, id);
				ResultSet rs = statement.executeQuery();
				while (rs.next()) {
					int idVe = rs.getInt(1);
					int idLichChieu = rs.getInt(2);	
					String tenKhach = rs.getString(3);
					String soDienThoai = rs.getString(4);
					Double tongTien = rs.getDouble(5);
					return new Ve( idVe, idLichChieu, tenKhach, soDienThoai, tongTien);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public int add(Ve t) {
		String sql = "insert into Ve(idLichChieu, tenKhach, soDienThoai, tongTien) values (?,?,?,?)";
		PreparedStatement statement = null;
		try {
				statement = DBHelper.getInstance().getConnection().prepareStatement(sql);
				statement.setInt(1, t.getIdLichChieu());
				statement.setString(2, t.getTenKhach());
				statement.setString(3, t.getSoDienThoai());
				statement.setDouble(4, t.getTongTien());
				return statement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;
	}

	@Override
	public int update(Ve t) {
		return 0;
		
	}

	@Override
	public int delete(Ve t) {
		return 0;
	}
	public List<Ve> getVeByLichChieu(int id)
	{
		List<Ve> results = new ArrayList<>();
		String sql = "Select * from Ve where idLichChieu = ?";
		PreparedStatement statement = null;
		try {
				statement = DBHelper.getInstance().getConnection().prepareStatement(sql);
				statement.setInt(1, id);
				ResultSet rs = statement.executeQuery();
				while (rs.next()) {
					int idVe = rs.getInt(1);
					int idLichChieu = rs.getInt(2);	
					String tenKhach = rs.getString(3);
					String soDienThoai = rs.getString(4);
					Double tongTien = rs.getDouble(5);
					results.add(new Ve( idVe, idLichChieu, tenKhach, soDienThoai, tongTien));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return results;
	}
	public int getNewIdve()
	{
		String sql = " MAX(ve.idVe) FROM ve";
		PreparedStatement statement = null;
		try {
				statement = DBHelper.getInstance().getConnection().prepareStatement(sql);
				ResultSet rs = statement.executeQuery();
				while (rs.next()) {
					int idVe = rs.getInt(1);
				
					return idVe;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return -1;
	}
}
