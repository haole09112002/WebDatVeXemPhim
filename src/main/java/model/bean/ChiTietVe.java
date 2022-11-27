package model.bean;

public class ChiTietVe {
	private int idVe;
	private int idGhe;
	public ChiTietVe() {
		
	}
	public ChiTietVe(int idVe, int idGhe) {
		this.idVe = idVe;
		this.idGhe = idGhe;
	}
	public int getIdVe() {
		return idVe;
	}
	public void setIdVe(int idVe) {
		this.idVe = idVe;
	}
	public int getIdGhe() {
		return idGhe;
	}
	public void setIdGhe(int idGhe) {
		this.idGhe = idGhe;
	}
	
	
}
