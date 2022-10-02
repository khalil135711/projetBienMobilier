package controlleur;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import dao.bonSortieDAO;
import models.bonsortie;


@WebServlet(urlPatterns={"/registerBonds","/editBonds","/modifierBonds","/deleteBonds","/adminaccepterBonds"})
public class addBonDS extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private bonSortieDAO userDAO=new bonSortieDAO(); 
	InputStream inputStream, inputStreamPdf;
    RequestDispatcher dispatcher=null;
       
    public addBonDS() {
        super();
        
        }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 doPost(request, response);		}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();

		String path =request.getServletPath();
       
		if(path.equals("/registerBonds")) {
		 try {	
        Date dateBS= Date.valueOf(request.getParameter("dateBS")); 
		int qteServie=Integer.parseInt(request.getParameter("qteServie"));
		String idFam=request.getParameter("idFam");
		String nomDem=request.getParameter("nomDem");
		System.out.println(dateBS);
		System.out.println(qteServie);
		System.out.println(idFam);
		System.out.println(nomDem);
		bonsortie us=new bonsortie();
		 us.setDateBS(dateBS);
		 us.setNomDemandeur(nomDem);
		 us.setRefBien(idFam);
		 us.setQteServie(qteServie);
		
			userDAO.registrationBonde(us);
			Boolean add =true;
	          request.setAttribute("add", add);

			dispatcher = request.getRequestDispatcher("addBonds.jsp");
			 dispatcher.forward(request, response);
			
		}catch(ClassNotFoundException e) {
			e.printStackTrace();
			/*dispatcher = request.getRequestDispatcher("addBonds.jsp");
	 		dispatcher.forward(request, response);*/
		}
		
	}
         else if(path.equals("/editBonds")) {
   	          int id=Integer.parseInt(request.getParameter("id"));
   	       bonsortie us=userDAO.getid(id);
   	          
   	          System.out.println(us.toString());
   	          request.setAttribute("us", us);
   	          session.setAttribute("id", id);
  			dispatcher = request.getRequestDispatcher("update-bonds.jsp");
			dispatcher.forward(request, response);

    }
         else if(path.equals("/modifierBonds")) {
        	 String username=request.getParameter("username");
     		 String firstname=request.getParameter("firstname");
     		 String lastname=request.getParameter("lastname");
     		 String email=request.getParameter("email");
     		 String password=request.getParameter("password");
     		 String role=request.getParameter("role");
     		
     		bonsortie us=new bonsortie();
     		//us.setId((int) session.getAttribute("id"));
    		//us.setUsername(username);
    		//us.setFirst_Name(firstname);
    		//us.setLast_Name(lastname);
    		//us.setEmail(email);
    		//us.setPassword(password);
    		//us.setRole(role);
  	          try {
				userDAO.updateuser(us);
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
  	         
  	        //  System.out.println(us.toString());
  	          Boolean modif =true;
  	          request.setAttribute("us", us);
  	        request.setAttribute("us", us);
  	          request.setAttribute("modif", modif);
 			dispatcher = request.getRequestDispatcher("/listBonde");
			dispatcher.forward(request, response);

   }
         else if(path.equals("/deleteBonds")) {
        	 int id =Integer.parseInt(request.getParameter("idBonDS"));
        	System.out.println(id);
        	userDAO.deleteBonde(id);
        	Boolean dlt =true;
        	//request.setAttribute("us", us);
        	request.setAttribute("dlt", dlt);
  	          session.setAttribute("id", id);
        	 
        	 dispatcher = request.getRequestDispatcher("/adminlistBS");
 			dispatcher.forward(request, response);
        	 
         }
	}

}
