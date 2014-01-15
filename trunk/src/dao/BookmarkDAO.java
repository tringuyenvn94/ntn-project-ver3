package dao;

import handle.Utils;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BookmarkDAO {

	/**
	 * Phương thức load bookmark từ DB dựa vào một user
	 * @param userId id của user muốn load bookmark lên
	 * @return danh sách chứa các topicid của tài khoản đó
	 * */
	public static List<String> loadBookmark(int userId) {
		List<String> topicIds = new ArrayList<String>();
		String sql = "SELECT topic_id FROM BOOKMARK WHERE user_id = ?";
		ResultSet rs = Utils.util.getResultSet(sql, userId + "");
		try {
			while (rs.next()) {
				topicIds.add(rs.getString("topic_id"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return topicIds;
	}
	
	/**
	 * Phương thức delete một boomark đã dánh dấu của một user
	 * @param userId id của user có boomark cần xóa
	 * @param topicId id của topic sẽ bị xóa
	 * */
	public static void delete(int userId, int topicId) {
		String sql = "DELETE FROM bookmark WHERE bookmark.user_id = ? AND bookmark.topic_id = ?";
		int[] indexes = { 1, 2 };
		Object[] values = { userId, topicId };
		Utils.util.delete(sql, indexes, values);
	}
	
	/**
	 * Phương thức thêm một bookmark vào tài khoản của một user
	 * @param userId id của user thêm bookmark
	 * @param topicId id của bài viết sắp được thêm
	 * */
	public static void add(int userId, int topicId) {
		String sql = "INSERT INTO BOOKMARK VALUES(?, ?)";
		int[] indexes = { 1, 2 };
		Object[] values = { userId, topicId };
		Utils.util.insert(sql, indexes, values);
	}
	
	/**
	 * Phương thức kiểm tra topic hiện hành có được book mark bởi user hiện hành hay không
	 * @param userId id của user
	 * @param topicId id của topic
	 * */
	public static boolean isBookmarked(int userId, int topicId) {
		String sql = "SELECT * FROM BOOKMARK WHERE user_id = ? AND topic_id = ?";
		int[] indexes = { 1, 2 };
		Object[] values = { userId, topicId };
		ResultSet rs = Utils.util.executeQuery(sql, indexes, values);
		int row = 0;
		try {
			while (rs.next()) {
				row++;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		if (row > 0) return true;
		else return false;
	}
	
}
