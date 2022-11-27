package model.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DBHelper {
	private static DBHelper instance;
	private static Connection conn;
	private final String url = "jdbc:mysql://localhost:3306/rapchieuphim";
	private final String username = "root";
	private final String password = "";

	private DBHelper() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(url, username, password);
		} catch (Exception e) {

		}
	}

	public static DBHelper getInstance() {
		if (instance == null)
			instance = new DBHelper();
		return instance;
	}

	public static Connection getConnection() {
		return conn;
	}

	public static ResultSet query(String sql) {
		try {
			PreparedStatement statement = conn.prepareStatement(sql);
			ResultSet rs = statement.executeQuery();
			return rs;
		} catch (Exception e) {
			return null;
		}
	}

	public static int excute(String sql) {
		try {
			PreparedStatement statement = conn.prepareStatement(sql);
			return statement.executeUpdate();
		} catch (Exception e) {
			return 0;
		}
	}
}
	
		
	
