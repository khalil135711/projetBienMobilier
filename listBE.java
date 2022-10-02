package controlleur;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.bienDAO;
import dao.bondeDAO;
import models.bien;
import models.bonde;
import models.famille;

@WebServlet("/listBE")
public class listBE extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private bondeDAO userDAO=new bondeDAO();

    public listBE() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 List<bonde> users=userDAO.getUser();
			
			request.setAttribute("users", users);
			request.getRequestDispatcher("genererCodeBar.jsp").forward(request,response);

	}

}
