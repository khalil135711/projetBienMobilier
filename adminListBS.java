package controlleur;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.bonSortieDAO;
import models.bonde;
import models.bonsortie;

@WebServlet("/adminlistBS")
public class adminListBS extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private bonSortieDAO userDAO=new bonSortieDAO();  
    /**
     * @see HttpServlet#HttpServlet()
     */
    public adminListBS() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request,response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 List<bonsortie> users=userDAO.getUser();
			
			request.setAttribute("users", users);
			request.getRequestDispatcher("adminListBS.jsp").forward(request,response);

	}

}
