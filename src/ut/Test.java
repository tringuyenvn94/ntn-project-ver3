package ut;

import java.util.List;

import dao.TopicDAO;
import entity.TopicEntity;

public class Test {
	public static void main(String[] args) throws Exception {
		List<TopicEntity> topics = TopicDAO.loadAllFocusTopic();
		for (TopicEntity topic : topics) System.out.println(topic.getTitle());
	}
}
