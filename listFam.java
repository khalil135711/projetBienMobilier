package controlleur;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.FamilleDAO;
import models.famille;

/**
 * Servlet implementation class listFam
 */
@WebServlet("/listFam")
public class listFam extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 private FamilleDAO userAdmin=new FamilleDAO();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public listFam() {
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
		// TODO Auto-generated method stub
		 List<famille> users=userAdmin.getUser();
			
			request.setAttribute("users", users);
			request.getRequestDispatcher("fam-list.jsp").forward(request,response);

	}

}
