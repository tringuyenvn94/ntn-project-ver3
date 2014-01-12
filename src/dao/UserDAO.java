package dao;

import handle.Utils;

import java.sql.ResultSet;
import java.sql.SQLException;

import entity.UserEntity;

public class UserDAO {
	/**
	 * Kiểm tra xem username truyền vào đã tồn tại trong database chưa
	 * @param username username cần kiểm tra
	 * @return true đã tồn tại, false chưa tồn tại
	 * */
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

	/**
	 * Ghi user vào database
	 * @param user user cần ghi xuống DB 
	 * */
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
		RoleDAO.insertUserToRole(getUser(user.getUseName()), PowerDAO.getUserPwr());
	}

	/**
	 * Kiểm tra xem user truyền vào có tồn tại trong database hay không
	 * @param user user cần kiểm tra
	 * @return true có, false không
	 * */
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
	
	/**
	 * Set password cho một user được xác định bằng username
	 * @param username cần set password
	 * @param newPassword password mới 
	 * */
	public static void setPassword(String username, String newPassword) {
		String sql = "UPDATE USER SET password = ? WHERE username = ?";
		int[] indexes = { 1, 2 };
		String[] values = { newPassword, username };
		Utils.util.update(sql, indexes, values);
	}
	
	/**
	 * ReSet password cho một user được xác định bằng địa chỉ Email
	 * @param email cần reset password
	 * */
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

	/**
	 * Lấy lên username từ một địa chỉ email (Giả sử email là duy nhất trong DB)
	 * @param email địa chỉ email
	 * @return username là chủ nhân của địa chỉ email nhập vào
	 * */
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
	
	/**
	 * Lấy user dựa vào username
	 * @param username username dùng để xác định user cần lấy
	 * @return một user
	 * */
	public static UserEntity getUser(String username) {
		String sql = "SELECT * FROM USER WHERE username = ?";
		UserEntity user = new UserEntity();
		ResultSet rs = Utils.util.getResultSet(sql, username);
		try {
			while (rs.next()) {
				String userName = rs.getString("username");
				String fullName = rs.getString("full_name");
				String email = rs.getString("email");
				int id = rs.getInt("user_id");
				user.setUseName(userName);
				user.setFullName(fullName);
				user.setEmail(email);
				user.setUserId(id);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return user;
	}
}
