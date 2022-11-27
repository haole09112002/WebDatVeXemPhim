package model.bean;

import java.sql.Time;


public class GioChieu {
	private int idGioChieu;
	private Time gioChieu;
	private int idRap;
	public GioChieu() {
		// TODO Auto-generated constructor stub
	}
	public GioChieu(int idGioChieu, Time gioChieu, int idRap) {
		super();
		this.idGioChieu = idGioChieu;
		this.gioChieu = gioChieu;
		this.idRap = idRap;
	}

	public int getIdGioChieu() {
		return idGioChieu;
	}
	public void setIdGioChieu(int idGioChieu) {
		this.idGioChieu = idGioChieu;
	}
	public Time getGioChieu() {
		return gioChieu;
	}
	public void setGioChieu(Time gioChieu) {
		this.gioChieu = gioChieu;
	}
	public int getIdRap() {
		return idRap;
	}
	public void setIdRap(int idRap) {
		this.idRap = idRap;
	}
	
	
}
