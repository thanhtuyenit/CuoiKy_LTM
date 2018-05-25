package model.bean;

public class Vacxin {
	int maVacxin;
	String tenVacxin;
	int soMui;
	String moTa;
	double giaVacxin;
	String tenHang;

	public Vacxin() {
		super();
	}

	public Vacxin(int maVacxin, String tenVacxin, int soMui, String moTa, double giaVacxin, String tenHang) {
		super();
		this.maVacxin = maVacxin;
		this.tenVacxin = tenVacxin;
		this.soMui = soMui;
		this.moTa = moTa;
		this.giaVacxin = giaVacxin;
		this.tenHang = tenHang;
	}

	public int getMaVacxin() {
		return maVacxin;
	}

	public void setMaVacxin(int maVacxin) {
		this.maVacxin = maVacxin;
	}

	public String getTenVacxin() {
		return tenVacxin;
	}

	public void setTenVacxin(String tenVacxin) {
		this.tenVacxin = tenVacxin;
	}

	public int getSoMui() {
		return soMui;
	}

	public void setSoMui(int soMui) {
		this.soMui = soMui;
	}

	public String getMoTa() {
		return moTa;
	}

	public void setMoTa(String moTa) {
		this.moTa = moTa;
	}

	public double getGiaVacxin() {
		return giaVacxin;
	}

	public void setGiaVacxin(double giaVacxin) {
		this.giaVacxin = giaVacxin;
	}

	public String getTenHang() {
		return tenHang;
	}

	public void setTenHang(String tenHang) {
		this.tenHang = tenHang;
	}

	@Override
	public String toString() {
		return "Vacxin [maVacxin=" + maVacxin + ", tenVacxin=" + tenVacxin + ", soMui=" + soMui + ", moTa=" + moTa
				+ ", giaVacxin=" + giaVacxin + ", tenHang=" + tenHang + "]";
	}

}
