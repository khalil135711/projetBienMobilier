package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;
import java.util.Vector;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Blob;


import models.bien;
import models.bonsortie;
import models.famille;

public class bienDAO {
	
	public void addEt(bien b) {
		// TODO Auto-generated method stub
		Connection conn = singletonConnexion.getConnection();
		PreparedStatement ps;

		try {
			ps = conn.prepareStatement(
					"insert into bienmobilier (refBien,designation,caracteristiqueTech,stockMin,emplacement,numBE,nomFournisseur,qteLivre,codeBarre,documentLies,famille,img) values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");

			ps.setInt(1, b.getRefBien());
			ps.setString(2, b.getDesignation());
			ps.setString(3, b.getCaracteristiqueTech());
			ps.setInt(4, b.getStockMin());
			ps.setString(5, b.getEmplacement());
			ps.setString(6, b.getNumBE());
			ps.setString(7, b.getNomFournisseur());
			ps.setInt(8, b.getQteLivre());
			ps.setString(9, b.getCodeBarre());
			ps.setBlob(10, b.getDocumentLies());
			ps.setString(11, b.getFamille());
			ps.setBlob(12, b.getImg());
			ps.executeUpdate();
			ps.close();
			conn.close();
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}	

	public bien getid(int refBien) {
		String select ="select * from bienmobilier where refBien=?";
		Connection conn=singletonConnexion.getConnection();
		bien us=new bien();
		
		try {
			PreparedStatement ps= conn.prepareStatement(select);
			ps.setInt(1, refBien);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
			us.setRefBien(refBien);			
			us.setDesignation(rs.getString("designation"));
			us.setCaracteristiqueTech(rs.getString("caracteristiqueTech"));
			us.setStockMin(rs.getInt("stockMin"));
			us.setEmplacement(rs.getString("emplacement"));
			us.setNumBE(rs.getString("numBE"));
			us.setNomFournisseur(rs.getString("nomFournisseur"));
			us.setQteLivre(rs.getInt("qteLivre"));
			us.setCodeBarre(rs.getString("codeBarre"));
			//us.setDocumentLies( rs.getBlob("documentLies"));
			//us.setImg((InputStream) rs.getBlob("img"));
			us.setFamille(rs.getString("famille"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return us;
		
	}
	public void updateuser(bien p)throws ClassNotFoundException {
		 Connection conn=singletonConnexion.getConnection();
	       try {
			PreparedStatement ps= conn.prepareStatement("update bienmobilier set refBien = ?, designation = ? , caracteristiqueTech = ? , stockMin = ? , emplacement = ? , numBE = ?,"
					+ "       nomFournisseur=?,qteLivre=?,codeBarre=?"
					       + ",famille=? where refBien = ?");
			ps.setInt(1, p.getRefBien());
			ps.setString(2, p.getDesignation());
			ps.setString(3, p.getCaracteristiqueTech());
			ps.setInt(4, p.getStockMin());
			ps.setString(5, p.getEmplacement());
			ps.setString(6, p.getNumBE());
			ps.setString(7, p.getNomFournisseur());
			ps.setInt(8, p.getQteLivre());
			ps.setString(9, p.getCodeBarre());
			
			ps.setString(10, p.getFamille());
			ps.setInt(11, p.getRefBien());
			ps.executeUpdate();
			ps.close();				 
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
 
	public void deleteBien( int refBien) {
		 Connection conn=singletonConnexion.getConnection();
		try {
			PreparedStatement ps= conn.prepareStatement("delete from bienmobilier where refBien = ?");
			System.out.println(refBien);
			ps.setInt(1, refBien);
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	
	
	//  list bienMobilier is here

	public List<bien> getUser() throws IOException{
		List<bien> users = new ArrayList<bien>();
		String query = "SELECT * FROM bienmobilier;";
		try {
			PreparedStatement ps = singletonConnexion.getConnection().prepareStatement(query);
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				bien user = new bien();
				user.setRefBien(rs.getInt("refBien"));
				user.setDesignation(rs.getString("designation"));
				user.setCaracteristiqueTech(rs.getString("caracteristiqueTech"));
				user.setStockMin(rs.getInt("stockMin"));
				user.setEmplacement(rs.getString("emplacement"));
				user.setNumBE(rs.getString("numBE"));
				user.setNomFournisseur(rs.getString("nomFournisseur"));
				user.setQteLivre(rs.getInt("qteLivre"));
				user.setCodeBarre(rs.getString("codeBarre"));
				Blob blob=(Blob) rs.getBlob("img");
				/*InputStream inputstream= blob.getBinaryStream();
				ByteArrayOutputStream outputstream=new ByteArrayOutputStream();
				byte[] buffer=new byte[4096];
				int byteRead=-1;
				while((byteRead= inputstream.read(buffer))!=-1) {
					outputstream.write(buffer,0,byteRead);
				}
				byte[] imgBytes= outputstream.toByteArray();
				String base64Image= Base64.getEncoder().encodeToString(imgBytes);
				inputstream.close();
				outputstream.close();
				//user.setDocumentLies(null);*/
				user.setFamille(rs.getString("famille"));
				//user.setBaseImage(base64Image);

				users.add(user);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return users;
	}
	
	
	public bien getAccept(int refBien) {
		String select ="SELECT * FROM projet.bienmobilier,projet.bonsortie where projet.bienmobilier.refBien = projet.bonsortie.refBien group by designation,famille;  ";
		Connection conn=singletonConnexion.getConnection();
		bien us=new bien();
		
		try {
			PreparedStatement ps= conn.prepareStatement(select);
			ps.setInt(1, refBien);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
			us.setRefBien(refBien);			
			us.setDesignation(rs.getString("designation"));
			us.setCaracteristiqueTech(rs.getString("caracteristiqueTech"));
			us.setStockMin(rs.getInt("stockMin"));
			us.setEmplacement(rs.getString("emplacement"));
			us.setNumBE(rs.getString("numBE"));
			us.setNomFournisseur(rs.getString("nomFournisseur"));
			us.setQteLivre(rs.getInt("qteLivre"));
			us.setCodeBarre(rs.getString("codeBarre"));
			//us.setDocumentLies( rs.getBlob("documentLies"));
			//us.setImg((InputStream) rs.getBlob("img"));
			us.setFamille(rs.getString("famille"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return us;
		
	}
	
	
	
	
	
	public void accepterBonSortie( int refBien) {
		 Connection conn=singletonConnexion.getConnection();
	       
		try {
			PreparedStatement ps= conn.prepareStatement("UPDATE projet.bienmobilier INNER JOIN projet.bonsortie ON projet.bienmobilier.refBien =  projet.bonsortie.refBien SET projet.bienmobilier.qteRester =  projet.bienmobilier.qteLivre -  projet.bonsortie.qteServie where projet.bienmobilier.refBien=?;");
			
			ps.setInt(1, refBien);
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public List<bonsortie> adminTirerBs(int refBien) throws IOException{
		List<bonsortie> users = new ArrayList<bonsortie>();
		String query = "SELECT * FROM bonsortie where refBien=?;";
		try {
			PreparedStatement ps = singletonConnexion.getConnection().prepareStatement(query);
			ResultSet rs = ps.executeQuery();
			ps.setInt(1, refBien);
			while(rs.next()) {
				bonsortie user = new bonsortie();
				user.setRefBien(rs.getString("refBien"));
				user.setNomDemandeur(rs.getString("nomDemandeur"));
				user.setDateBS(rs.getDate("dateBS"));
				user.setQteServie(rs.getInt("qteServie"));
				users.add(user);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return users;
	}
	
	  private void printSQLException(SQLException ex) {
	        for (Throwable e: ex) {
	            if (e instanceof SQLException) {
	                e.printStackTrace(System.err);
	                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
	                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
	                System.err.println("Message: " + e.getMessage());
	                Throwable t = ex.getCause();
	                while (t != null) {
	                    System.out.println("Cause: " + t);
	                    t = t.getCause();
	                }
	            }
	        }
	    }
	

}

