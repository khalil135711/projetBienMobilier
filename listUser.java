package controlleur;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import dao.userAdmin;
import models.User;

@WebServlet("/listUser")
public class listUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       private userAdmin userAdmin=new userAdmin();
  
    public listUser() {
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
		 List<User> users=userAdmin.getUser();
		
		request.setAttribute("users", users);
		request.getRequestDispatcher("user-list.jsp").forward(request,response);

		
	}

}
