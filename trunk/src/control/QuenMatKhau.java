package control;

import handle.Validation;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.QuenMKDAO;

/**
 * Servlet implementation class QuenMatKhau
 */
public class QuenMatKhau extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public QuenMatKhau() {
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
		String email = request.getParameter("email");
		RequestDispatcher patcher = request.getRequestDispatcher("/error.jsp");
		request.setAttribute("email", email);
		if (Validation.isEmail(email)) {
			if (QuenMKDAO.sendMail(email)) {
				request.setAttribute("success", "quenmk");
				request.getRequestDispatcher("/thanhcong.jsp").forward(request, response);
			}
			else {
				// chuyen toi trang khong ton tai email
				request.setAttribute("error", "Email not exist");
				patcher.forward(request, response);
			}
		} else {
			// loi dinh dang email khong dung
			request.setAttribute("error", "Email invalid format");
			patcher.forward(request, response);
		}
	}

}
