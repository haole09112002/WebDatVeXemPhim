package model.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import java.util.ArrayList;
import java.util.List;


import model.bean.GhePhongChieu;


public class GhePhongChieuDAO implements INewDAO<GhePhongChieu> {

	@Override
	public List<GhePhongChieu> getAll() {
		
		return null;
	}

	@Override
	public GhePhongChieu get(int id) {
		String sql = "Select * from GhePhongChieu where idGhe = ?";
		PreparedStatement statement = null;
		try {
			statement = DBHelper.getInstance().getConnection().prepareStatement(sql);
			statement.setInt(1, id);
			ResultSet rs = statement.executeQuery();
			while (rs.next()) {
				int idGhe = rs.getInt(1);
				String tenGhe = rs.getString(2);
				int trangThai = rs.getInt(3);
				int idPhong = rs.getInt(4);
				return new GhePhongChieu(idGhe, tenGhe, trangThai, idPhong);
			}
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		return null;
	}

	@Override
	public int add(GhePhongChieu t) {
		String sql = "insert into GhePhongChieu(tenGhe, trangThai, idPhong) values (?,?,?)";
		try {
			PreparedStatement statement = DBHelper.getInstance().getConnection().prepareStatement(sql);
			statement.setString(1, t.getTenGhe());
			statement.setInt(2, t.getTrangThai());
			statement.setInt(3, t.getIdPhong());
			return statement.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;
	}

	@Override
	public int update(GhePhongChieu t) {
		String sql = "update GhePhongChieu set tenGhe = ?, trangThai = ?";
		try {
			PreparedStatement statement = DBHelper.getInstance().getConnection().prepareStatement(sql);
			statement.setString(1, t.getTenGhe());
			statement.setInt(2, t.getTrangThai());
			return statement.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;
	}

	@Override
	public int delete(GhePhongChieu t) {
		// TODO Auto-generated method stub
		return 0;
	}
	
	public List<GhePhongChieu> getByVe(int idVe)
	{
		List<GhePhongChieu> results = new ArrayList<>();
		String sql = "SELECT * FROM ghephongchieu g, chitietve ct WHERE g.idGhe = ct.idGhe && ct.idVe = ?";
		PreparedStatement statement = null;
			try {
				statement = DBHelper.getInstance().getConnection().prepareStatement(sql);
				statement.setInt(1, idVe);
				ResultSet rs = statement.executeQuery();
				while (rs.next()) {
					int idGhe = rs.getInt(1);
					String tenGhe = rs.getString(2);
					int trangThai = rs.getInt(3);
					int idPhong = rs.getInt(4);
				 results.add( new  GhePhongChieu(idGhe, tenGhe, trangThai, idPhong));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return results;
		
		
	}
	public List<GhePhongChieu> getByPhongChieu(int idPhong)
	{
		List<GhePhongChieu> results = new ArrayList<>();
		String sql = "SELECT * FROM ghephongchieu g, phongchieu pc WHERE g.idPhong = pc.idPhong && g.idPhong = ?";
		PreparedStatement statement = null;
		try {
			statement = DBHelper.getInstance().getConnection().prepareStatement(sql);
			statement.setInt(1, idPhong);
			ResultSet rs = statement.executeQuery();
			while (rs.next()) {
				int idGhe = rs.getInt(1);
				String tenGhe = rs.getString(2);
				int trangThai = rs.getInt(3);
				int idP = rs.getInt(4);
			 results.add( new  GhePhongChieu(idGhe, tenGhe, trangThai, idP));
		}
	} catch (SQLException e) {
		e.printStackTrace();
	}
	return results;
	}

}
