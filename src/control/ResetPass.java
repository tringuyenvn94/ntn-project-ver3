package control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.RoleDAO;
import dao.StatusDAO;
import dao.UserDAO;
import entity.UserEntity;

/**
 * Servlet implementation class ResetPass
 */
@WebServlet("/ResetPass")
public class ResetPass extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ResetPass() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		UserEntity user = UserDAO.getUser(username);
		if (UserDAO.resetPassword(user.getEmail())) request.setAttribute("reseted", "Mật khẩu đã được reset");
		request.setAttribute("username", username);
		request.setAttribute("fullName", user.getFullName());
		request.setAttribute("email", user.getEmail());
		String role = RoleDAO.getRole(user);
		if (role.equals("admin")) {
			request.setAttribute("adminRole", "SELECTED");;
			request.setAttribute("userRole", "");
		} else if (role.equals("user")){
			request.setAttribute("adminRole", "");;
			request.setAttribute("userRole", "SELECTED");
		}
		
		String status = StatusDAO.getStatusName(user.getUserId());
		if (status.equals("Actived")) {
			request.setAttribute("statusActieve", "SELECTED");
			request.setAttribute("statusBan", "");
		} else if (status.equals("Banned")) {
			request.setAttribute("statusActieve", "");
			request.setAttribute("statusBan", "SELECTED");
		}
		
		boolean isMale = user.isMale();
		if (isMale) {
			request.setAttribute("male", "CHECKED");
			request.setAttribute("female", "");
		} else if (!isMale) {
			request.setAttribute("male", "");
			request.setAttribute("female", "CHECKED");
		}
		request.getRequestDispatcher("/suathanhvien.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
