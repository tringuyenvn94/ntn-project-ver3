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
	 * @param topic
	 *            nội dung toàn bộ bài viết
	 * @return id của bài viết
	 * */
	public static int save(TopicEntity topic) {
		String sql = "INSERT INTO TOPIC"
				+ "(content, id_sub_menu, date_created, title, author, email, url, url_daidien, header) "
				+ "VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?)";
		int[] indexes = { 1, 2, 3, 4, 5, 6, 7, 8, 9 };
		if (Validation.isNull(topic.getUrl_daidien())) topic.setUrl_daidien("Image/hinhdaidien.jpg");
		Object[] values = {
				topic.getContent(),
				topic.getType(),
				topic.getDateCreated(),
				topic.getTitle(),
				topic.getAuthor(),
				topic.getEmail(),
				topic.getUrl(),
				topic.getUrl_daidien(),
				topic.getHeader()
		};
		Utils.util.insert(sql, indexes, values);
		int id = -1;
		String getId = "SELECT id FROM TOPIC WHERE header = ?";
		ResultSet rs = Utils.util.getResultSet(getId, topic.getHeader());
		try {
		while (rs.next()) {
			id = rs.getInt(1);
		}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return id;
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
				String header = rs.getString("header");

				topic.setHeader(header);
				topic.setUrl_daidien(url_daidien);
				topic.setId(iD);
				topic.setType(type);
				topic.setContent(content);
				topic.setTitle(title);
				topic.setUrl(url);
				topic.setAuthor(author);
				topic.setEmail(email);
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
	 * @return 1 topic được đăng gần nhất và được admin cho phép posted
	 *         (có nghĩa là state id của nó phải là posted)
	 * */
	public static TopicEntity loadLastedTopic() {
		String sql = "SELECT * FROM TOPIC WHERE state_id = ?";
		return loadTopic(sql, "posted");
	}

	/**
	 * Lấy topic cuối cùng được lưu vào DB dựa trên một id của sub menu
	 * và topic đó phải có state id là posted
	 * 
	 * @param idSubMenu
	 *            id của sub menu cần lấy bài lên
	 * @return 1 topic được đăng gần nhất (có stated là posted)
	 * */
	public static TopicEntity loadLastedTopic(String idSubMenu) {
		String sql = "SELECT * FROM TOPIC WHERE id_sub_menu = ? AND state_id = 'posted'";
		return loadTopic(sql, idSubMenu);
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
	 * @param post Nếu topic có đk post là true thì topic đó dùng để hiển thị lên trang web,
	 * còn nếu post là false thì nó dùng để cập nhật trong bảng (phần quản lý bài viết của user)
	 * @return một List chứa các topic đã lọc được nhờ vào câu sql
	 * */
	private static List<TopicEntity> loadTopics(String sql, String param, boolean post) {
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
				if (post) {
					String dateSt = rs.getString("date_created");
					SimpleDateFormat sdf = new SimpleDateFormat("yyyy-mm-dd hh:mm:ss");
					Date date = sdf.parse(dateSt);
					topic.setDateCreated(date);
				} else topic.setDateCreated(rs.getDate("date_created"));
				String content = rs.getString("content");
				String title = rs.getString("title");
				String url = rs.getString("url");
				String author = rs.getString("author");
				String email = rs.getString("email");
				String url_daidien = rs.getString("url_daidien");
				boolean isFocus = rs.getBoolean("focus");
				String header = rs.getString("header");

				topic.setHeader(header);
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
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return topics;
	}

	/**
	 * Phương thức load một loạt 3 bài viết trước bài mới nhất
	 * và 3 bài viết đó phải có state là posted
	 * @return một list chứa 3 topic đó
	 * */

	public static List<TopicEntity> loadBeforeLasted() {
		List<TopicEntity> topics = new ArrayList<>();
		String sql = "SELECT * FROM TOPIC WHERE state_id = 'posted'";
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
				String header = rs.getString("header");

				topic.setHeader(header);
				topics.add(topic);

			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return topics;

	}

	/**
	 * Phương thức load những bài mới nhất theo id của main menu
	 * , bài viết đó phải có state là posted
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
	 * và các bài viết đó phải có state là posted
	 * @param noOfEntities
	 *            số lượng topic muốn load lên
	 * @return 1 danh sách topic được đăng gần nhất
	 * */
	public static List<TopicEntity> loadLastedTopic(int noOfEntities) {
		List<TopicEntity> topics = new ArrayList<>();
		String sql = "SELECT * FROM TOPIC WHERE state_id = 'posted'";
		ResultSet rs = Utils.util.getResultSet(sql);
		try {
			rs.last();
			rs.afterLast();
			int index = 0;
			while (rs.previous()) {
				if (noOfEntities > 1) {
					if (index >= noOfEntities) break;
				}
				TopicEntity topic = new TopicEntity();
				String content = rs.getString("content");
				topic.setContent(content);
				if (noOfEntities > 1) {
					String dateSt = rs.getString("date_created");
					SimpleDateFormat sdf = new SimpleDateFormat("yyyy-mm-dd hh:mm:ss");
					Date date = sdf.parse(dateSt);
					topic.setDateCreated(date);
				} else topic.setDateCreated(rs.getDate("date_created"));
				int id = rs.getInt("id");
				topic.setId(id);
				topic.setAuthor(rs.getString("author"));
				String title = rs.getString("title");
				topic.setTitle(title);
				String type = rs.getString("id_sub_menu");
				topic.setType(type);
				String url_daidien = rs.getString("url_daidien");
				if (url_daidien != null) topic.setUrl_daidien(url_daidien);
				index++;
				String header = rs.getString("header");

				topic.setHeader(header);
				topics.add(topic);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return topics;
	}

	/**
	 * Phương thức load tất cả các bài tiêu điểm
	 * và các bài viết đó phải có state là posted
	 * @return một danh sách chứa các bài viết
	 * */
	public static List<TopicEntity> loadAllFocusTopic(boolean post) {
		String sql = "SELECT * FROM topic WHERE focus = 1 AND state_id = 'posted'";
		return loadTopics(sql, "", post);
	}

	/**
	 * Load những bài viết mà chỉ có duy nhất một main menu cũng là sub menu
	 * và các bài viết đó phải có state là posted
	 * @param idMain
	 *            id của sub menu
	 * @return danh sách các bài viết của sub menu đó
	 * */
	public static List<TopicEntity> loadByMainIdOnly(String idMain, boolean post) {
		List<TopicEntity> topics = new ArrayList<>();
		String sql = "SELECT * FROM topic WHERE id_sub_menu = ? AND state_id = 'posted'";
		ResultSet rs = Utils.util.getResultSet(sql, idMain);
		try {
			TopicEntity topic;
			while (rs.next()) {
				topic = new TopicEntity();
				int iD = rs.getInt("id");
				String type = rs.getString("id_sub_menu");
				if (post) {
					String dateSt = rs.getString("date_created");
					SimpleDateFormat sdf = new SimpleDateFormat("yyyy-mm-dd hh:mm:ss");
					Date date = sdf.parse(dateSt);
					topic.setDateCreated(date);
				} else topic.setDateCreated(rs.getDate("date_created"));
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
				String header = rs.getString("header");

				topic.setHeader(header);
				topics.add(topic);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return topics;
	}

	/**
	 * Load bằng sub menu
	 * và các bài viết đó phải có state là posted
	 * @param id
	 *            sub menu
	 * @return một danh sách chứa các topic có cùng sub menu
	 * */
	public static List<TopicEntity> loadBySubMenu(String idSub) {
		String sql = "SELECT * FROM topic WHERE id_sub_menu = ? AND state_id = 'posted'";
		ResultSet rs = null;
		List<TopicEntity> topics = new ArrayList<>();

		if (!idSub.equals("")) {
			rs = Utils.util.getResultSet(sql, idSub);
		} else {
			rs = Utils.util.getResultSet(sql);
		}

		try {
			TopicEntity topic;
			while (rs.next()) {
				topic = new TopicEntity();
				int iD = rs.getInt("id");
				String type = rs.getString("id_sub_menu");
				Date date = rs.getDate("date_created");
				String content = rs.getString("content");
				String title = rs.getString("title");
				String url = rs.getString("url");
				String author = rs.getString("author");
				String email = rs.getString("email");
				String url_daidien = rs.getString("url_daidien");
				boolean isFocus = rs.getBoolean("focus");
				String header = rs.getString("header");

				topic.setHeader(header);
				topic.setId(iD);
				topic.setType(type);
				topic.setContent(content);
				topic.setTitle(title);
				topic.setUrl(url);
				topic.setAuthor(author);
				topic.setEmail(email);
				topic.setUrl_daidien(url_daidien);
				topic.setFocus(isFocus);
				topic.setDateCreated(date);
				topics.add(topic);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return topics;
	}

	/**
	 * Phương thức tông quát load tất cả các bài viết theo state của bài viết đó <br>
	 * ví dụ: load tất cả các bài viết có state là waiting
	 * 
	 * @param stateId
	 *            id của state. vd: posted
	 * @return danh sách chứa các bài viết có state nhập vào
	 * */
	private static List<TopicEntity> loadByState(String stateId) {
		List<TopicEntity> topics = new ArrayList<>();
		String sql = "SELECT * FROM TOPIC WHERE state_id = ?";
		ResultSet rs = Utils.util.getResultSet(sql, stateId);
		try {
			while (rs.next()) {
				TopicEntity topic = new TopicEntity();
				int iD = rs.getInt("id");
				String type = rs.getString("id_sub_menu");
				Date date = rs.getDate("date_created");
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
				String header = rs.getString("header");

				topic.setHeader(header);
				topics.add(topic);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return topics;
	}

	/**
	 * Phương load tất cả các bài viết có state là posted
	 * 
	 * @return danh sách chứa các bài viết có state là posted
	 * */
	public static List<TopicEntity> loadAllPosted() {
		return loadByState("posted");
	}

	/**
	 * Phương load tất cả các bài viết có state là waiting
	 * 
	 * @return danh sách chứa các bài viết có state là waiting
	 * */
	public static List<TopicEntity> loadAllWaiting() {
		return loadByState("waiting");
	}

	/**
	 * Phương load tất cả các bài viết có state là banned
	 * 
	 * @return danh sách chứa các bài viết có state là banned
	 * */
	public static List<TopicEntity> loadAllBanned() {
		return loadByState("banned");
	}

	/**
	 * Phương thức lấy ID sub_menu dựa vào ID của bài viết.
	 * 
	 * @param topicId
	 *            là id của topic
	 * @return String là id của sub_menu
	 * */
	public static String getSubMenuId(String topicId) {
		String sql = "SELECT id_sub_menu FROM TOPIC WHERE id = ? ";
		return loadString(sql, topicId);
	}

	/**
	 * Phương thức load trạng thái của một bài viết dựa vào id của bài viết
	 * 
	 * @param id
	 *            id của bài viết
	 * @return id của trạng thái của bài viết
	 * */
	public static String getTopicState(int id) {
		String sql = "SELECT state_id FROM TOPIC WHERE id = ?";
		ResultSet rs = Utils.util.getResultSet(sql, id + "");
		String stateName = "";
		try {
			while (rs.next()) {
				stateName = rs.getString("state_id");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return stateName;
	}

	/**
	 * Phương thức update bài viết
	 * 
	 * @param topic
	 *            một bài viết được update
	 * */
	public static void update(TopicEntity topic) {

		String sql = "UPDATE TOPIC SET "
				+ "author = ?,"
				+ "email = ?,"
				+ "id_sub_menu = ?,"
				+ "title = ?,"
				+ "url_daidien = ?,"
				+ "header = ?,"
				+ "content = ?,"
				+ "state_id = ?,"
				+ "url = ?, "
				+ "focus = ?"
				+ " WHERE id = ?";
		int[] indexes = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11 };
		Object[] values = {
				topic.getAuthor(),
				topic.getEmail(),
				topic.getType(),
				topic.getTitle(),
				topic.getUrl_daidien(),
				topic.getHeader(),
				topic.getContent(),
				topic.getState().getId(),
				topic.getUrl(),
				topic.getId(),
				topic.isFocus()
		};
		Utils.util.update(sql, indexes, values);
	}

	/**
	 * Phương thức xóa bài viết
	 * 
	 * @param id
	 *            id của bài viết
	 * */
	public static void delete(int id) {
		String sql = "DELETE FROM TOPIC WHERE id = ?";
		int[] indexes = { 1 };
		Object[] values = { id };
		Utils.util.delete(sql, indexes, values);
	}

}
