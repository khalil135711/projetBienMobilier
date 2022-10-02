package controlleur;

import java.io.IOException;
import java.io.OutputStream;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.singletonConnexion;

/**
 * Servlet implementation class getPhotoBienServlet
 */
@WebServlet("/getPhotoBienServlet")
public class getPhotoBienServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public getPhotoBienServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 String id_inscrAdmi= request.getParameter("refBien");
		    try {
		        Connection con =singletonConnexion.getConnection();
		        PreparedStatement ps = con.prepareStatement("select img from projet.bienmobilier where refBien=?");
		        ps.setString(1,id_inscrAdmi);
		        ResultSet rs = ps.executeQuery();
		        if (rs.next()) {
		            Blob blob4 = rs.getBlob("img");
		            byte byteArray[] = blob4.getBytes(1, (int) blob4.length());
		            response.setContentType("image/png");
		            OutputStream os4 = response.getOutputStream();
		            os4.write(byteArray);
		            os4.flush();
		            os4.close();
		        } else {
		            System.out.println("No image found with this id.");
		        }
		    } catch (Exception e) {
		        System.out.println(e);
		    }	
		    
		    }
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
