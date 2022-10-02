package controlleur;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.FamilleDAO;
import models.SendEmail;
import models.User;
import models.famille;
/**
 * Servlet implementation class famille
 */
@WebServlet(urlPatterns={"/register1","/edituser1","/modifier1","/deleteuser1"})
public class familleServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private FamilleDAO se ;
	private FamilleDAO userDAO=new FamilleDAO();
    RequestDispatcher dispatcher=null;
    public familleServ() {
        super();
        
        }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		 doPost(request, response);	
		}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  HttpSession session = request.getSession();

			String path =request.getServletPath();
	       
			if(path.equals("/register1")) {
	        	 dispatcher = request.getRequestDispatcher("addfam.jsp");
	     		dispatcher.forward(request, response);
			String nomFam=request.getParameter("nomFam");
			famille us=new famille();
			us.setNomfamille(nomFam);
			try {
				
				if(nomFam==null) {
					dispatcher = request.getRequestDispatcher("addfam.jsp");
				}else {
					userDAO.registrationUser(us);
					request.getRequestDispatcher("fam-list.jsp").forward(request, response);
				 dispatcher = request.getRequestDispatcher("/listFam");
				 dispatcher.forward(request, response);
				 }
			}catch(ClassNotFoundException e) {
				e.printStackTrace();
			}
		}
	         else if(path.equals("/edituser1")) {
	   	          int id=Integer.parseInt(request.getParameter("idFam"));
	   	          famille us=userDAO.getid(id);
	   	          System.out.println(us.toString());
	   	          request.setAttribute("us", us);
	   	          session.setAttribute("id", id);
	  			dispatcher = request.getRequestDispatcher("update-fam.jsp");
				dispatcher.forward(request, response);

	    }
	         else if(path.equals("/modifier1")) {
	        	 String nomFam=request.getParameter("nomFam");
                famille us=new famille();
	     		us.setIdFam((int) session.getAttribute("id"));
	    		us.setNomfamille(nomFam);
	    		 request.setAttribute("us", us);
	  	          try {
					userDAO.updateuser(us);
				} catch (ClassNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
	  	          Boolean modif =true;
	  	          request.setAttribute("us", us);
	  	          request.setAttribute("modif", modif);
	 			dispatcher = request.getRequestDispatcher("/listFam");
				dispatcher.forward(request, response);

	   }
	         else if(path.equals("/deleteuser1")) {
	        	 int id =Integer.parseInt(request.getParameter("idFam"));
	        	//System.out.println(id);
	        	userDAO.deleteUser(id);
	        	Boolean dlt =true;
	        	//request.setAttribute("us", us);
	        	request.setAttribute("dlt", dlt);
	  	          session.setAttribute("id", id);
	        	 
	        	 dispatcher = request.getRequestDispatcher("/listFam");
	 			dispatcher.forward(request, response);
	        	 
	         }
	       
	         }
		
		
		
		

}
