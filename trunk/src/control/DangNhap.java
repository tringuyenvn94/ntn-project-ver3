package control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UserDAO;
import entity.UserEntity;

/**
 * Servlet implementation class DangNhap
 */
@WebServlet("/DangNhap")
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
		
		UserEntity user = new UserEntity(username, password);
		if (UserDAO.checkUser(user)) {
			HttpSession session = request.getSession();
			UserEntity u = (UserEntity) session.getAttribute("user");
			if (u == null) session.setAttribute("user", user);
			response.sendRedirect("trangchu.jsp");
			
		} else {
			request.setAttribute("error", "Mật khẩu hoặc tên tài khoản không đúng, xin kiểm tra lại");
			request.getRequestDispatcher("/dangnhap.jsp").forward(request, response);
		}
		
		
	}

}
