package model.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.bean.ChiTietVe;

public class ChiTietVeDAO implements INewDAO<ChiTietVe> {

	@Override
	public List<ChiTietVe> getAll() {
		List<ChiTietVe> results = new ArrayList<>();
		String sql = "Select * from ChiTietVe";
		PreparedStatement statement = null;
		try {
			statement = DBHelper.getConnection().prepareStatement(sql);
			ResultSet rs = statement.executeQuery();
			while (rs.next()) {
				int idVe = rs.getInt(0);
				int idGhe = rs.getInt(1);
				results.add(new ChiTietVe(idVe, idGhe));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return results;

	}

	@Override
	public ChiTietVe get(int id) {
		return null;
	}
	public ChiTietVe getByIdId(int idVe, int idGhe)
	{

		String sql = "Select * from ChiTietVe where idVe = ? and idGhe = ?";
		PreparedStatement statement = null;
		try {
			statement = DBHelper.getConnection().prepareStatement(sql);
			statement.setInt(1, idVe);
			statement.setInt(2, idGhe);
			ResultSet rs = statement.executeQuery();
			while (rs.next()) {
				int idV = rs.getInt(0);
				int idG = rs.getInt(1);
				return new ChiTietVe(idV, idG);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	public List<ChiTietVe>  getByIdVe(int idVe)
	{
		List<ChiTietVe> results = new ArrayList<>();
		String sql = "Select * from ChiTietVe where idVe = ? ";
		PreparedStatement statement = null;
		try {
			statement = DBHelper.getConnection().prepareStatement(sql);
			statement.setInt(1, idVe);
		
			ResultSet rs = statement.executeQuery();
			while (rs.next()) {
				int idV = rs.getInt(0);
				int idG = rs.getInt(1);
				results.add( new ChiTietVe(idV, idG));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return results;
	}

	@Override
	public int add(ChiTietVe t) {
		String sql = "insert into ChiTietVe(idVe, idGhe) values (?, ?)";
		PreparedStatement statement = null;
		try {
			statement = DBHelper.getConnection().prepareStatement(sql);
			statement.setInt(1, t.getIdVe());
			statement.setInt(2, t.getIdGhe());
			return statement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			return 0;
		}

	}

	@Override
	public int update(ChiTietVe t) {
		return 0;
	}

	@Override
	public int delete(ChiTietVe t) {
		return 0;
	}

}
