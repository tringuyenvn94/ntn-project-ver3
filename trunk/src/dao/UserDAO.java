package dao;

import handle.MyConnection;

import java.sql.ResultSet;
import java.sql.SQLException;

import entity.UserEntity;

public class UserDAO {
	public static boolean checkUsername(String username) {
		String sql = "SELECT * FROM USER WHERE username = ?";
		String attribute = username;
		ResultSet rs = MyConnection.myConn.getResultSet(sql, attribute);
		try {
			rs.last();
			int row = rs.getRow();
			if (row == 1) return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return false;
	}

	public static void write(UserEntity user) {
		String sql = "INSERT INTO USER"
				+ "(username, "
				+ "password, "
				+ "full_name, "
				+ "email, "
				+ "year, "
				+ "is_male, "
				+ "is_receive_email, "
				+ "is_show_email, "
				+ "city) "
				+ "VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?)";
		int[] indexes = { 1, 2, 3, 4, 5, 6, 7, 8, 9 };
		Object[] values = {
				user.getUseName(),
				user.getPassword(),
				user.getFullName(),
				user.getEmail(),
				user.getYear(),
				user.isMale(),
				user.isReceiveEmail(),
				user.isShowEmail(),
				user.getCity()
		};
		MyConnection.myConn.insert(sql, indexes, values);
	}

	public static boolean checkUser(UserEntity user) {
		String sql = "SELECT username, password FROM USER WHERE username = ?";
		String attribute = user.getUseName();
		ResultSet rs = MyConnection.myConn.getResultSet(sql, attribute);
		try {
			while (rs.next()) {
				String password = rs.getString("password");
				if (password.equals(user.getPassword())) return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return false;
	}
	
	public static void setPassword(String username, String newPassword) {
		String sql = "UPDATE USER SET password = ? WHERE username = ?";
		int[] indexes = { 1, 2 };
		String[] values = { newPassword, username };
		MyConnection.myConn.update(sql, indexes, values);
	}
}
