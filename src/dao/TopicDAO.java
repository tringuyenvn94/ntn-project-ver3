package dao;

import handle.Utils;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;

import entity.TopicEntity;

public class TopicDAO {
	/**
	 * Load toàn bộ lĩnh vực từ database
	 * 
	 * @return một resultset chứa toàn bộ lĩnh vực
	 * */
	public static ResultSet loadLinhVuc() {
		String sql = "SELECT name FROM SUB_MENU";
		return Utils.util.getResultSet(sql);
	}

	/**
	 * Phương thức lưu nội dụng bài viết xuống database
	 * 
	 * @param content
	 *            nội dung toàn bộ bài viết
	 * */
	public static void save(TopicEntity topic) {
		String sql = "INSERT INTO TOPIC"
				+ "(content, name_sub_menu, date_created, title, author, email, url) "
				+ "VALUES(?, ?, ?, ?, ?, ?, ?)";
		int[] indexes = { 1, 2, 3, 4, 5, 6, 7 };
		Object[] values = { 
				topic.getContent(), 
				topic.getType(), 
				topic.getDateCreated(),
				topic.getTitle(),
				topic.getAuthor(),
				topic.getEmail(),
				topic.getUrl()
		};
		
		Utils.util.insert(sql, indexes, values);
	}

	/**
	 * Load nội dung bài viết lên từ DB
	 * */
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

	/**
	 * Lấy topic cuối cùng được lưu vào DB
	 * 
	 * @return 1 topic được đăng gần nhất
	 * */
	public static TopicEntity loadLastedTopic() {
		TopicEntity topic = new TopicEntity();
		String sql = "SELECT * FROM TOPIC";
		ResultSet rs = Utils.util.getResultSet(sql);
		try {
			rs.last();
			String content = rs.getString("content");
			topic.setContent(content);
			
			String dateSt = rs.getString("date_created");
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-mm-dd hh:mm:ss");
			Date date = sdf.parse(dateSt);
			topic.setDateCreated(date);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return topic;
	}
	
	/**
	 * So sánh 2 bài viết để xem bài nào post trước, bài nào post sau.
	 * @param t1 topic 1
	 * @param t2 topic 2
	 * @return số int như sau <br />
	 * &nbsp; = 0: 2 topic có cùng thời gian post <br />
	 * &nbsp; < 0: topic 1 được post trước, topic 2 được post sau <br />
	 * &nbsp; > 0: topic 2 được post trước, topic 1 được post sau <br />
	 * */
	public static int separate(TopicEntity t1, TopicEntity t2) {
		return t1.getDateCreated().compareTo(t2.getDateCreated());
	}
	
}
