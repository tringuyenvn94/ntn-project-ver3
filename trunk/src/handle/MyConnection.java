package handle;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import snaq.db.ConnectionPool;

public class MyConnection {

	private Connection conn;
	private PreparedStatement ps;
	private ResultSet rs;
	
	public static MyConnection myConn = new MyConnection("jdbc:mysql://localhost:3306/laptrinhweb");
	
	public MyConnection(String url) {
		try {
			Class.forName("com.mysql.jdbc.Driver");
//			Properties prop = new Properties();
//
//			prop.load(new FileInputStream("src/handle/account.properties"));
//			String username = prop.getProperty("username");
//			String password = prop.getProperty("password");

			ConnectionPool pool = new ConnectionPool("My Pool", 5, 5, 30000, url, "nv_ca", "nguyenvanchucan");
			conn = pool.getConnection();
		} catch (ClassNotFoundException e1) {
			e1.printStackTrace();
		} catch (SQLException e4) {
			e4.printStackTrace();
		}
	}
	
	public int execute(String sql, int[] indexes, Object[] values){
		int row = -1;
		try {
			ps = conn.prepareStatement(sql);
			for (int i = 0; i < indexes.length; i++) {
				ps.setObject(indexes[i], values[i]);
			}
			row = ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return row;
	}

	public int insert(String sql, int[] indexes, Object[] values) {
		return execute(sql, indexes, values);
	}
	
	public int update(String sql, int[] indexes, Object[] values) {
		return execute(sql, indexes, values);
	}

	public int delete(String sql, int[] indexes, Object[] values) {
		return execute(sql, indexes, values);
	}
}
