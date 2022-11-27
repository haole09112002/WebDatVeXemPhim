package model.bean;

public class Admin {
	private int idAdmin;
	private String ten;
	private String username;
	private String password;
	
	public Admin() {
		
	}
	
	public Admin(int idAdmin, String ten, String username, String password) {
		this.idAdmin = idAdmin;
		this.ten = ten;
		this.username = username;
		this.password = password;
	}

	public int getIdAdmin() {
		return idAdmin;
	}
	public void setIdAdmin(int idAdmin) {
		this.idAdmin = idAdmin;
	}
	public String getTen() {
		return ten;
	}
	public void setTen(String ten) {
		this.ten = ten;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
}
