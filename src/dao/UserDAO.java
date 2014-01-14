package dao;

import handle.Utils;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import entity.UserEntity;

public class UserDAO {
	/**
	 * Kiểm tra xem username truyền vào đã tồn tại trong database chưa
	 * 
	 * @param username
	 *            username cần kiểm tra
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
	 * Kiểm tra xem email truyền vào đã tồn tại trong database chưa
	 * 
	 * @param email
	 *            eamil cần kiểm tra
	 * @return true đã tồn tại, false chưa tồn tại
	 * */
	public static boolean isExistEmail(String email) {
		String sql = "SELECT * FROM USER WHERE email = ?";
		ResultSet rs = Utils.util.getResultSet(sql, email);
		try {
			rs.last();
			int row = rs.getRow();
			if (row >= 1) return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return false;
	}

	/**
	 * Ghi user vào database
	 * 
	 * @param user
	 *            user cần ghi xuống DB
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
				+ "city, "
				+ "date_reg) "
				+ "VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		int[] indexes = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 };
		Object[] values = {
				user.getUseName(),
				user.getPassword(),
				user.getFullName(),
				user.getEmail(),
				user.getYear(),
				user.isMale(),
				user.isReceiveEmail(),
				user.isShowEmail(),
				user.getCity(),
				user.getDateReg()
		};
		Utils.util.insert(sql, indexes, values);
		RoleDAO.insertUserToRole(getUser(user.getUseName()), PowerDAO.getUserPwr());
	}

	/**
	 * Kiểm tra xem user truyền vào có tồn tại trong database hay không
	 * 
	 * @param user
	 *            user cần kiểm tra
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
	 * 
	 * @param username
	 *            cần set password
	 * @param newPassword
	 *            password mới
	 * */
	public static void setPassword(String username, String newPassword) {
		String sql = "UPDATE USER SET password = ? WHERE username = ?";
		int[] indexes = { 1, 2 };
		String[] values = { newPassword, username };
		Utils.util.update(sql, indexes, values);
	}

	/**
	 * ReSet password cho một user được xác định bằng địa chỉ Email
	 * 
	 * @param email
	 *            cần reset password
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
	 * 
	 * @param email
	 *            địa chỉ email
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
	 * 
	 * @param username
	 *            username dùng để xác định user cần lấy
	 * @return một user
	 * */
	public static UserEntity getUser(String username) {
		String sql = "SELECT * FROM USER WHERE username = ?";
		UserEntity user = new UserEntity();
		ResultSet rs = Utils.util.getResultSet(sql, username);
		try {
			while (rs.next()) {
				int id = rs.getInt("user_id");
				String password = rs.getString("password");
				String fullName = rs.getString("full_name");
				String email = rs.getString("email");
				String year = rs.getString("year");
				boolean isMale = rs.getBoolean("is_male");
				boolean isReceiveEmail = rs.getBoolean("is_receive_email");
				boolean isShowEmail = rs.getBoolean("is_show_email");
				String city = rs.getString("city");
				Date dateReg = rs.getDate("date_reg");

				user.setUserId(id);
				user.setUseName(username);
				user.setPassword(password);
				user.setFullName(fullName);
				user.setEmail(email);
				user.setYear(year);
				user.setMale(isMale);
				user.setReceiveEmail(isReceiveEmail);
				user.setShowEmail(isShowEmail);
				user.setCity(city);
				user.setDateReg(dateReg);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return user;
	}

	/**
	 * Load tất cả các user có trong database lên lưu vào một List
	 * 
	 * @return ArrayList chứa tất cả các user
	 * */
	public static List<UserEntity> loadAllUser() {
		List<UserEntity> users = new ArrayList<>();
		String sql = "SELECT * FROM USER";
		ResultSet rs = Utils.util.getResultSet(sql);
		try {
			while (rs.next()) {
				UserEntity user = new UserEntity();
				int id = rs.getInt("user_id");
				String username = rs.getString("username");
				String password = rs.getString("password");
				String fullName = rs.getString("full_name");
				String email = rs.getString("email");
				String year = rs.getString("year");
				boolean isMale = rs.getBoolean("is_male");
				boolean isReceiveEmail = rs.getBoolean("is_receive_email");
				boolean isShowEmail = rs.getBoolean("is_show_email");
				String city = rs.getString("city");
				Date dateReg = rs.getDate("date_reg");
				if (!username.equals("admin")) {
					user.setUserId(id);
					user.setUseName(username);
					user.setPassword(password);
					user.setFullName(fullName);
					user.setEmail(email);
					user.setYear(year);
					user.setMale(isMale);
					user.setReceiveEmail(isReceiveEmail);
					user.setShowEmail(isShowEmail);
					user.setCity(city);
					user.setDateReg(dateReg);
					users.add(user);
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return users;
	}

	/**
	 * Đếm số bài viết mà người dùng đó viết được
	 * 
	 * @param username
	 *            tên người dùng
	 * @return một số int thể hiện số bài viết mà username đó viết
	 * */
	public static int countTopics(String username) {
		String sql = "SELECT COUNT(*) FROM topic WHERE user_id="
				+ "(SELECT user.user_id FROM user WHERE username = ?)";
		ResultSet rs = Utils.util.getResultSet(sql, username);
		int count = 0;
		try {
			while (rs.next()) {
				count = Integer.parseInt(rs.getString(1));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return count;
	}

	/**
	 * Phương thức update thông tin của người dùng
	 * 
	 * @param user
	 *            user được cập nhật thông tin
	 * */
	public static void updateInfo(UserEntity user, String roleName, String statusName) {
		String updateTableUser = "UPDATE user SET "
				+ "full_name = ?,"
				+ "email = ?"
				+ "WHERE username = ?";
		int[] indexes = { 1, 2, 3 };
		Object[] values = { user.getFullName(), user.getEmail(), user.getUseName() };
		Utils.util.update(updateTableUser, indexes, values);
		RoleDAO.updateRole(user, roleName);
		StatusDAO.updateStatus(user, statusName);
	}

	/**
	 * Phương thức xóa một user dựa vào user name cho vào
	 * 
	 * @param username
	 *            tên username của user bị xóa
	 * */
	public static void delete(String username) {
		String sql = "DELETE FROM USER WHERE username = ?";
		int[] indexes = { 1 };
		String[] values = { username };
		Utils.util.delete(sql, indexes, values);
	}

}
