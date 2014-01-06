package dao;

import handle.Utils;

import java.sql.ResultSet;
import java.sql.SQLException;

import entity.UserEntity;

public class UserDAO {
	public static boolean checkUsername(String username) {
		String sql = "SELECT * FROM USER WHERE username = ?";
		String attribute = username;
		ResultSet rs = Utils.util.getResultSet(sql, attribute);
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
		Utils.util.insert(sql, indexes, values);
	}

	public static boolean checkUser(UserEntity user) {
		String sql = "SELECT username, password FROM USER WHERE username = ?";
		String attribute = user.getUseName();
		ResultSet rs = Utils.util.getResultSet(sql, attribute);
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
		Utils.util.update(sql, indexes, values);
	}
	
	public static boolean resetPassword(String email) {
		String username = getUsername(email);
		if (!username.equals("Không tồn tại email")) {
			String sql = "UPDATE USER SET password = ? WHERE username = ?";
			int[] indexes = { 1, 2 };
			String[] values = { "6shbjp1", username };
			Utils.util.update(sql, indexes, values);
			return true;
		}
		return false;
	}

	public static String getUsername(String email) {
		String sql = "SELECT username FROM USER WHERE email = ?";
		ResultSet rs = Utils.util.getResultSet(sql, email);
		String username = null;
		try {
			while (rs.next()) {
				username = rs.getString("username");
			}
			if (username != null) return username;
			else return "Không tồn tại email";
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return "Không tồn tại email";
	}
	
	public static String getEmail(String username) {
		String sql = "SELECT email FROM USER WHERE username = ?";
		String email = null;
		ResultSet rs = Utils.util.getResultSet(sql, username);
		try {
			while (rs.next()) {
				email = rs.getString(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return email;
	}
}
