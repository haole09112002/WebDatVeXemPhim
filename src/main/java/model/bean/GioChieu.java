package model.bean;

import java.sql.Time;


public class GioChieu {
	private int idGioChieu;
	private Time gioChieu;
	public GioChieu() {
		// TODO Auto-generated constructor stub
	}
	public GioChieu(int idGioChieu, Time gioChieu) {
		super();
		this.idGioChieu = idGioChieu;
		this.gioChieu = gioChieu;
	
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

	
	
}
