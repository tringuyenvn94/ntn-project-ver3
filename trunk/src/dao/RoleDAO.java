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

}
