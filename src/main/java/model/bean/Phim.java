package model.bean;

import java.sql.Date;

public class Phim {
	private int idPhim;
	private String tenPhim;
	private String moTa;
	private String thoiLuong;
	private String nhaSanXuat;
	private String doTuoi;
	private String daoDien;
	private Date ngayKhoiChieu;
	private Date ngayKetThuc;
	private String linkTrailer;
	private String linkAnh;
	private int idTheLoai;
	private String dienVien;
	private String quocGia;
	
	
	public Phim() {
		
	}
	
	public Phim(int idPhim, String tenPhim, String moTa, String thoiLuong, String nhaSanXuat, String doTuoi, String daoDien,
			Date ngayKhoiChieu, Date ngayKetThuc, String linkTrailer, String linkAnh, int idTheLoai, String dienVien,
			String quocGia) {
		this.idPhim = idPhim;
		this.tenPhim = tenPhim;
		this.moTa = moTa;
		this.thoiLuong = thoiLuong;
		this.nhaSanXuat = nhaSanXuat;
		this.doTuoi = doTuoi;
		this.daoDien = daoDien;
		this.ngayKhoiChieu = ngayKhoiChieu;
		this.ngayKetThuc = ngayKetThuc;
		this.linkTrailer = linkTrailer;
		this.linkAnh = linkAnh;
		this.idTheLoai = idTheLoai;
		this.dienVien = dienVien;
		this.quocGia = quocGia;
	}

	public int getIdPhim() {
		return idPhim;
	}
	public void setIdPhim(int idPhim) {
		this.idPhim = idPhim;
	}
	public String getTenPhim() {
		return tenPhim;
	}
	public void setTenPhim(String tenPhim) {
		this.tenPhim = tenPhim;
	}
	public String getMoTa() {
		return moTa;
	}
	public void setMoTa(String moTa) {
		this.moTa = moTa;
	}
	public String getThoiLuong() {
		return thoiLuong;
	}
	public void setThoiLuong(String thoiLuong) {
		this.thoiLuong = thoiLuong;
	}
	public String getNhaSanXuat() {
		return nhaSanXuat;
	}
	public void setNhaSanXuat(String nhaSanXuat) {
		this.nhaSanXuat = nhaSanXuat;
	}
	public String getDoTuoi() {
		return doTuoi;
	}
	public void setDoTuoi(String doTuoi) {
		this.doTuoi = doTuoi;
	}
	public String getDaoDien() {
		return daoDien;
	}
	public void setDaoDien(String daoDien) {
		this.daoDien = daoDien;
	}
	public Date getNgayKhoiChieu() {
		return ngayKhoiChieu;
	}
	public void setNgayKhoiChieu(Date ngayKhoiChieu) {
		this.ngayKhoiChieu = ngayKhoiChieu;
	}
	public Date getNgayKetThuc() {
		return ngayKetThuc;
	}
	public void setNgayKetThuc(Date ngayKetThuc) {
		this.ngayKetThuc = ngayKetThuc;
	}
	public String getLinkTrailer() {
		return linkTrailer;
	}
	public void setLinkTrailer(String linkTrailer) {
		this.linkTrailer = linkTrailer;
	}
	public String getLinkAnh() {
		return linkAnh;
	}
	public void setLinkAnh(String linkAnh) {
		this.linkAnh = linkAnh;
	}
	public int getIdTheLoai() {
		return idTheLoai;
	}
	public void setIdTheLoai(int idTheLoai) {
		this.idTheLoai = idTheLoai;
	}
	public String getDienVien() {
		return dienVien;
	}
	public void setDienVien(String dienVien) {
		this.dienVien = dienVien;
	}
	public String getQuocGia() {
		return quocGia;
	}
	public void setQuocGia(String quocGia) {
		this.quocGia = quocGia;
	}
	
	
}
