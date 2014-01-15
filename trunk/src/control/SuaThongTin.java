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
 * Servlet implementation class SuaThongTin
 */
@WebServlet("/SuaThongTin")
public class SuaThongTin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SuaThongTin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		toDo(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		toDo(request, response);
	}
	
	public void toDo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf8");
		response.setCharacterEncoding("utf8");
		String username = request.getParameter("username");
		String fullName = request.getParameter("full_name");
		String email = request.getParameter("email");
		String sex = request.getParameter("sex");
		System.out.println(sex);
		String year = request.getParameter("year");
		String city = request.getParameter("city");

		if (!Validation.isEmail(email) && !Validation.isNull(email))
			request.setAttribute("errorInvalidEmail", "Định dạng email không đúng, xin nhập lại.");
		if (Validation.isNull(email)) request.setAttribute("errorEmailNull", "Xin hãy nhập email");
		if (Validation.isNull(fullName)) request.setAttribute("errorFullNameNull", "Xin hãy nhập họ và tên");

		if (city.equals("chontinhthanh"))
			request.setAttribute("errorCityNotYetChoosen", "Bạn chưa chọn tỉnh/thành phố, xin chọn tỉnh/thành phố.");

		if (year.equals("nam"))
			request.setAttribute("errorYearNotYetChoosen", "Xin hãy chọn năm sinh của bạn.");
	
		if (sex.equals("male")) {
			request.setAttribute("male", "CHECKED");
			request.setAttribute("female", "");
		} else if (sex.equals("female")) {
			request.setAttribute("male", "");
			request.setAttribute("female", "CHECKED");
		}
		String[] parameters = { username, fullName, email };
		request.setAttribute("fullName", fullName);
		request.setAttribute("email", email);
		request.setAttribute("username", username);
		if (Validation.isEmail(email) &&
				!city.equals("chontinhthanh") && 
				!year.equals("nam") &&
				!Validation.isNulls(parameters)){
			UserEntity user = UserDAO.getUser(username);
			user.setFullName(fullName);
			user.setEmail(email);
			boolean isMale = false;
			if (sex.equals("male")) isMale = true;
			else isMale = false;
			user.setMale(isMale);
			user.setCity(city);
			user.setYear(year);
			UserDAO.updateInfo(user, "user", "actived");
			request.setAttribute("success", "updateinfouser");
			request.setAttribute("uname", user.getUseName());
			request.getRequestDispatcher("/thanhcong.jsp").forward(request, response);
		} else request.getRequestDispatcher("/suathongtin.jsp").forward(request, response);

	}

}
