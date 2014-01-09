package control;

import handle.Validation;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.TopicDAO;
import entity.TopicEntity;

/**
 * Servlet implementation class Topic
 */
public class Topic extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Topic() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String content = request.getParameter("ta");
		String type = request.getParameter("linhvuc");
		String fullName = request.getParameter("name");
		String email = request.getParameter("email");
		String title = request.getParameter("title");
		String url = request.getParameter("url");
		String url_daidien = request.getParameter("url_daidien");
		
		if (
				!Validation.isNull(content) &&
				!Validation.isNull(fullName) &&
				!Validation.isNull(email) &&
				Validation.isEmail(email) &&
				!Validation.isNull(title) &&
				!Validation.isNull(url)) {
			TopicEntity topic = new TopicEntity(content, type, title, url);
			topic.setAuthor(fullName);
			topic.setEmail(email);
			topic.setUrl_daidien(url_daidien);
			
			TopicDAO.save(topic);
			request.getSession().setAttribute("topic", topic);
			response.sendRedirect("template.jsp");
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
