package model.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.bean.Rap;

public class RapDAO implements INewDAO<Rap> {

	@Override
	public List<Rap> getAll() {
		List<Rap> results = new ArrayList<>();
		String sql = "Select * from Rap";
		PreparedStatement statement = null;
			try {
				statement = DBHelper.getConnection().prepareStatement(sql);
				ResultSet rs = statement.executeQuery();
				while (rs.next()) {
					int idRap = rs.getInt(0);
					String tenRap = rs.getString(1);
					String diaChi = rs.getString(2);
					int soPhong = rs.getInt(3);
				 results.add(new Rap( idRap, tenRap, diaChi, soPhong));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return results;
	}

	@Override
	public Rap get(int id) {
		String sql = "Select * from Rap where idRap = ?";
		PreparedStatement statement = null;
			try {
				statement = DBHelper.getConnection().prepareStatement(sql);
				statement.setInt(1, id);
				ResultSet rs = statement.executeQuery();
				while (rs.next()) {
					int idRap = rs.getInt(0);
					String tenRap = rs.getString(1);
					String diaChi = rs.getString(2);
					int soPhong = rs.getInt(3);
					return  new Rap( idRap, tenRap, diaChi, soPhong);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public void add(Rap t) {
		String sql = "insert into Rap(tenRap, diaChi, soPhong) values (?, ? ?)";
		PreparedStatement statement = null;
			try {
				statement = DBHelper.getConnection().prepareStatement(sql);
				statement.setString(1, t.getTenRap());
				statement.setString(2, t.getDiaChi());
				statement.setInt(3, t.getSoPhong());
				statement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void update(Rap t) {
		String sql = "update  Rap set  tenRap = ?, diaChi = ?, soPhong = ? where idRap = ?)";
		PreparedStatement statement = null;
			try {
				statement = DBHelper.getConnection().prepareStatement(sql);
				statement.setString(1, t.getTenRap());
				statement.setString(2, t.getDiaChi());
				statement.setInt(3, t.getSoPhong());
				statement.setInt(4, t.getIdRap());
				statement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

	@Override
	public void delete(Rap t) {
		
		
	}

}
