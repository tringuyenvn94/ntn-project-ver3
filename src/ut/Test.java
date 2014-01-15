package ut;

import java.sql.ResultSet;

import handle.Utils;
import dao.BookmarkDAO;
import dao.TopicDAO;


public class Test {
	public static void main(String[] args) throws Exception {
		System.out.println(BookmarkDAO.isBookmarked(1, 1));
	}
}