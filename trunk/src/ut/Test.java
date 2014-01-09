package ut;

import java.util.List;

import dao.TopicDAO;
import entity.TopicEntity;



public class Test {
	public static void main(String[] args) throws Exception {
		List<TopicEntity> topics = TopicDAO.loadBeforeLasted();
    	TopicEntity topic1 = topics.get(0);
    	TopicEntity topic2 = topics.get(1);
    	TopicEntity topic3 = topics.get(2);
    	System.out.println(topic1.getId());
    	System.out.println(topic2.getId());
    	System.out.println(topic3.getId());
}
}
