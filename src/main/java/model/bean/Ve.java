package model.bean;

public class Ve {
	private int idVe;
	private int idLichChieu;
	private String tenKhach;
	private String soDienThoai;
	private double tongTien;
	public Ve() {
		// TODO Auto-generated constructor stub
	}
	public Ve(int idVe, int idLichChieu, String tenKhach, String soDienThoai, double tongTien) {
		super();
		this.idVe = idVe;
		this.idLichChieu = idLichChieu;
		this.tenKhach = tenKhach;
		this.soDienThoai = soDienThoai;
		this.tongTien = tongTien;
	}
	public int getIdVe() {
		return idVe;
	}
	public void setIdVe(int idVe) {
		this.idVe = idVe;
	}
	public int getIdLichChieu() {
		return idLichChieu;
	}
	public void setIdLichChieu(int idLichChieu) {
		this.idLichChieu = idLichChieu;
	}
	public String getTenKhach() {
		return tenKhach;
	}
	public void setTenKhach(String tenKhach) {
		this.tenKhach = tenKhach;
	}
	public String getSoDienThoai() {
		return soDienThoai;
	}
	public void setSoDienThoai(String soDienThoai) {
		this.soDienThoai = soDienThoai;
	}
	public double getTongTien() {
		return tongTien;
	}
	public void setTongTien(double tongTien) {
		this.tongTien = tongTien;
	}
	
}
