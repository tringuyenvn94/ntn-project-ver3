package ut;

import java.sql.SQLException;

import dao.UserDAO;
import entity.UserEntity;

public class Test {
	public static void main(String[] args) throws SQLException {
	System.out.println(UserDAO.checkUser(new UserEntity("nguyenvanchucan", "")));
	}
}
