package ut;

import handle.Validation;

import java.text.SimpleDateFormat;
import java.util.Date;

import dao.StatusDAO;
import dao.UserDAO;
import entity.UserEntity;

public class Test {
	public static void main(String[] args) throws Exception {
		System.out.println(UserDAO.isExistEmail("nv_ca@yahoo.com"));
	}
}