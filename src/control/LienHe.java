package control;

import handle.Validation;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.LienHeDAO;
import entity.LienHeEntity;

/**
 * Servlet implementation class Navigation
 */
@WebServlet("/Navigation")
public class LienHe extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LienHe() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf8");
		response.setCharacterEncoding("utf8");

		String fullName = request.getParameter("txtFullName");
		String email = request.getParameter("txtEmail");
		String phone = request.getParameter("txtPhone");
		String address = request.getParameter("txtAddress");
		String company = request.getParameter("txtCompany");
		String contact = request.getParameter("slcContactCategory");
		String content = request.getParameter("txtContent");

		request.setAttribute("name", fullName);
		request.setAttribute("email", email);
		request.setAttribute("phone", phone);
		request.setAttribute("address", address);
		request.setAttribute("company", company);
		request.setAttribute("contact", contact);
		request.setAttribute("content", content);
		
		String[] attributes = {fullName, email, phone, address, company, contact, content};
		
			if (!Validation.isNulls(attributes)) {
				boolean isEmail = Validation.isEmail(email);
				boolean isPhone = Validation.isPhoneNumber(phone);
				if (isEmail && isPhone) {
					LienHeEntity lh = new LienHeEntity(fullName, email, phone, address, company, contact, content);
					LienHeDAO.LuuLienHe(lh);
					response.sendRedirect("lienhethanhcong.jsp");
				} else {
					RequestDispatcher dis = request.getRequestDispatcher("/lienhe.jsp");
					dis.forward(request, response);
				}
							
			} else {
				if (Validation.isNull(fullName))
				request.setAttribute("errorNameNull", "Vui lòng điền Họ và Tên vào");
				if (Validation.isNull(email))
				request.setAttribute("errorEmailNull", "Vui lòng điền Email vào");
				if (Validation.isNull(phone))
				request.setAttribute("errorPhoneNull", "Vui lòng điền Số điện thoại vào");
				if (Validation.isNull(address))
				request.setAttribute("errorAddressNull", "Vui lòng điền Địa chỉ vào");
				if (Validation.isNull(content))
				request.setAttribute("errorContentNull", "Vui lòng điền Nội dung vào");
				
				if (!Validation.isEmail(email))
					request.setAttribute("errorEmailInvalid", "Vui lòng điền đúng định dạng của Email");
				if (!Validation.isPhoneNumber(phone))
					request.setAttribute("errorPhoneInvalid", "Vui lòng điền đúng định dạng Số điện thoại");

				RequestDispatcher dis = request.getRequestDispatcher("/lienhe.jsp");
				dis.forward(request, response);
			}

	}

}
