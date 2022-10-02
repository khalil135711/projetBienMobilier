package controlleur;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import dao.bondeDAO;
import dao.userAdmin;
import models.SendEmail;
import models.User;
import models.bonde;


@WebServlet(urlPatterns={"/registerBonde","/editBonde","/modifierBonde","/deletBonde"})
@MultipartConfig(fileSizeThreshold = 1024 * 1024, maxFileSize = 1024 * 1024 * 5, maxRequestSize = 1024 * 1024 * 5 * 5)

public class addBonDE extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private bondeDAO userDAO;
	InputStream inputStream, inputStreamPdf;
    RequestDispatcher dispatcher=null;
    public addBonDE() {
        super();
        userDAO=new bondeDAO();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 doPost(request, response);	
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String path =request.getServletPath();
		if(path.equals("/registerBonde")) {
			dispatcher = request.getRequestDispatcher("addBonde.jsp");
	 		dispatcher.forward(request, response);
	        String numBE=(request.getParameter("numBE"));
	        Date dateBE= Date.valueOf(request.getParameter("dateBE")); 
			String numFac=request.getParameter("numFac");
			java.sql.Date dateFac=java.sql.Date.valueOf(request.getParameter("dateFac"));
			Part description=request.getPart("description");
		if ( description!=null) {
			System.out.println(description.getName());
			System.out.println(description.getSize());
			System.out.println(description.getContentType());
			inputStreamPdf=description.getInputStream();
		}		
		
			bonde us=new bonde(numBE,(dateBE),numFac,(dateFac),inputStreamPdf);
	        dispatcher = request.getRequestDispatcher("/listBE");
	 		dispatcher.forward(request, response);
		try {
			userDAO.registrationBonde(us);
			Boolean dlt =true;
		    request.setAttribute("dlt", dlt);
			session.setAttribute("id", numBE);
			dispatcher = request.getRequestDispatcher("/listBE");
			dispatcher.forward(request, response);
		}catch(ClassNotFoundException e) {
			e.printStackTrace();
		}
		
	}
         else if(path.equals("/editBonde")) {
   	          int idbonDE=Integer.parseInt(request.getParameter("idbonDE"));
   	          bonde us=userDAO.getid(idbonDE);
   	          request.setAttribute("us", us);
   	          session.setAttribute("id", idbonDE);
  			  dispatcher = request.getRequestDispatcher("update-bonde.jsp");
			  dispatcher.forward(request, response);
    }
         else if(path.equals("/modifierBonde")) {
        	  String numBE=(request.getParameter("numBE"));
        	  System.out.println(numBE);
 	          Date dateBE= Date.valueOf(request.getParameter("dateBE")); 
 	          System.out.println(dateBE);
 			  String numFac=request.getParameter("numFac");
 			  java.sql.Date dateFac=java.sql.Date.valueOf(request.getParameter("dateFac"));
 			  bonde us=new bonde(numBE,dateBE,numFac,dateFac);
  	          try {
				userDAO.updateuser(us);
				System.out.println("fffff");
			  } catch (ClassNotFoundException e) {
				e.printStackTrace();
			  }
  	          Boolean modif =true;
  	          request.setAttribute("us", us);
  	          request.setAttribute("modif", modif);
 			  dispatcher = request.getRequestDispatcher("listBE");
			  dispatcher.forward(request, response);
   }
         else if(path.equals("/deletBonde")) {
        	  int id =Integer.parseInt(request.getParameter("idbonDE"));
        	  System.out.println(id);
        	  userDAO.deleteBonde(id);
        	  Boolean dlt =true;
        	//request.setAttribute("us", us);
        	  request.setAttribute("dlt", dlt);
  	          session.setAttribute("id", id); 
        	  dispatcher = request.getRequestDispatcher("/listBE");
 			  dispatcher.forward(request, response);
        	 
         }
       
         }
	
	

}
