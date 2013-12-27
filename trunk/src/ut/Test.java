package ut;

import java.sql.SQLException;

import dao.QuenMKDAO;
import dao.UserDAO;
import entity.UserEntity;

public class Test {
	public static void main(String[] args) throws SQLException {
		QuenMKDAO.resetPassword("nv_ca@yahoo.com");
	}
}
