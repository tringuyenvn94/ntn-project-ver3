package ut;

import dao.TopicDAO;


public class Test {
	public static void main(String[] args) throws Exception {
		System.out.println(TopicDAO.loadLastedTopic("trongnuoc").getTitle());
	}
}