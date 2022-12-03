package model.bean;

import java.sql.Date;
import java.sql.Time;

public class VeDetail {
	private int idVe;
	private String tenKhachHang;
	private String soDienThoai;
	private String tenPhongChieu;
	private Time gioChieu;
	private Date ngayChieu;
	private String tenGhe;
	public VeDetail(int idVe, String tenKhachHang, String soDienThoai, String tenPhongChieu, Time gioChieu, Date ngayChieu, String tenGhe) {
		super();
		this.tenKhachHang = tenKhachHang;
		this.soDienThoai = soDienThoai;
		this.tenPhongChieu = tenPhongChieu;
		this.gioChieu = gioChieu;
		this.ngayChieu = ngayChieu;
		this.idVe = idVe;
		this.tenGhe = tenGhe;
	}
	public String getTenGhe() {
		return tenGhe;
	}
	public void setTenGhe(String tenGhe) {
		this.tenGhe = tenGhe;
	}
	public int getIdVe() {
		return this.idVe;
	}
	public void setIdVe(int idVe) {
		this.idVe = idVe;
	}
	public String getTenKhachHang() {
		return tenKhachHang;
	}
	public void setTenKhachHang(String tenKhachHang) {
		this.tenKhachHang = tenKhachHang;
	}
	public String getSoDienThoai() {
		return soDienThoai;
	}
	public void setSoDienThoai(String soDienThoai) {
		this.soDienThoai = soDienThoai;
	}
	public String getTenPhongChieu() {
		return tenPhongChieu;
	}
	public void setTenPhongChieu(String tenPhongChieu) {
		this.tenPhongChieu = tenPhongChieu;
	}
	public Time getGioChieu() {
		return gioChieu;
	}
	public void setGioChieu(Time gioChieu) {
		this.gioChieu = gioChieu;
	}
	public Date getNgayChieu() {
		return ngayChieu;
	}
	public void setNgayChieu(Date ngayChieu) {
		this.ngayChieu = ngayChieu;
	}
}
