package controlleur;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.login;
import models.User;

@WebServlet(name="Authentication",urlPatterns = {"/login","/logout"})
public class auth extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private login login;

	public auth() {
		super();
	}

	public void init() {
		login = new login();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String path = request.getServletPath();

		if (path.equals("/logout")) {
			request.getSession().invalidate();
			response.sendRedirect("/projet");
		} else if (path.equals("/login")) {
			request.getRequestDispatcher("auth.jsp").forward(request, response);

		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String parh = request.getServletPath();
		try {
			String username = request.getParameter("username");
			String password = request.getParameter("password");
            request.setAttribute(username, "usr");
            User user = login.getUser(username, password);
			if (user == null ) {
				request.getRequestDispatcher("auth.jsp").forward(request, response);
			} 
			else {
				request.getSession().setAttribute("user", user);
				response.sendRedirect("/projet");
			}
		} catch (Exception e) {
			response.sendError(404, e.getMessage());
		}
	}

}
