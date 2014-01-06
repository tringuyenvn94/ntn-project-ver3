package dao;

import handle.Utils;

import java.sql.ResultSet;
import java.sql.SQLException;

public class TopicDAO {
	/**
	 * Load toàn bộ lĩnh vực từ database
	 * 
	 * @return một resultset chứa toàn bộ lĩnh vực
	 * */
	public static ResultSet loadLinhVuc() {
		String sql = "SELECT * FROM LINHVUC";
		return Utils.util.getResultSet(sql);
	}

	/**
	 * Phương thức lưu nội dụng bài viết xuống database
	 * 
	 * @param content
	 *            nội dung toàn bộ bài viết
	 * */
	public static void save(String content) {
		String sql = "INSERT INTO TEMP VALUES(?)";
		int[] indexes = { 1 };
		String[] values = { content };
		Utils.util.insert(sql, indexes, values);
	}

	public static String load() {
		String sql = "SELECT * FROM TEMP";
		String content = null;
		ResultSet rs = Utils.util.getResultSet(sql);
		try {
			while (rs.next()) {
				content = rs.getString(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return content;
	}
}
