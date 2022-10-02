package controlleur;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import dao.bienDAO;
import dao.messageDAO;
import models.message;

@WebServlet("/message")
public class Msg extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private messageDAO userDAO=new messageDAO();
	 RequestDispatcher dispatcher=null;
    public Msg() {
        super();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		  doPost(request, response);		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 HttpSession session = request.getSession();

			String path =request.getServletPath();
	       
			if(path.equals("/message")) {
				
		dispatcher = request.getRequestDispatcher("message.jsp");
  	dispatcher.forward(request, response);
		
		String msg=request.getParameter("msg");
		String nomEm=request.getParameter("nomEm");
		
		message us=new message();
		us.setMsg(msg);
		us.setNomEm(nomEm);
	}
	}

	

}
