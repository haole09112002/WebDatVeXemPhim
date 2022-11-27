package model.bean;

public class PhongChieu {
	private int idPhong;
	private int idRap;
	private String tenPhong;
	private int soGhe;
	public PhongChieu() {
		// TODO Auto-generated constructor stub
	}
	public PhongChieu(int idPhong, int idRap, String tenPhong, int soGhe) {
		super();
		this.idPhong = idPhong;
		this.idRap = idRap;
		this.tenPhong = tenPhong;
		this.soGhe = soGhe;
	}
	public int getIdPhong() {
		return idPhong;
	}
	public void setIdPhong(int idPhong) {
		this.idPhong = idPhong;
	}
	public int getIdRap() {
		return idRap;
	}
	public void setIdRap(int idRap) {
		this.idRap = idRap;
	}
	public String getTenPhong() {
		return tenPhong;
	}
	public void setTenPhong(String tenPhong) {
		this.tenPhong = tenPhong;
	}
	public int getSoGhe() {
		return soGhe;
	}
	public void setSoGhe(int soGhe) {
		this.soGhe = soGhe;
	}
	
}
