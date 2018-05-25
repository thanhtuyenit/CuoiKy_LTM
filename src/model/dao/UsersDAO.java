package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import library.ConnectMySQLDBLibrary;
import model.bean.Users;

public class UsersDAO {
	private Connection conn;
	private PreparedStatement pst;
	private Statement st;
	private ResultSet rs;
	private ConnectMySQLDBLibrary connectMySQLDBLibrary;

	public UsersDAO() {
		connectMySQLDBLibrary = new ConnectMySQLDBLibrary();
	}

	public Users checkLogin(String username, String password) {
		conn = connectMySQLDBLibrary.getConnectMySQL();
		Users objUser = null;
		String sql = "SELECT * FROM users WHERE username = ? && password = ?";
		try {
			pst = conn.prepareStatement(sql);
			pst.setString(1, username);
			pst.setString(2, password);
			rs = pst.executeQuery();
			if (rs.next()) {
				objUser = new Users(rs.getInt("iduser"), rs.getString("username"), rs.getString("password"),
						rs.getString("fullname"));
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
		return objUser;

	}

}
