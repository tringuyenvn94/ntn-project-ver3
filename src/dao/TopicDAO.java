package dao;

import handle.Utils;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import entity.TopicEntity;

public class TopicDAO {
	/**
	 * Load toàn bộ lĩnh vực từ database
	 * 
	 * @return một resultset chứa toàn bộ lĩnh vực
	 * */
	public static ResultSet loadLinhVuc() {
		String sql = "SELECT name_sub_menu, id_sub_menu FROM SUB_MENU";
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
				+ "(content, id_sub_menu, date_created, title, author, email, url, url_daidien) "
				+ "VALUES(?, ?, ?, ?, ?, ?, ?, ?)";
		int[] indexes = { 1, 2, 3, 4, 5, 6, 7, 8 };
		Object[] values = {
				topic.getContent(),
				topic.getType(),
				topic.getDateCreated(),
				topic.getTitle(),
				topic.getAuthor(),
				topic.getEmail(),
				topic.getUrl(),
				topic.getUrl_daidien()
		};

		Utils.util.insert(sql, indexes, values);
	}

	/**
	 * Load nội dung bài viết lên từ DB
	 * */
	public static TopicEntity load(String id) {
		String sql = "SELECT * FROM TOPIC WHERE id = ?";
		TopicEntity topic = new TopicEntity();
		ResultSet rs = Utils.util.getResultSet(sql, id);
		try {
			while (rs.next()) {
				int iD = rs.getInt("id");
				String type = rs.getString("id_sub_menu");
				String dateSt = rs.getString("date_created");
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-mm-dd hh:mm:ss");
				Date date = sdf.parse(dateSt);
				topic.setDateCreated(date);
				String content = rs.getString("content");
				String title = rs.getString("title");
				String url = rs.getString("url");
				String author = rs.getString("author");
				String email = rs.getString("email");

				topic.setId(iD);
				topic.setType(type);
				topic.setContent(content);
				topic.setTitle(title);
				topic.setUrl(url);
				topic.setAuthor(author);
				topic.setEmail(email);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return topic;
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
			int id = rs.getInt("id");
			topic.setId(id);
			String title = rs.getString("title");
			topic.setTitle(title);
			String url_daidien = rs.getString("url_daidien");
			if (url_daidien != null) topic.setUrl_daidien(url_daidien);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return topic;
	}

	/**
	 * So sánh 2 bài viết để xem bài nào post trước, bài nào post sau.
	 * 
	 * @param t1
	 *            topic 1
	 * @param t2
	 *            topic 2
	 * @return số int như sau <br />
	 *         &nbsp; = 0: 2 topic có cùng thời gian post <br />
	 *         &nbsp; < 0: topic 1 được post trước, topic 2 được post sau <br />
	 *         &nbsp; > 0: topic 2 được post trước, topic 1 được post sau <br />
	 * */
	public static int separate(TopicEntity t1, TopicEntity t2) {
		return t1.getDateCreated().compareTo(t2.getDateCreated());
	}

	/**
	 * phương thức lấy một đoạn văn bản làm mở đầu bài viết
	 * chua xong
	 * */
	public static String moDau(int id) {
		String sql = "SELECT content FROM TOPIC WHERE id = ?";
		ResultSet rs = Utils.util.getResultSet(sql, id + "");
		String content = "";
		try {
			rs.next();
			content = rs.getString(1);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return content;
	}

	/**
	 * Phương thức load tên của menu con lên dựa vào id của bài viết
	 * 
	 * @param id
	 *            id của bài viết có chứa menu con
	 * @return subMenu là menu con dựa trên id
	 * */
	public static String loadSubMenu(String id) {
		String sql = "SELECT sub_menu.name_sub_menu FROM sub_menu WHERE id_sub_menu = "
				+ "(SELECT topic.id_sub_menu FROM topic WHERE id = ?)";
		ResultSet rs = Utils.util.getResultSet(sql, id);
		String subMenu = "";
		try {
			while (rs.next()) {
				subMenu = rs.getString(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return subMenu;
	}

	/**
	 * Phương thức load tên của menu cha lên dựa vào id của bài viết
	 * 
	 * @param id
	 *            id của bài viết có chứa menu con tham chiếu tới menu cha
	 * @return mainMenu là menu con dựa trên id của bài viết
	 * */
	public static String loadMainMenu(String id) {
		String sql = "SELECT main_menu.name_main_menu FROM main_menu WHERE id_main_menu = "
				+ "(SELECT sub_menu.id_main_menu FROM sub_menu WHERE id_sub_menu = "
				+ "(SELECT topic.id_sub_menu FROM topic WHERE id = ?))";
		ResultSet rs = Utils.util.getResultSet(sql, id);
		String mainMenu = "";
		try {
			while (rs.next()) {
				mainMenu = rs.getString(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return mainMenu;
	}

	/**
	 * Phương thức load link của sub menu
	 * 
	 * @param subName
	 *            tên của sub menu
	 * @return link của submenu
	 * */
	public static String loadLinkSub(String subName) {
		String link = "";
		String sql = "SELECT link FROM SUB_MENU WHERE name_sub_menu = ? ";
		ResultSet rs = Utils.util.getResultSet(sql, subName);
		try {
			while (rs.next()) {
				link = rs.getString(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return link;
	}

	/**
	 * Phương thức load link của main menu
	 * 
	 * @param mainName
	 *            tên của main menu
	 * @return link của main menu
	 * */
	public static String loadLinkMain(String mainName) {
		String link = "";
		String sql = "SELECT link FROM MAIN_MENU WHERE name_main_menu = ? ";
		ResultSet rs = Utils.util.getResultSet(sql, mainName);
		try {
			while (rs.next()) {
				link = rs.getString(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return link;
	}

	/**
	 * Phương thức load một loạt 3 bài viết trước bài mới nhất
	 * 
	 * @return một list chứa 3 topic đó
	 * */

	public static List<TopicEntity> loadBeforeLasted() {
		List<TopicEntity> topics = new ArrayList<>();
		String sql = "SELECT * FROM TOPIC";
		ResultSet rs = Utils.util.getResultSet(sql);
		try {
			rs.afterLast();
			rs.previous();
			int row = rs.getRow();
			for (int i = row; i > row - 3; i--) {
				rs.previous();
				TopicEntity topic = new TopicEntity();
				String content = rs.getString("content");
				topic.setContent(content);
				String dateSt = rs.getString("date_created");
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-mm-dd hh:mm:ss");
				Date date = sdf.parse(dateSt);
				topic.setDateCreated(date);
				int id = rs.getInt("id");
				topic.setId(id);
				String title = rs.getString("title");
				topic.setTitle(title);
				String url_daidien = rs.getString("url_daidien");
				if (url_daidien != null) topic.setUrl_daidien(url_daidien);
				else topic.setUrl_daidien("Image/hinhdaidien.jpg");
				topics.add(topic);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return topics;

	}
}
