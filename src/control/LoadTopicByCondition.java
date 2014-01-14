package control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoadTopicBy
 */
public class LoadTopicByCondition extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoadTopicByCondition() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String condition = request.getParameter("condition");
		switch (condition) {
		case "waiting":
			request.setAttribute("condition", "1");
			request.setAttribute("waiting", "SELECTED");
			request.setAttribute("posted", "");
			request.setAttribute("banned", "");
			request.setAttribute("all", "");
			request.setAttribute("desktop", "");
			request.setAttribute("didong", "");
			break;
		case "banned":
			request.setAttribute("condition", "2");
			request.setAttribute("waiting", "");
			request.setAttribute("posted", "");
			request.setAttribute("banned", "SELECTED");
			request.setAttribute("all", "");
			request.setAttribute("desktop", "");
			request.setAttribute("didong", "");
			break;
		case "posted":
			request.setAttribute("condition", "3");
			request.setAttribute("waiting", "");
			request.setAttribute("posted", "SELECTED");
			request.setAttribute("banned", "");
			request.setAttribute("all", "");
			request.setAttribute("desktop", "");
			request.setAttribute("didong", "");
			break;
		case "all":
			request.setAttribute("condition", "4");
			request.setAttribute("waiting", "");
			request.setAttribute("posted", "");
			request.setAttribute("banned", "");
			request.setAttribute("all", "SELECTED");
			request.setAttribute("desktop", "");
			request.setAttribute("didong", "");
			break;
		case "desktop":
			request.setAttribute("condition", "5");
			request.setAttribute("waiting", "");
			request.setAttribute("posted", "");
			request.setAttribute("banned", "");
			request.setAttribute("all", "");
			request.setAttribute("desktop", "SELECTED");
			request.setAttribute("didong", "");
			break;
		case "didong":
			request.setAttribute("condition", "6");
			request.setAttribute("waiting", "");
			request.setAttribute("posted", "");
			request.setAttribute("banned", "");
			request.setAttribute("all", "");
			request.setAttribute("desktop", "");
			request.setAttribute("didong", "SELECTED");
			break;	
		}
		
		request.getRequestDispatcher("/quanly.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
