package ut;

import dao.TopicDAO;
import entity.TopicEntity;


public class Test {


	public static void main(String[] args) throws Exception {
		TopicEntity t1 = TopicDAO.loadLastedTopic();
		TopicEntity t2 = new TopicEntity();
		System.out.println("Date created t1: " + t1.getDateCreated().getTime() + "\t content: " + t1.getContent());
		System.out.println("Date created t2: " + t2.getDateCreated().getTime());
		System.out.println(TopicDAO.separate(t2, t1));
	}
}
