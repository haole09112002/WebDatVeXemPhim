package model.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.bean.TheLoai;

public class TheLoaiDAO implements INewDAO<TheLoai>{

	@Override
	public List<TheLoai> getAll() {
		List<TheLoai> results = new ArrayList<>();
		String sql = "Select * from TheLoai";
		PreparedStatement statement = null;
		try {
				statement = DBHelper.getConnection().prepareStatement(sql);
				ResultSet rs = statement.executeQuery();
				while (rs.next()) {
					int idTheLoai = rs.getInt(0);
					String tenTheLoai = rs.getString(1);	
					results.add(new TheLoai( idTheLoai, tenTheLoai));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return results;
	}

	@Override
	public TheLoai get(int id) {
		String sql = "Select * from TheLoai where idTheLoai = ?";
		PreparedStatement statement = null;
		try {
				statement = DBHelper.getConnection().prepareStatement(sql);
				statement.setInt(1, id);
				ResultSet rs = statement.executeQuery();
				while (rs.next()) {
					int idTheLoai = rs.getInt(0);
					String tenTheLoai = rs.getString(1);	
					return new TheLoai( idTheLoai, tenTheLoai);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public void add(TheLoai t) {
		String sql = "insert into TheLoai(tenTheLoai) values (?)";
		PreparedStatement statement = null;
			try {
				statement = DBHelper.getConnection().prepareStatement(sql);
				statement.setString(1, t.getTenTheLoai());
				statement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

	@Override
	public void update(TheLoai t) {
		String sql = "update TheLoai set tenTheLoai = ? where idTheLoai = ?";
		PreparedStatement statement = null;
			try {
				statement = DBHelper.getConnection().prepareStatement(sql);
				statement.setString(1, t.getTenTheLoai());
				statement.setInt(2, t.getIdTheLoai());
				statement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

	@Override
	public void delete(TheLoai t) {
		
		
	}

}
