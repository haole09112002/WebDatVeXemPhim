package model.bean;

public class GhePhongChieu {
	private int idGhe;
	private String tenGhe;
	private int trangThai;
	private int idPhong;
	public GhePhongChieu() {
	}
	public GhePhongChieu(int idGhe, String tenGhe, int trangThai, int idPhong) {
		this.idGhe = idGhe;
		this.tenGhe = tenGhe;
		this.trangThai = trangThai;
		this.idPhong = idPhong;
	}
	public int getIdGhe() {
		return idGhe;
	}
	public void setIdGhe(int idGhe) {
		this.idGhe = idGhe;
	}
	public String getTenGhe() {
		return tenGhe;
	}
	public void setTenGhe(String tenGhe) {
		this.tenGhe = tenGhe;
	}
	public int getTrangThai() {
		return trangThai;
	}
	public void setTrangThai(int trangThai) {
		this.trangThai = trangThai;
	}
	public int getIdPhong() {
		return idPhong;
	}
	public void setIdPhong(int idPhong) {
		this.idPhong = idPhong;
	}
	
	
}
