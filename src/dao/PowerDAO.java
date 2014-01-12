package dao;

import handle.Utils;

import java.sql.ResultSet;
import java.sql.SQLException;

import entity.PowerEntity;

public class PowerDAO {
	
	public static PowerEntity getUserPwr() {
		PowerEntity p = new PowerEntity();
		String sql = "SELECT * FROM POWER WHERE id_chucnang = ?";
		ResultSet rs = Utils.util.getResultSet(sql, "user");
		try {
			while (rs.next()) {
				String id = rs.getString(1);
				String name = rs.getString(2);
				p.setId(id);
				p.setName(name);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return p;
	}

}
