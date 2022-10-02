package controlleur;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.setPasswordDao;
import models.SendEmail;
import models.User;

/**
 * Servlet implementation class setPassword
 */
@WebServlet("/setPassword")
public class setPassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private setPasswordDao setPasswordDao;
	private SendEmail send;
    
    public setPassword() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("setPassword.jsp").forward(request,response);
		}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String password=request.getParameter("password");
		String email=request.getParameter("email");
		
		System.out.println(email);
		System.out.println(password);
		User us=new User();
		
		us.setPassword(password);
		
		try {
			setPasswordDao.setPassword(us);
			response.sendRedirect("/projet/login");
			 send = new SendEmail(us.getEmail(),
					 "cher Utilisateur: "+us.getFirst_Name()+" "+us.getLast_Name().toUpperCase(), 
					 "le systeme de gestion mobilier vous informe qu'il y a des changement au niveau de votre mots de passe : \n"
					 +" votre securite est notre responsabilite pour cela nous avons envoyer cet e-mail ."
					                        );
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
	}

}
