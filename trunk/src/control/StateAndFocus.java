package control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.TopicDAO;
import entity.StateEntity;
import entity.TopicEntity;

/**
 * Servlet implementation class StateAndFocus
 */
public class StateAndFocus extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public StateAndFocus() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String focus = request.getParameter("focus");
		String stateId = request.getParameter("state_id");
		String id = request.getParameter("hiddenid");
		TopicEntity topic = TopicDAO.load(id);
		topic.setState(new StateEntity(stateId, stateId));
		if (focus == null) topic.setFocus(false);
		else topic.setFocus(true);
		TopicDAO.update(topic);
		response.sendRedirect("quanly.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
