package dao;

import handle.Utils;

import java.sql.ResultSet;
import java.sql.SQLException;

import entity.UserEntity;

public class StatusDAO {
	/**
	 * Lấy ra status name của một người dùng dựa vào số id của người dùng đó
	 * @param id id của người dùng
	 * @return chuỗi String cho biết status của người dùng đó : Actived, Banned
	 * */
	public static String getStatusName(int id) {
		String sql = "SELECT status_name FROM status WHERE status_id = "
				+ "(SELECT status_id FROM user WHERE user.user_id = ?)";
		String status = "Banned";
		ResultSet rs = Utils.util.getResultSet(sql, id + "");
		try {
			while (rs.next()) {
				status = rs.getString(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return status;
	}
	
	/**
	 * Phương thức cập nhật status của một user (vd: cập nhật cho user đó status là banned)
	 * @param user user được cập nhật status
	 * */
	public static void updateStatus(UserEntity user, String statusName) {
		String sql = "UPDATE USER SET status_id = ? WHERE user_id = ?";
		int[] indexes = { 1, 2 };
		Object[] values = { statusName, user.getUserId() };
		Utils.util.update(sql, indexes, values);
	}
}
