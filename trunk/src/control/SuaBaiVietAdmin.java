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
 * Servlet implementation class SuaBaiVietAdmi
 */
public class SuaBaiVietAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SuaBaiVietAdmin() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String topicId = request.getParameter("id");
		System.out.println(topicId);
		request.setAttribute("topicEditId", topicId);
		request.getRequestDispatcher("/suabaiviet.jsp").forward(request, response);
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
		String state = request.getParameter("state");
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
			topic.setHeader(header);
			topic.setState(new StateEntity(state, state));
			
			TopicDAO.update(topic);
//			request.getSession().setAttribute("topic", topic);
//			response.sendRedirect("template.jsp");
		} else {
			request.setAttribute("content", content);
			request.setAttribute("title", title);
			request.setAttribute("url", url);
			request.setAttribute("url_daidien", url_daidien);
			
			if (Validation.isNull(content)) request.setAttribute("errorContentNull", "Bạn chưa điền nội dung bài viết");
			if (Validation.isNull(title)) request.setAttribute("errorTitleNull", "Bạn chưa điền tiêu đề bài viết");
			if (Validation.isNull(url)) request.setAttribute("errorUrlNull", "Bạn chưa điền Url");
			
			request.getRequestDispatcher("/post.jsp").forward(request, response);
		}
	}

}
