package ut;

import handle.Utils;

import java.sql.ResultSet;

import dao.LienHeDAO;
import dao.TopicDAO;

public class Test {
	public static void main(String[] args) throws Exception {
	int page = 4;
	for (int i = (page - 1) * 30; i < page * 30; i ++) {
		System.out.println(i);
	}
	}
}