package ut;

import dao.UserDAO;


public class Test {
	public static void main(String[] args) throws Exception {
		System.out.println(UserDAO.getEmail("nv_ca"));
	}
}
