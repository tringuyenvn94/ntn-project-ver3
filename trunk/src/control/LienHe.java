package control;

import handle.Validation;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.LienHeDAO;
import entity.LienHeEntity;

/**
 * Servlet implementation class Navigation
 */
public class LienHe extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LienHe() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("process_lh");
		if (action.equals("readall")) LienHeDAO.forceAllRead();
		if (action.equals("deleteall")) LienHeDAO.deleteAll();
		response.sendRedirect("quanly.jsp");
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

		if (Validation.isNull(fullName))
			request.setAttribute("errorNameNull", "Xin hãy điền tên vào.");
		if (Validation.isNull(address))
			request.setAttribute("errorAddressNull", "Xin hãy điền địa chỉ vào");
		if (Validation.isNull(content))
			request.setAttribute("errorContentNull", "Xin hãy điền nội dung vào");

		if (Validation.isNull(email)) request.setAttribute("errorEmailNull", "Xin hãy điền email vào");
		else request.setAttribute("errorEmailInvalid", "Vui lòng điền đúng định dạng email");
		if (Validation.isNull(phone)) request.setAttribute("errorPhoneNull", "Xin hãy điền số điện thoại vào");
		else request.setAttribute("errorPhoneInvalid", "Vui lòng điền đúng định dạng số điện thoại");
		String url = "/lienhe.jsp";

		String[] attributes = { fullName, email, phone, address, company, contact, content };
		if (!Validation.isNulls(attributes)) {
			boolean isEmail = Validation.isEmail(email);
			boolean isPhone = Validation.isPhoneNumber(phone);
			if (isEmail && isPhone) {
				LienHeEntity lh = new LienHeEntity(fullName, email, phone, address, company, contact, content);
				LienHeDAO.LuuLienHe(lh);
				request.setAttribute("success", "lienhe");
				url = "/thanhcong.jsp";
			}
		}

		RequestDispatcher dis = request.getRequestDispatcher(url);
		System.out.println(url);
		dis.forward(request, response);

	}

}
