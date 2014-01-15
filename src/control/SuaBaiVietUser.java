package control;

import handle.Validation;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.TopicDAO;
import entity.StateEntity;
import entity.TopicEntity;

/**
 * Servlet implementation class SuaBaiVietUser
 */
public class SuaBaiVietUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SuaBaiVietUser() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String topicId = request.getParameter("id");
		System.out.println(topicId);
		request.setAttribute("topicEditId", topicId);
		request.getRequestDispatcher("/suabai.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf8");
		response.setCharacterEncoding("utf8");
		
		String content = request.getParameter("ta");
		String type = request.getParameter("linhvuc");
		String fullName = request.getParameter("name");
		String email = request.getParameter("email");
		String title = request.getParameter("title");
		String url = request.getParameter("url");
		String url_daidien = request.getParameter("url_daidien");
		String header = request.getParameter("header");
		String topicId = request.getParameter("topicid");
		if (
				!Validation.isNull(content) &&
				!Validation.isNull(fullName) &&
				!Validation.isNull(email) &&
				Validation.isEmail(email) &&
				!Validation.isNull(title) &&
				!Validation.isNull(url) &&
				!Validation.isNull(header)) {
			TopicEntity topic = new TopicEntity(content, type, title, url);
			topic.setAuthor(fullName);
			topic.setEmail(email);
			topic.setUrl_daidien(url_daidien);
			topic.setHeader("<p><strong>" + header + "</strong></p>");
			topic.setId(Integer.parseInt(topicId));
			
			TopicDAO.update(topic);
			response.sendRedirect("load?id=" + topicId);
		} else {
			request.setAttribute("topicEditId", topicId);
			request.getRequestDispatcher("/suabai.jsp").forward(request, response);
		}
	}

}
