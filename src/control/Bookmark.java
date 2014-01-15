package control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.BookmarkDAO;

/**
 * Servlet implementation class Bookmark
 */
public class Bookmark extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Bookmark() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		String tid = request.getParameter("tid");
		if (action.equals("login")) {
			request.getSession().setAttribute("forward", tid);
			request.getRequestDispatcher("/dangnhap.jsp").forward(request, response);
		} else {
			String uid = request.getParameter("uid");
			if (action.equals("delete")) {
				BookmarkDAO.delete(Integer.parseInt(uid), Integer.parseInt(tid));
				response.sendRedirect("load?id=" + tid);
			} else {
				BookmarkDAO.add(Integer.parseInt(uid), Integer.parseInt(tid));
				response.sendRedirect("load?id=" + tid);
			}
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
