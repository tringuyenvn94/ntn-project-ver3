package control;

import handle.Validation;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.RoleDAO;
import dao.StatusDAO;
import dao.UserDAO;
import entity.PowerEntity;
import entity.UserEntity;

/**
 * Servlet implementation class ThemThanhVien
 */
public class ThemThanhVien extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ThemThanhVien() {
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
		request.setCharacterEncoding("utf8");
		response.setCharacterEncoding("utf8");

		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String fullName = request.getParameter("full_name");
		String sex = request.getParameter("sex");
		String email = request.getParameter("email");
		String year = request.getParameter("year");
		String city = request.getParameter("city");
		String role = request.getParameter("role");
		String status = request.getParameter("status");
		/*
		 * 1. All fields is NOT NULL (except isRecieiveNewEmail & isShowEmail
		 * 2. password & confirmPassword is actually matched
		 * 3. handle email error
		 * 4. city actually choosen, isAccept too
		 * 5. year has to choosen
		 * 6. username HAS not TO exist in DB
		 */
		
		if (!Validation.isEmail(email) && !Validation.isNull(email))
			request.setAttribute("errorInvalidEmail", "Định dạng email không đúng, xin nhập lại.");

		if (city.equals("chontinhthanh"))
			request.setAttribute("errorCityNotYetChoosen", "Bạn chưa chọn tỉnh/thành phố, xin chọn tỉnh/thành phố.");

		if (year.equals("nam"))
			request.setAttribute("errorYearNotYetChoosen", "Xin hãy chọn năm sinh của bạn.");

		if (UserDAO.checkUsername(username))
			request.setAttribute("errorUsernameExisted", "Tài khoản này đã tồn tại. Hãy chọn tên đăng nhập khác.");
		if (UserDAO.isExistEmail(email)) request.setAttribute("errorExistedEmail", "Địa chỉ email này đã có tài khoản khác đăng kí, xin vui lòng điền địa chỉ email khác");
		
		if (Validation.isNull(username)) request.setAttribute("errorUsernameNull", "Xin hãy nhập Tên đăng nhập");
		if (Validation.isNull(password)) request.setAttribute("errorPasswordNull", "Xin hãy nhập mật khẩu");
		if (Validation.isNull(email)) request.setAttribute("errorEmailNull", "Xin hãy nhập email");
		if (Validation.isNull(fullName)) request.setAttribute("errorFullNameNull", "Xin hãy nhập họ và tên");

		request.setAttribute("username", username);
		request.setAttribute("fullName", fullName);
		request.setAttribute("email", email);
		request.setAttribute("sex", sex);
		
		
		if (Validation.isEmail(email) &&
				!city.equals("chontinhthanh") &&
				!year.equals("nam") &&
				!UserDAO.checkUsername(username) && 
				!UserDAO.isExistEmail(email)) {

			boolean isMale = false;
			if (sex.equals("male")) isMale = true;
			
			UserEntity user = new UserEntity(
					username,
					password,
					fullName,
					email,
					year,
					isMale,
					true,
					true,
					city);
			user.setDateReg(new Date());
			UserDAO.write(user);
			RoleDAO.insertUserToRole(user, new PowerEntity(role, role));
			StatusDAO.updateStatus(user, status);
			response.sendRedirect("quanly.jsp");
		} else request.getRequestDispatcher("/themthanhvien.jsp").forward(request, response);
	}

}
