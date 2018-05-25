package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import library.ConnectMySQLDBLibrary;
import model.bean.Vacxin;

public class VacxinDAO {
	private Connection conn;
	private PreparedStatement pst;
	private Statement st;
	private ResultSet rs;
	private ConnectMySQLDBLibrary connectMySQLDBLibrary;

	public VacxinDAO() {
		connectMySQLDBLibrary = new ConnectMySQLDBLibrary();
	}

	public ArrayList<Vacxin> getListVacxin() {
		ArrayList<Vacxin> listVacxin = new ArrayList<>();
		conn = connectMySQLDBLibrary.getConnectMySQL();
		String sql = "SELECT * FROM vacxin";
		try {
			st = conn.createStatement();
			rs = st.executeQuery(sql);
			while (rs.next()) {
				Vacxin objVacxin = new Vacxin(rs.getInt("mavacxin"), rs.getString("tenvacxin"), rs.getInt("somui"),
						rs.getString("mota"), rs.getDouble("giavacxin"), rs.getString("tenhang"));
				listVacxin.add(objVacxin);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return listVacxin;
	}

	public Vacxin findVacxinByMaVacxin(int maVacxin) {
		conn = connectMySQLDBLibrary.getConnectMySQL();
		Vacxin objVacxin = null;
		String sql = "SELECT * FROM vacxin WHERE mavacxin = ?";
		try {
			pst = conn.prepareStatement(sql);
			pst.setInt(1, maVacxin);
			rs = pst.executeQuery();
			if (rs.next()) {
				objVacxin = new Vacxin(rs.getInt("mavacxin"), rs.getString("tenvacxin"), rs.getInt("somui"),
						rs.getString("mota"), rs.getDouble("giavacxin"), rs.getString("tenhang"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				pst.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return objVacxin;
	}

	public int editVacxin(Vacxin objVacxin) {
		int result = 0;
		conn = connectMySQLDBLibrary.getConnectMySQL();
		String sql = "UPDATE vacxin SET tenvacxin = ? ,somui = ? ,mota = ?, giavacxin = ?,tenhang = ? WHERE mavacxin = ?";
		try {
			pst = conn.prepareStatement(sql);
			pst.setString(1, objVacxin.getTenVacxin());
			pst.setInt(2, objVacxin.getSoMui());
			pst.setString(3, objVacxin.getMoTa());
			pst.setDouble(4, objVacxin.getGiaVacxin());
			pst.setString(5, objVacxin.getTenHang());
			pst.setInt(6, objVacxin.getMaVacxin());
			result = pst.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				pst.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return result;
	}

	public int addVacxin(Vacxin objVacxin) {
		int result = 0;
		conn = connectMySQLDBLibrary.getConnectMySQL();
		String sql = "INSERT INTO vacxin(tenvacxin,somui,mota,giavacxin,tenhang) VALUE (?,?,?,?,?)";
		try {
			pst = conn.prepareStatement(sql);
			pst.setString(1, objVacxin.getTenVacxin());
			pst.setInt(2, objVacxin.getSoMui());
			pst.setString(3, objVacxin.getMoTa());
			pst.setDouble(4, objVacxin.getGiaVacxin());
			pst.setString(5, objVacxin.getTenHang());
			result = pst.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				pst.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return result;
	}

	public ArrayList<Vacxin> getUserByTenVacxin(String keyword) {
		ArrayList<Vacxin> listVacxinSearch = new ArrayList<>();
		conn = connectMySQLDBLibrary.getConnectMySQL();
		String sql = "SELECT * FROM vacxin WHERE tenvacxin LIKE ?";
		try {
			pst = conn.prepareStatement(sql);
			pst.setString(1, keyword);
			rs = pst.executeQuery();
			while (rs.next()) {
				Vacxin objVacxin = new Vacxin(rs.getInt("mavacxin"), rs.getString("tenvacxin"), rs.getInt("somui"),
						rs.getString("mota"), rs.getDouble("giavacxin"), rs.getString("tenhang"));
				listVacxinSearch.add(objVacxin);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				pst.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return listVacxinSearch;
	}

}
