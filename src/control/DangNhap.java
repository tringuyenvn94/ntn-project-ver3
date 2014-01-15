package control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.RoleDAO;
import dao.UserDAO;
import entity.UserEntity;

/**
 * Servlet implementation class DangNhap
 */
public class DangNhap extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public DangNhap() {
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
		String username = request.getParameter("username");
		String password = request.getParameter("password");

		/*
		 * Tạo user gồm username và password chỉ để mục đích duy nhất
		 * là kiểm tra xem có tồn tại user này trong DB hay không
		 */
		UserEntity user = new UserEntity(username, password);
		if (UserDAO.checkUser(user)) {
			HttpSession session = request.getSession();
			/*
			 * lấy user từ session, nếu có user rồi thì dùng user load từ DB
			 * ở bước (*) gán các thuộc tính: email, fullname cho nó.
			 * Còn nếu chưa có thì gán user từ bước (*) vào session
			 */
			UserEntity fromSession = (UserEntity) session.getAttribute("user");
			UserEntity fromDB = UserDAO.getUser(username);// (*)
			if (fromSession == null) session.setAttribute("user", fromDB);
			System.out.println("servlet dang nhap: " + (String) session.getAttribute("forward"));
			if ((String) session.getAttribute("forward") == null) {
				if (RoleDAO.getRole(fromDB).equals("admin")) {
					response.sendRedirect("quanly.jsp");
					session.setAttribute("role", "admin");
				}
				else {
					session.setAttribute("role", "user");
					response.sendRedirect("trangchu.jsp");
				}
			} else {
				response.sendRedirect("load?id=" + (String) session.getAttribute("forward") + "&forward=forward");
			}
		} else {
			request.setAttribute("error", "Mật khẩu hoặc tên tài khoản không đúng, xin kiểm tra lại");
			request.getRequestDispatcher("/dangnhap.jsp").forward(request, response);
		}

	}

}
