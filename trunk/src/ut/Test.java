package ut;

import handle.Validation;

import java.text.SimpleDateFormat;
import java.util.Date;

import dao.StatusDAO;
import dao.TopicDAO;
import dao.UserDAO;
import entity.UserEntity;

public class Test {
	public static void main(String[] args) throws Exception {
		System.out.println(TopicDAO.loadMainMenu("55"));
	}
}