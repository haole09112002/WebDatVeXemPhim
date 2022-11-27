package model.bean;

public class Rap {
	private int idRap;
	private String tenRap;
	private String diaChi;
	private int soPhong;
	public Rap() {
		// TODO Auto-generated constructor stub
	}
	public Rap(int idRap, String tenRap, String diaChi, int soPhong) {
		super();
		this.idRap = idRap;
		this.tenRap = tenRap;
		this.diaChi = diaChi;
		this.soPhong = soPhong;
	}
	public int getIdRap() {
		return idRap;
	}
	public void setIdRap(int idRap) {
		this.idRap = idRap;
	}
	public String getTenRap() {
		return tenRap;
	}
	public void setTenRap(String tenRap) {
		this.tenRap = tenRap;
	}
	public String getDiaChi() {
		return diaChi;
	}
	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}
	public int getSoPhong() {
		return soPhong;
	}
	public void setSoPhong(int soPhong) {
		this.soPhong = soPhong;
	}
	
}
