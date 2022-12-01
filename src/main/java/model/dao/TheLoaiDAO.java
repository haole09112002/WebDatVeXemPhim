package model.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.bean.TheLoai;

public class TheLoaiDAO implements INewDAO<TheLoai> {

	@Override
	public List<TheLoai> getAll() {
		List<TheLoai> results = new ArrayList<>();
		String sql = "Select * from TheLoai";
		PreparedStatement statement = null;
		try {
			statement = DBHelper.getInstance().getConnection().prepareStatement(sql);
			ResultSet rs = statement.executeQuery();
			while (rs.next()) {
				int idTheLoai = rs.getInt(1);
				String tenTheLoai = rs.getString(2);
				results.add(new TheLoai(idTheLoai, tenTheLoai));
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
			statement = DBHelper.getInstance().getConnection().prepareStatement(sql);
			statement.setInt(1, id);
			ResultSet rs = statement.executeQuery();
			while (rs.next()) {
				int idTheLoai = rs.getInt(1);
				String tenTheLoai = rs.getString(2);
				return new TheLoai(idTheLoai, tenTheLoai);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public int add(TheLoai t) {
		String sql = "insert into TheLoai(tenTheLoai) values (?)";
		PreparedStatement statement = null;
		try {
			statement =DBHelper.getInstance().getConnection().prepareStatement(sql);
			statement.setString(1, t.getTenTheLoai());
			return statement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;

	}

	@Override
	public int update(TheLoai t) {
		String sql = "update TheLoai set tenTheLoai = ? where idTheLoai = ?";
		PreparedStatement statement = null;
		try {
			statement = DBHelper.getInstance().getConnection().prepareStatement(sql);
			statement.setString(1, t.getTenTheLoai());
			statement.setInt(2, t.getIdTheLoai());
			return statement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;

	}

	@Override
	public int delete(TheLoai t) {
		return 0;

	}

}
