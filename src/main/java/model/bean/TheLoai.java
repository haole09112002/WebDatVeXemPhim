package model.bean;

public class TheLoai {
	private int idTheLoai;
	private String tenTheLoai;
	public TheLoai() {
		// TODO Auto-generated constructor stub
	}
	public TheLoai(int idTheLoai, String tenTheLoai) {
		super();
		this.idTheLoai = idTheLoai;
		this.tenTheLoai = tenTheLoai;
	}
	public int getIdTheLoai() {
		return idTheLoai;
	}
	public void setIdTheLoai(int idTheLoai) {
		this.idTheLoai = idTheLoai;
	}
	public String getTenTheLoai() {
		return tenTheLoai;
	}
	public void setTenTheLoai(String tenTheLoai) {
		this.tenTheLoai = tenTheLoai;
	}
}
