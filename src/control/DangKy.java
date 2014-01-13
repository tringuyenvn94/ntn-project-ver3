package control;

import handle.Validation;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserDAO;
import entity.UserEntity;

/**
 * Servlet implementation class DangKy
 */
@WebServlet("/DangKy")
public class DangKy extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public DangKy() {
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
		String confirmPassword = request.getParameter("confirm_password");
		String fullName = request.getParameter("full_name");
		String sex = request.getParameter("sex");
		String email = request.getParameter("email");
		String year = request.getParameter("year");
		String city = request.getParameter("city");
		String isReceiveNewEmail = request.getParameter("is_receive_new_email");
		String isShowEmail = request.getParameter("is_show_email");
		String isAccept = request.getParameter("iAccept");
		/*
		 * 1. All fields is NOT NULL (except isRecieiveNewEmail & isShowEmail
		 * 2. password & confirmPassword is actually matched
		 * 3. handle email error
		 * 4. city actually choosen, isAccept too
		 * 5. year has to choosen
		 * 6. username HAS not TO exist in DB
		 */
		if (Validation.isNull(isShowEmail)) request.setAttribute("showEmail", "");
		else request.setAttribute("showEmail", "CHECKED");
		
		if (Validation.isNull(isReceiveNewEmail)) request.setAttribute("receiveEmail", "");
		else request.setAttribute("showEmail", "CHECKED");

		if (!password.equals(confirmPassword))
			request.setAttribute("errorPasswordNotMatched", "Mật khẩu của bạn không khớp, xin nhập lại.");

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
		if (Validation.isNull(confirmPassword)) request.setAttribute("errorConfirmPasswordNull", "Xin hãy nhập lại mật khẩu");
		if (Validation.isNull(email)) request.setAttribute("errorEmailNull", "Xin hãy nhập email");
		if (Validation.isNull(fullName)) request.setAttribute("errorFullNameNull", "Xin hãy nhập họ và tên");
		if (Validation.isNull(isAccept)) request.setAttribute("errorAcceptNotYetChoosen", "Bạn chưa đồng ý với điều khoản của chúng tôi. Xin hãy stick vào ô ở trên");
		String[] parameters = { username, password, confirmPassword, email, isAccept };


		request.setAttribute("username", username);
		request.setAttribute("fullName", fullName);
		request.setAttribute("email", email);
		request.setAttribute("sex", sex);
		
		
		if (password.equals(confirmPassword) && // Password phải giống nhau
				Validation.isEmail(email) && // đúng định dạng email
				!city.equals("chontinhthanh") && // đã chọn tỉnh thành rồi
				!year.equals("nam") && // đã chọn năm sinh rồi
				!Validation.isNulls(parameters) && // tất cả các trường không null
				!UserDAO.checkUsername(username) && 
				!UserDAO.isExistEmail(email)) {// username chưa tồn tại trong database

			boolean isMale = false;
			if (sex.equals("male")) isMale = true;
			boolean isReceiveEmail = false;
			if (isReceiveNewEmail != null) isReceiveEmail = true;
			boolean showEmail = false;
			if (isShowEmail != null) showEmail = true;

			UserEntity user = new UserEntity(
					username,
					password,
					fullName,
					email,
					year,
					isMale,
					isReceiveEmail,
					showEmail,
					city);
			user.setDateReg(new Date());
			UserDAO.write(user);
			request.setAttribute("success", "dangky");
			request.getRequestDispatcher("/thanhcong.jsp").forward(request, response);
		} else request.getRequestDispatcher("/dangky.jsp").forward(request, response);
	}
}
