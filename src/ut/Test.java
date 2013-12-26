package ut;

import java.sql.SQLException;

import dao.UserDAO;

public class Test {
	public static void main(String[] args) throws SQLException {
	System.out.println(UserDAO.checkUsername("nv_ca"));
	}
}
