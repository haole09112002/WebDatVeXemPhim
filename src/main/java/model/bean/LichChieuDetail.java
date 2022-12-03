package model.bean;

import java.sql.Date;
import java.sql.Time;

public class LichChieuDetail {
	private int idLichChieu;
	private int idPhim;
	private String tenPhim;
	private int idPhong;
	private String tenPhong;
	private Date ngayChieu;
	private int idGioChieu;
	private Time gioChieu;
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
	public int getIdGioChieu() {
		return idGioChieu;
	}
	public void setIdGioChieu(int idGioChieu) {
		this.idGioChieu = idGioChieu;
	}
	private double giaVe;
	
	public LichChieuDetail(int idLichChieu, int idPhim, String tenPhim, int idPhong, String tenPhong, Date ngayChieu,
			int idGioChieu, Time gioChieu, double giaVe) {
		super();
		this.idLichChieu = idLichChieu;
		this.idPhim = idPhim;
		this.tenPhim = tenPhim;
		this.idPhong = idPhong;
		this.tenPhong = tenPhong;
		this.ngayChieu = ngayChieu;
		this.idGioChieu = idGioChieu;
		this.gioChieu = gioChieu;
		this.giaVe = giaVe;
	}
	public int getIdLichChieu() {
		return idLichChieu;
	}
	public void setIdLichChieu(int idLichChieu) {
		this.idLichChieu = idLichChieu;
	}
	public String getTenPhim() {
		return tenPhim;
	}
	public void setTenPhim(String tenPhim) {
		this.tenPhim = tenPhim;
	}
	public String getTenPhong() {
		return tenPhong;
	}
	public void setTenPhong(String tenPhong) {
		this.tenPhong = tenPhong;
	}
	public Date getNgayChieu() {
		return ngayChieu;
	}
	public void setNgayChieu(Date ngayChieu) {
		this.ngayChieu = ngayChieu;
	}
	public Time getGioChieu() {
		return gioChieu;
	}
	public void setGioChieu(Time gioChieu) {
		this.gioChieu = gioChieu;
	}
	public double getGiaVe() {
		return giaVe;
	}
	public void setGiaVe(double giaVe) {
		this.giaVe = giaVe;
	}
}
