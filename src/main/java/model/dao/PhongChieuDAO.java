package model.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.bean.PhongChieu;

public class PhongChieuDAO implements INewDAO<PhongChieu> {

	@Override
	public List<PhongChieu> getAll() {
		List<PhongChieu> results = new ArrayList<>();
		String sql = "Select * from PhongChieu";
		PreparedStatement statement = null;
			try {
				statement = DBHelper.getConnection().prepareStatement(sql);
				ResultSet rs = statement.executeQuery();
				while (rs.next()) {
					int idPhong = rs.getInt(0);
					int idRap = rs.getInt(1);
					String tenPhong = rs.getString(2);
					int soGhe = rs.getInt(3);
				 results.add(new PhongChieu(idPhong, idRap, tenPhong, soGhe));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return results;
	}

	@Override
	public PhongChieu get(int id) {
		String sql = "Select * from PhongChieu where idPhong = ?";
		PreparedStatement statement = null;
			try {
				statement = DBHelper.getConnection().prepareStatement(sql);
				statement.setInt(1, id);
				ResultSet rs = statement.executeQuery();
				while (rs.next()) {
					int idPhong = rs.getInt(0);
					int idRap = rs.getInt(1);
					String tenPhong = rs.getString(2);
					int soGhe = rs.getInt(3);
				 return new PhongChieu(idPhong, idRap, tenPhong, soGhe);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public void add(PhongChieu t) {
		String sql = "insert into PhongChieu(idRap, tenPhong, soGhe) values(?,?,?)";
		PreparedStatement statement = null;
		try {
			statement = DBHelper.getConnection().prepareStatement(sql);
			statement.setInt(1, t.getIdRap());
			statement.setString(2, t.getTenPhong());
			statement.setInt(3, t.getSoGhe());
			statement.executeUpdate();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		
	}

	@Override
	public void update(PhongChieu t) {
		String sql = "update  PhongChieu set idRap = ?, tenPhong = ?, soGhe = ? where idPhong = ?";
		PreparedStatement statement = null;
		try {
			statement = DBHelper.getConnection().prepareStatement(sql);
			statement.setInt(1, t.getIdRap());
			statement.setString(2, t.getTenPhong());
			statement.setInt(3, t.getSoGhe());
			statement.setInt(4, t.getIdPhong());
			statement.executeUpdate();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		
	}

	@Override
	public void delete(PhongChieu t) {
		String sql = "delete from   PhongChieu  where idPhong = ?";
		PreparedStatement statement = null;
		try {
			statement = DBHelper.getConnection().prepareStatement(sql);
			statement.setInt(1, t.getIdPhong());
			statement.executeUpdate();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		
	}

}
