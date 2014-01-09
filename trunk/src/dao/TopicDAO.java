package dao;

import handle.Utils;
import handle.Validation;

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
		if (Validation.isNull(topic.getUrl_daidien())) topic.setUrl_daidien("Image/hinhdaidien.jpg");
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
	 * phương thức load tổng quát 1 topic
	 * 
	 * @param sql
	 *            câu lệnh để thực thi load topic
	 * @param param
	 *            tham số truyền vào là điều kiện lọc
	 * */
	private static TopicEntity loadTopic(String sql, String param) {
		TopicEntity topic = new TopicEntity();
		ResultSet rs = null;
		if (!param.equals("")) {
			rs = Utils.util.getResultSet(sql, param);
		} else {
			rs = Utils.util.getResultSet(sql);
		}
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
				String url_daidien = rs.getString("url_daidien");

				topic.setUrl_daidien(url_daidien);
				topic.setId(iD);
				topic.setType(type);
				topic.setContent(content);
				topic.setTitle(title);
				topic.setUrl(url);
				topic.setAuthor(author);
				topic.setEmail(email);
				String header = getHeader(content);
				topic.setHeader(header);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return topic;

	}

	/**
	 * Load nội dung bài viết lên từ DB dựa vào 1 id nhất đinh
	 * 
	 * @param id
	 *            id của bài viết
	 * @return 1 topic tương ứng với id truyền vào
	 * */
	public static TopicEntity load(String id) {
		String sql = "SELECT * FROM TOPIC WHERE id = ?";
		return loadTopic(sql, id);
	}

	/**
	 * Lấy topic cuối cùng được lưu vào DB
	 * 
	 * @return 1 topic được đăng gần nhất
	 * */
	public static TopicEntity loadLastedTopic() {
		String sql = "SELECT * FROM TOPIC";
		return loadTopic(sql, "");
	}

	/**
	 * Lấy topic cuối cùng được lưu vào DB dựa trên một id của sub menu
	 * 
	 * @param idSubMenu
	 *            id của sub menu cần lấy bài lên
	 * @return 1 topic được đăng gần nhất
	 * */
	public static TopicEntity loadLastedTopic(String idSubMenu) {
		String sql = "SELECT * FROM TOPIC WHERE id_sub_menu = ?";
		return loadTopic(sql, idSubMenu);
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
	public static int compare(TopicEntity t1, TopicEntity t2) {
		return t1.getDateCreated().compareTo(t2.getDateCreated());
	}

	/**
	 * phương thức lấy một đoạn văn bản làm mở đầu bài viết
	 * chua xong
	 * */
	private static String getHeader(String content) {
		String contentSub = content.substring(38);
		String result = "";
		char st;
		for (int i = 0; i < contentSub.length(); i++) {
			if ((st = contentSub.charAt(i)) == '<') {
				break;
			}
			result += st;
		}
		return result;
	}

	/**
	 * Phương thức load một chuỗi string từ DB
	 * 
	 * @param param
	 *            chuỗi string truyền vào làm điều kiện lọc
	 * @param sql
	 *            câu lệnh sql
	 * @return một chuỗi string lọc được
	 * */
	private static String loadString(String sql, String param) {
		ResultSet rs = Utils.util.getResultSet(sql, param);
		String result = "";
		try {
			while (rs.next()) {
				result = rs.getString(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
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
		return loadString(sql, id);
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
		return loadString(sql, id);
	}

	/**
	 * Phương thức load link của sub menu
	 * 
	 * @param subName
	 *            tên của sub menu
	 * @return link của submenu
	 * */
	public static String loadLinkSub(String subName) {
		String sql = "SELECT link FROM SUB_MENU WHERE name_sub_menu = ? ";
		return loadString(sql, subName);
	}

	/**
	 * Phương thức load link của main menu
	 * 
	 * @param mainName
	 *            tên của main menu
	 * @return link của main menu
	 * */
	public static String loadLinkMain(String mainName) {
		String sql = "SELECT link FROM MAIN_MENU WHERE name_main_menu = ? ";
		return loadString(sql, mainName);
	}

	/**
	 * Phương thức tổng quát load nhiều topic có điều kiện
	 * 
	 * @param sql
	 *            câu lệnh sql
	 * @param param
	 *            tham số truyền vào làm điều kiện của câu truy vấn
	 * @return một List chứa các topic đã lọc được nhờ vào câu sql
	 * */
	private static List<TopicEntity> loadTopics(String sql, String param) {
		ResultSet rs = null;
		List<TopicEntity> topics = new ArrayList<>();

		if (!param.equals("")) {
			rs = Utils.util.getResultSet(sql, param);
		} else {
			rs = Utils.util.getResultSet(sql);
		}

		try {
			TopicEntity topic;
			while (rs.next()) {
				topic = new TopicEntity();
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
				String url_daidien = rs.getString("url_daidien");
				boolean isFocus = rs.getBoolean("focus");

				topic.setId(iD);
				topic.setType(type);
				topic.setContent(content);
				topic.setTitle(title);
				topic.setUrl(url);
				topic.setAuthor(author);
				topic.setEmail(email);
				topic.setUrl_daidien(url_daidien);
				topic.setFocus(isFocus);
				topics.add(topic);

				String header = getHeader(content);
				topic.setHeader(header);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return topics;
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
				String type = rs.getString("id_sub_menu");
				topic.setType(type);
				String title = rs.getString("title");
				topic.setTitle(title);
				String url_daidien = rs.getString("url_daidien");
				topic.setUrl_daidien(url_daidien);
				topics.add(topic);

				String header = getHeader(content);
				topic.setHeader(header);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return topics;

	}

	/**
	 * Phương thức load những bài mới nhất theo id của main menu
	 * 
	 * @param idMainMenu
	 *            id của main menu muốn load
	 * @return một list gồm những bài viết mới nhất
	 * */
	public static List<TopicEntity> loadByMainId(String idMainMenu) {
		List<TopicEntity> topics = new ArrayList<>();
		String loadSubMenus = "SELECT sub_menu.id_sub_menu FROM sub_menu WHERE id_main_menu = ?";
		ResultSet subMenus = Utils.util.getResultSet(loadSubMenus, idMainMenu);
		List<String> idSubMenus = new ArrayList<>();
		try {
			while (subMenus.next()) {
				idSubMenus.add(subMenus.getString(1));
			}
			/*
			 * Vì 1 main menu có nhiều sub menu khác nhau nên phải load
			 * id_sub_menu lên trước, sau đó với mỗi sub menu thì load lên các bài viết cần thiết
			 */
			for (String sub : idSubMenus) {
				TopicEntity topic = loadLastedTopic(sub);
				topics.add(topic);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return topics;
	}

	/**
	 * Lấy những topic cuối cùng được lưu vào DB dựa trên một số nhập vào
	 * 
	 * @param noOfEntities
	 *            số lượng topic muốn load lên
	 * @return 1 danh sách topic được đăng gần nhất
	 * */
	public static List<TopicEntity> loadLastedTopic(int noOfEntities) {
		List<TopicEntity> topics = new ArrayList<>();
		String sql = "SELECT * FROM TOPIC";
		ResultSet rs = Utils.util.getResultSet(sql);
		try {
			rs.last();
			rs.afterLast();
			int index = 0;
			while (rs.previous()) {
				if (index >= noOfEntities) break;
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
				String type = rs.getString("id_sub_menu");
				topic.setType(type);
				String url_daidien = rs.getString("url_daidien");
				if (url_daidien != null) topic.setUrl_daidien(url_daidien);
				index++;
				topics.add(topic);

				String header = getHeader(content);
				topic.setHeader(header);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return topics;
	}

	/**
	 * Phương thức load tất cả các bài tiêu điểm
	 * 
	 * @return một danh sách chứa các bài viết
	 * */
	public static List<TopicEntity> loadAllFocusTopic() {
		String sql = "SELECT * FROM topic WHERE focus = 1";
		return loadTopics(sql, "");
	}
}
