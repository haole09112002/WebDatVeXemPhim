package model.dao;

import java.sql.Date;
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
				statement = DBHelper.getInstance().getConnection().prepareStatement(sql);
				ResultSet rs = statement.executeQuery();
				while (rs.next()) {
					int idPhong = rs.getInt(1);
					String tenPhong = rs.getString(2);
					int soGhe = rs.getInt(3);
				 results.add(new PhongChieu(idPhong, tenPhong, soGhe));
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
				statement = DBHelper.getInstance().getConnection().prepareStatement(sql);
				statement.setInt(1, id);
				ResultSet rs = statement.executeQuery();
				while (rs.next()) {
					int idPhong = rs.getInt(1);
					String tenPhong = rs.getString(2);
					int soGhe = rs.getInt(3);
				 return new PhongChieu(idPhong, tenPhong, soGhe);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public int add(PhongChieu t) {
		String sql = "insert into PhongChieu( tenPhong, soGhe) values(?,?)";
		PreparedStatement statement = null;
		try {
			statement = DBHelper.getInstance().getConnection().prepareStatement(sql);
		
			statement.setString(1, t.getTenPhong());
			statement.setInt(2, t.getSoGhe());
			return statement.executeUpdate();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		return 0;
		
	}

	@Override
	public int update(PhongChieu t) {
		String sql = "update  PhongChieu set  tenPhong = ?, soGhe = ? where idPhong = ?";
		PreparedStatement statement = null;
		try {
			statement = DBHelper.getInstance().getConnection().prepareStatement(sql);
		
			statement.setString(1, t.getTenPhong());
			statement.setInt(2, t.getSoGhe());
			statement.setInt(3, t.getIdPhong());
			return statement.executeUpdate();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		return 0;
		
	}

	@Override
	public int delete(PhongChieu t) {
		String sql = "delete from   PhongChieu  where idPhong = ?";
		PreparedStatement statement = null;
		try {
			statement = DBHelper.getInstance().getConnection().prepareStatement(sql);
			statement.setInt(1, t.getIdPhong());
			return statement.executeUpdate();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		return 0;
		
	}
	public PhongChieu getPhongChieuByPhimNgayGio(int idPhim, Date ngay, int idGio)
	{
		String sql = "SELECT phongchieu.* FROM phongchieu INNER JOIN lichchieu ON lichchieu.idPhong = phongchieu.idPhong "
				+ "WHERE lichchieu.ngaychieu = ? && lichchieu.idPhim = ? && lichchieu.idGioChieu = ?";
		PreparedStatement statement = null;
			try {
				statement = DBHelper.getInstance().getConnection().prepareStatement(sql);
				statement.setDate(1, ngay);
				statement.setInt(2, idPhim);
				statement.setInt(3, idGio);
				ResultSet rs = statement.executeQuery();
				while (rs.next()) {
					int idPhong = rs.getInt(1);
					String tenPhong = rs.getString(2);
					int soGhe = rs.getInt(3);
				 return new PhongChieu(idPhong, tenPhong, soGhe);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

}
