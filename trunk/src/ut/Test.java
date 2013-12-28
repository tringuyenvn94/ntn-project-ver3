package ut;

import java.sql.SQLException;

import dao.QuenMKDAO;

public class Test {
	public static void main(String[] args) throws SQLException {
		System.out.println(QuenMKDAO.sendMail("camuyen2202@gmail.com"));
	}
}
