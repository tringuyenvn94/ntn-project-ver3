package handle;

import java.sql.Connection;
import java.sql.SQLException;

import snaq.db.ConnectionPool;

public class MyConnection {

	public Connection conn;
	public MyConnection(String url) {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			// Properties prop = new Properties();
			//
			// prop.load(new FileInputStream("src/handle/account.properties"));
			// String username = prop.getProperty("username");
			// String password = prop.getProperty("password");

			ConnectionPool pool = new ConnectionPool("My Pool", 5, 5, 300000000L, url, "nv_ca", "nguyenvanchucan");
			conn = pool.getConnection();
		} catch (ClassNotFoundException e1) {
			e1.printStackTrace();
		} catch (SQLException e4) {
			e4.printStackTrace();
		}
	}
	
	public void disconnect() {
		try {
			this.conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
}
