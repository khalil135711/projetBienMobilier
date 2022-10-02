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

import dao.userAdmin;
import models.SendEmail;
import models.User;

@WebServlet(urlPatterns={"/register","/edituser","/modifier","/deleteuser"})
public class addUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
	private userAdmin userDAO=new userAdmin();
    private SendEmail send;
    RequestDispatcher dispatcher=null;

    
    public addUser() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
                doPost(request, response);		
		 
	    }

	    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	       HttpSession session = request.getSession();

		String path =request.getServletPath();
       
		if(path.equals("/register")) {
        	 dispatcher = request.getRequestDispatcher("addUser.jsp");
     		dispatcher.forward(request, response);
		String username=request.getParameter("username");
		String firstname=request.getParameter("firstname");
		String lastname=request.getParameter("lastname");
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		String role=request.getParameter("role");
		
		User us=new User();
		us.setUsername(username);
		us.setFirst_Name(firstname);
		us.setLast_Name(lastname);
		us.setEmail(email);
		us.setPassword(password);
		us.setRole(role);
		
		
		try {
			userDAO.registrationUser(us);
			
			 send = new SendEmail(us.getEmail(),
					 "bienvenue cher Utilisateur: "+us.getFirst_Name()+" "+us.getLast_Name().toUpperCase(), 
					 "l'admin de site de gestion mobilier vient de creer votre compte : \n"
					 +"votre username est: "+us.getUsername()+"\n"+
					"votre mots de passe est : "+us.getPassword()+"\n"+
					"pour votre securite on vous conseille de changer le mots de pass par ici : http://localhost:8080/projet/home"
					                        );
			 dispatcher = request.getRequestDispatcher("/listUser");
			 dispatcher.forward(request, response);
		}catch(ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
         else if(path.equals("/edituser")) {
   	          int id=Integer.parseInt(request.getParameter("id"));
   	          User us=userDAO.getid(id);
   	          
   	          System.out.println(us.toString());
   	          request.setAttribute("us", us);
   	          session.setAttribute("id", id);
  			dispatcher = request.getRequestDispatcher("update-user.jsp");
			dispatcher.forward(request, response);

    }
         else if(path.equals("/modifier")) {
        	 String username=request.getParameter("username");
     		 String firstname=request.getParameter("firstname");
     		 String lastname=request.getParameter("lastname");
     		 String email=request.getParameter("email");
     		 String password=request.getParameter("password");
     		 String role=request.getParameter("role");
     		
     		User us=new User();
     		us.setId((int) session.getAttribute("id"));
    		us.setUsername(username);
    		us.setFirst_Name(firstname);
    		us.setLast_Name(lastname);
    		us.setEmail(email);
    		us.setPassword(password);
    		us.setRole(role);
  	          try {
				userDAO.updateuser(us);
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
  	         
  	        //  System.out.println(us.toString());
  	          Boolean modif =true;
  	          request.setAttribute("us", us);
  	          request.setAttribute("modif", modif);
 			dispatcher = request.getRequestDispatcher("/listUser");
			dispatcher.forward(request, response);

   }
         else if(path.equals("/deleteuser")) {
        	 int id =Integer.parseInt(request.getParameter("id"));
        	//System.out.println(id);
        	userDAO.deleteUser(id);
        	Boolean dlt =true;
        	//request.setAttribute("us", us);
        	request.setAttribute("dlt", dlt);
  	          session.setAttribute("id", id);
        	 
        	 dispatcher = request.getRequestDispatcher("/listUser");
 			dispatcher.forward(request, response);
        	 
         }
       
         }
	
	
	
	

}



