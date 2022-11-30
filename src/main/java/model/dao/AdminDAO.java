package model.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.bean.Admin;

public class AdminDAO implements INewDAO<Admin>{

	@Override
	public List<Admin> getAll() {
		List<Admin> results = new ArrayList<>();
		String sql = "Select * from Admin";
		PreparedStatement statement = null;
			try {
				statement = DBHelper.getConnection().prepareStatement(sql);
				ResultSet rs = statement.executeQuery();
				while (rs.next()) {
					int idAdmin = rs.getInt(0);
					String ten = rs.getString(1);
					String username = rs.getString(2);
					String password = rs.getString(3);
				 results.add(new Admin(idAdmin, ten, username, password));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return results;
	}

	@Override
	public Admin get(int id) {
		String sql = "Select * from Admin where idAdmin = ?";
		PreparedStatement statement = null;
			try {
				statement = DBHelper.getConnection().prepareStatement(sql);
				statement.setInt(1, id);
				ResultSet rs = statement.executeQuery();
				while (rs.next()) {
					int idAdmin = rs.getInt(0);
					String ten = rs.getString(1);
					String username = rs.getString(2);
					String password = rs.getString(3);
				 return new Admin(idAdmin, ten, username, password);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public int add(Admin admin) {
		String sql = "insert into Admin(ten, username, password) values(?,?,?)";
		PreparedStatement statement = null;
		try {
			statement = DBHelper.getConnection().prepareStatement(sql);
			statement.setString(1, admin.getTen());
			statement.setString(2, admin.getUsername());
			statement.setString(3, admin.getPassword());
			return statement.executeUpdate();
		} catch (SQLException e1) {
			e1.printStackTrace();
			return 0;
		}
	}

	@Override
	public int update(Admin admin) {
		String sql = "update  Admin set ten = ?, username = ?, password = ? where idAdmin = ?";
		PreparedStatement statement = null;
		try {
			statement = DBHelper.getConnection().prepareStatement(sql);
			statement.setString(1, admin.getTen());
			statement.setString(2, admin.getUsername());
			statement.setString(3, admin.getPassword());
			statement.setInt(3, admin.getIdAdmin());
			return statement.executeUpdate();
		} catch (SQLException e1) {
			e1.printStackTrace();
			return 0;
		}
		
	}

	@Override
	public int delete(Admin admin) {
		String sql = "delete from  Admin  where idAdmin = ?";
		PreparedStatement statement = null;
		try {
			statement = DBHelper.getConnection().prepareStatement(sql);
			statement.setInt(1, admin.getIdAdmin());
			return statement.executeUpdate();
		} catch (SQLException e1) {
			e1.printStackTrace();
			return 0;
		}
		
	}
	public Admin checkLogin(String username, String password)
	{
		String sql = "Select * from Admin where username = ? and password = ?";
		PreparedStatement statement = null;
			try {
				statement = DBHelper.getConnection().prepareStatement(sql);
				statement.setString(1, username);
				statement.setString(2, password);
				ResultSet rs = statement.executeQuery();
				while (rs.next()) {
					int idAdmin = rs.getInt(0);
					String ten = rs.getString(1);
				 return new Admin(idAdmin, ten, username, password);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	
}
