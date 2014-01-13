package dao;

import handle.Utils;

import java.sql.ResultSet;
import java.sql.SQLException;

import entity.PowerEntity;
import entity.UserEntity;

public class RoleDAO {
	/**
	 * Thêm một user vào role
	 * 
	 * @param user
	 *            user cần thêm vào role
	 * @param p
	 *            quyền user được gán cho {@code user}
	 * */
	public static void insertUserToRole(UserEntity user, PowerEntity p) {
		String sql = "INSERT INTO ROLE VALUES(?, ?)";
		int[] indexes = { 1, 2 };
		Object[] values = { p.getId(), user.getUserId() };
		Utils.util.insert(sql, indexes, values);
	}

	/**
	 * Kiểm tra quyền của một user
	 * 
	 * @param user
	 *            user muốn tra quyền
	 * @return một chuỗi string là id của role đó (vd: admin hoặc là user)
	 * */
	public static String getRole(UserEntity user) {
		int userId = user.getUserId();
		String sql = "SELECT role.id_chucnang FROM role WHERE role.user_id = ?";
		ResultSet rs = Utils.util.getResultSet(sql, userId + "");
		String role = "user";
		try {
			while (rs.next()) {
				role = rs.getString("id_chucnang");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return role;
	}

	/**
	 * phương thức lấy ra Role name dựa vào id của người dùng
	 * @param id id của người dùng, dựa vào id này ta có thể xác định được người dùng
	 * thuộc role nào: admin hay user
	 * @return một chuỗi String đại diện cho role name đó: User, Admin
	 * */
	public static String getRoleName(int id) {
		String roleName = "";
		String sql = "SELECT power.name FROM power WHERE id_chucnang = "
				+ "(SELECT id_chucnang FROM role WHERE user_id = ?)";
		ResultSet rs = Utils.util.getResultSet(sql, id + "");
		try {
			while (rs.next()) {
				roleName = rs.getString(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return roleName;
	}
	
	/**
	 * Phương thức update quyền hạn của người dùng (ví dụ: set cho người dùng đó là quyền admin ...)
	 * @param user user được cập nhật quyền hạn
	 * */
	public static void updateRole(UserEntity user, String roleName) {
		String sql = "UPDATE ROLE SET id_chucnang = ? WHERE user_id = ?";
		int[] indexes = { 1, 2 };
		Object[] values = { roleName, user.getUserId() };
		Utils.util.update(sql, indexes, values);
	}
	
}
