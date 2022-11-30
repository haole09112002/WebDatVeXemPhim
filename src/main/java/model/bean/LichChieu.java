package model.bean;

import java.sql.Date;

public class LichChieu {
	private int idLichChieu;
	private int idPhim;
	private int idPhong;
	private Date ngayChieu;
	private int idGioChieu;
	private double giaVe;
	public LichChieu() {
		// TODO Auto-generated constructor stub
	}
	
	public LichChieu(int idLichChieu, int idPhim, int idPhong, Date ngayChieu, int idGioChieu, double giaVe) {
		super();
		this.idLichChieu = idLichChieu;
		this.idPhim = idPhim;
		this.idPhong = idPhong;
		this.ngayChieu = ngayChieu;
		this.idGioChieu = idGioChieu;
		this.giaVe = giaVe;
	}

	public int getIdLichChieu() {
		return idLichChieu;
	}
	public void setIdLichChieu(int idLichChieu) {
		this.idLichChieu = idLichChieu;
	}
	public int getIdPhim() {
		return idPhim;
	}
	public void setIdPhim(int idPhim) {
		this.idPhim = idPhim;
	}
	public int getIdPhong() {
		return idPhong;
	}
	public void setIdPhong(int idPhong) {
		this.idPhong = idPhong;
	}
	public Date getNgayChieu() {
		return ngayChieu;
	}
	public void setNgayChieu(Date ngayChieu) {
		this.ngayChieu = ngayChieu;
	}
	public int getIdGioChieu() {
		return idGioChieu;
	}
	public void setIdGioChieu(int idGioChieu) {
		this.idGioChieu = idGioChieu;
	}
	public double getGiaVe() {
		return giaVe;
	}
	public void setGiaVe(double giaVe) {
		this.giaVe = giaVe;
	}
}
