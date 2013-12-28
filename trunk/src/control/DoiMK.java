package control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UserDAO;
import entity.UserEntity;

/**
 * Servlet implementation class DoiMK
 */
public class DoiMK extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public DoiMK() {
		super();
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
		String oldPassword = request.getParameter("old_password");
		String newPassword = request.getParameter("new_password");
		String confirmNewPassword = request.getParameter("confirm_new_password");

		HttpSession session = request.getSession();
		UserEntity user = (UserEntity) session.getAttribute("user");
		user.setPassword(oldPassword);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/error.jsp");
		if (oldPassword != null && newPassword != null && confirmNewPassword != null) {
			if (UserDAO.checkUser(user)) { // sure old password in text field is correct with password in DB
				if (newPassword.equals(confirmNewPassword)) { // case 2 new passwords matched
					if (oldPassword.equals(newPassword)) { // if the same > error
						request.setAttribute("error", "the same");
						dispatcher.forward(request, response);
					} else {// successful
						UserDAO.setPassword(user.getUsername(), confirmNewPassword);
						request.setAttribute("success", "doimk");
						request.getRequestDispatcher("/thanhcong.jsp").forward(request, response);
					}
				} else {// not matched
					request.setAttribute("error", "not matched");
					dispatcher.forward(request, response);
				}
			} else {
				request.setAttribute("error", "some null");
				dispatcher.forward(request, response);
			}
		}
	}

}
