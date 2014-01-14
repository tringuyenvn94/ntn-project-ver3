package handle;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Utils {

	private PreparedStatement ps;
	private MyConnection mc = new MyConnection("jdbc:mysql://localhost:3306/laptrinhweb?autoReconnect=true&useUnicode=true&characterEncoding=utf8");
	public static Utils util = new Utils();
	/**
	 * Phương thức tổng quát cho câu lệnh executeUpate
	 * 
	 * @param sql
	 *            câu lệnh sql cho prepared statement
	 * @param indexes
	 *            mảng lưu các chỉ số index cho prepared statement set vào
	 * @param values
	 *            mảng các giá trị cho prepared statement set vào
	 * @return số int cho biết số dòng bị ảnh hưởng, thêm vào
	 * */
	public int execute(String sql, int[] indexes, Object[] values) {
		int row = -1;
		try {
			ps = mc.conn.prepareStatement(sql);
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

	/**
	 * Lấy Result Set có điều kiện là một tham số duy nhất
	 * 
	 * @param sql
	 *            câu sql (dạng prepared statement)
	 * @param attribute
	 *            tham số trong điều kiện
	 * @return resultset tương ứng với câu sql
	 * */
	public ResultSet getResultSet(String sql, String attribute) {
		ResultSet rs = null;
		try {
			PreparedStatement ps = mc.conn.prepareStatement(sql);
			ps.setString(1, attribute);
			rs = ps.executeQuery();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return rs;
	}

	/**
	 * Lấy ra result set nhưng không cần điều kiện
	 * 
	 * @param sql
	 *            câu sql (dạng statement bình thường)
	 * @return resultset
	 * */
	public ResultSet getResultSet(String sql) {
		ResultSet result = null;
		try {
			Statement stmt = mc.conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
			result = stmt.executeQuery(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
	
	/**
	 * Phương thức tổng quát load ResultSet
	 * 
	 * @param sql
	 *            câu lệnh sql cho prepared statement
	 * @param indexes
	 *            mảng lưu các chỉ số index cho prepared statement set vào
	 * @param values
	 *            mảng các giá trị cho prepared statement set vào
	 * @return ResultSet là kết quả trả về của câu sql
	 * */
	public ResultSet executeQuery(String sql, int[] indexes, Object[] values) {
		ResultSet rs = null;
		try {
			ps = mc.conn.prepareStatement(sql);
			for (int i = 0; i < indexes.length; i++) {
				ps.setObject(indexes[i], values[i]);
			}
			rs = ps.executeQuery();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rs;
	}
}
