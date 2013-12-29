package dao;

import handle.MyConnection;

import java.sql.ResultSet;

public class TopicDAO {
	/**
	 * Load toàn bộ lĩnh vực từ database
	 * @return một resultset chứa toàn bộ lĩnh vực
	 * */
	public static ResultSet loadLinhVuc() {
		String sql = "SELECT * FROM LINHVUC";
		return MyConnection.myConn.getResultSet(sql);
	}
}
