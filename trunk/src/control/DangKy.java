package control;

import handle.Validation;

import java.io.IOException;

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
		String isAccept = request.getParameter("is_accept");


		/*
		 * 1. All fields is NOT NULL (except isRecieiveNewEmail & isShowEmail
		 * 2. password & confirmPassword is actually matched
		 * 3. handle email error
		 * 4. city actually choosen, isAccept too
		 * 5. year has to choosen
		 * 6. username HAS not TO exist in DB
		 */

		request.setAttribute("username", username);
		request.setAttribute("fullName", fullName);
		request.setAttribute("email", email);
		request.setAttribute("sex", sex);
		if (isReceiveNewEmail == null) request.setAttribute("isReceiveNewEmail", "");
		if (isShowEmail == null) request.setAttribute("isShowEmail", "");

		boolean isMatched, isEmail, isChoosen, isYearChoosen, isUsernameExist;

		if (!(isMatched = password.equals(confirmPassword))) {
			request.setAttribute("errorPasswordNotMatched", "Mật khẩu của bạn không khớp, xin nhập lại.");
		}
		if (!(isEmail = Validation.isEmail(email))) {
			request.setAttribute("errorInvalidEmail", "Định dạng email không đúng, xin nhập lại.");
		}
		if (isChoosen = city.equals("chontinhthanh")) {
			request.setAttribute("errorCityNotYetChoosen", "Bạn chưa chọn tỉnh/thành phố, xin chọn tỉnh/thành phố.");
		}

		if (isYearChoosen = year.equals("nam")) {
			request.setAttribute("errorYearNotYetChoosen", "Xin hãy chọn năm sinh của bạn.");
		}

		if (isUsernameExist = UserDAO.checkUsername(username)) {
			request.setAttribute("errorUsernameExisted", "Tài khoản này đã tồn tại.");
		}

		request.setAttribute("errorUsernameNull", "Xin hãy nhập Tên đăng nhập");
		request.setAttribute("errorPasswordNull", "Xin hãy nhập mật khẩu");
		request.setAttribute("errorConfirmPasswordNull", "Xin hãy nhập lại mật khẩu");
		request.setAttribute("errorEmailNull", "Xin hãy nhập email");
		request.setAttribute("errorFullNameNull", "Xin hãy nhập họ và tên");
		request.setAttribute("errorAcceptNotYetChoosen", "Bạn chưa đồng ý với điều khoản của chúng tôi.");
		String[] parameters = { username, password, confirmPassword, email, isAccept };
		if (isMatched && isEmail && !isChoosen && !isYearChoosen && !Validation.isNulls(parameters) && !isUsernameExist) {
			boolean isMale = false;
			if (sex.equals("male")) isMale = true;
			boolean isReceiveEmail = false;
			if (isReceiveNewEmail != null) isReceiveEmail = true;
			boolean showEmail = false;
			if (isShowEmail != null) showEmail = true;

			UserEntity user = new UserEntity(username, password, fullName, email, year, isMale, isReceiveEmail, showEmail, city);
			UserDAO.write(user);
		} else
			request.getRequestDispatcher("/dangki.jsp").forward(request, response);
	}
}
