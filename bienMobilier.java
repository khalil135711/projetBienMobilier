package controlleur;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Blob;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import COM.rsa.jsafe.es;
import dao.bienDAO;
import dao.bonSortieDAO;
import dao.userAdmin;
import models.SendEmail;
import models.User;
import models.bien;
import models.bonde;
import models.bonsortie;

@WebServlet(urlPatterns={"/bienMobilier","/editBien","/modifierBien","/deleteBien","/adminAccepterReservation","/adminTirerBs"})
@MultipartConfig(fileSizeThreshold = 1024 * 1024, maxFileSize = 1024 * 1024 * 5, maxRequestSize = 1024 * 1024 * 5 * 5)
public class bienMobilier extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private bienDAO userDAO=new bienDAO();
	private bonSortieDAO khalil=new bonSortieDAO();
	 RequestDispatcher dispatcher=null;
	InputStream inputStream, inputStreamPdf, inputStreamcnef, inputStreamadn = null;
   
    public bienMobilier() {
       
    	super();
    	
            }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// request.getRequestDispatcher("addBien.jsp").forward(request, response);
		  doPost(request, response);		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  HttpSession session = request.getSession();

			String path =request.getServletPath();
	       
			if(path.equals("/bienMobilier")) {
				
		dispatcher = request.getRequestDispatcher("addBien.jsp");
     	dispatcher.forward(request, response);
		int refBien=Integer.parseInt(request.getParameter("refBien"));
		String designation=request.getParameter("designation");
		String idFam=request.getParameter("idFam");
		int stockMin=Integer.parseInt(request.getParameter("stockMin"));
		String numBE=request.getParameter("numBE");
		String emplacement=request.getParameter("emplacement");
		String caracteristiqueTech=request.getParameter("caracteristiqueTech");
		String nomFournisseur=request.getParameter("nomFournisseur");
		int qteLivre=Integer.parseInt(request.getParameter("qteLivre"));
		String codeBarre=request.getParameter("codeBarre");
		Part documentLies=request.getPart("documentLies");
		Part filePart = request.getPart("img");
		if (filePart != null && documentLies!=null) {
			inputStream = filePart.getInputStream();
			inputStreamPdf=documentLies.getInputStream();
		}
		bien us=new bien(refBien,designation,caracteristiqueTech,stockMin,emplacement,numBE,nomFournisseur,qteLivre,codeBarre,idFam,inputStream,inputStreamPdf);
        
		 userDAO.addEt(us);
		 Boolean add =true;
		 request.setAttribute("us", us);
         request.setAttribute("add", add);
		 dispatcher = request.getRequestDispatcher("/adminlistBien");
		 dispatcher.forward(request, response);
	 }
	  else if(path.equals("/editBien")) {
	          int refBien=Integer.parseInt(request.getParameter("refBien"));
	          bien us=userDAO.getid(refBien);
	          System.out.println(us.toString());
	          request.setAttribute("us", us);
	          session.setAttribute("id", refBien);
			dispatcher = request.getRequestDispatcher("update-bien.jsp");
		dispatcher.forward(request, response);
     }
     else if(path.equals("/modifierBien")) {
    	 int refBien=Integer.parseInt(request.getParameter("refBien"));
    	 System.out.println(refBien);
 		String designation=request.getParameter("designation");
 		String idFam=request.getParameter("idFam");
 		int stockMin=Integer.parseInt(request.getParameter("stockMin"));
 		String numBE=request.getParameter("numBE");
 		String emplacement=request.getParameter("emplacement");
 		String caracteristiqueTech=request.getParameter("caracteristiqueTech");
 		String nomFournisseur=request.getParameter("nomFournisseur");
 		int qteLivre=Integer.parseInt(request.getParameter("qteLivre"));
 		String codeBarre=request.getParameter("codeBarre");
 		
 		bien us=new bien();
 		us.setRefBien(refBien);
		us.setDesignation(designation);
		us.setFamille(idFam);
		us.setStockMin(stockMin);
		us.setNumBE(numBE);
		us.setEmplacement(emplacement);
		us.setCaracteristiqueTech(caracteristiqueTech);
		us.setNomFournisseur(nomFournisseur);
		us.setQteLivre(qteLivre);
		us.setCodeBarre(codeBarre);
	          try {
			userDAO.updateuser(us);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	          Boolean modif =true;
	          request.setAttribute("us", us);
	          request.setAttribute("modif", modif);
			dispatcher = request.getRequestDispatcher("/adminlistBien");
		dispatcher.forward(request, response);

}
     else if(path.equals("/deleteBien")) {
    	 int refBien =Integer.parseInt(request.getParameter("refBien"));
    	//System.out.println(id);
    	userDAO.deleteBien(refBien);
    	Boolean dlt =true;
    	//request.setAttribute("us", us);
    	request.setAttribute("dlt", dlt);
	    session.setAttribute("id", refBien);
    	 
    	 dispatcher = request.getRequestDispatcher("/adminlistBien");
			dispatcher.forward(request, response);
    	 
     }
			

else if(path.equals("/adminAccepterReservation")) {
	 int refBien=Integer.parseInt(request.getParameter("refBien"));
	bien us=new bien();
	
         userDAO.accepterBonSortie(refBien);
         
		dispatcher = request.getRequestDispatcher("adminTirerBs");
	dispatcher.forward(request, response);
	

}
			
else if(path.equals("/adminTirerBs")) {
	 int refBien=Integer.parseInt(request.getParameter("refBien"));
	 bonsortie uss=new bonsortie();
	 List<bonsortie> users=userDAO.adminTirerBs(refBien);
     request.setAttribute("users", users);       
	 dispatcher = request.getRequestDispatcher("adminbonSortiePdf.jsp");
	 dispatcher.forward(request, response);

}
			
			
			
			
			
   
     }






	
}
