package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import models.User;
import models.famille;

public class FamilleDAO {
	
	
	public void registrationUser(famille p)throws ClassNotFoundException {
		 Connection conn=singletonConnexion.getConnection();
	       try {
			//PreparedStatement ps= conn.prepareStatement("INSERT INTO bienmobilier (refBien,designation,caracteristiqueTech,stockMin,emplacement,numBE,nomFournisseur,qteLivre,codeBarre,documentLies,idFam,img) VALUES (?,?,?,?,?,?,?,?,?,?,?,?)");
			PreparedStatement ps= conn.prepareStatement("INSERT INTO famille (nomfamille) VALUES (?)");

			//ps.setInt(1, p.getIdFam());
			ps.setString(1, p.getNomfamille());
			
			ps.executeUpdate();
			ps.close();				 
					
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	public famille getid(int id) {
		String select ="select * from famille where idFam=?";
		Connection conn=singletonConnexion.getConnection();
		famille us=new famille();
		
		try {
			PreparedStatement ps= conn.prepareStatement(select);
			ps.setInt(1, id);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				us.setIdFam(id);
			    us.setNomfamille(rs.getString("nomfamille"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		
		return us;
		
	}
	
	public void updateuser(famille p)throws ClassNotFoundException {
		 Connection conn=singletonConnexion.getConnection();
	       try {
			PreparedStatement ps= conn.prepareStatement("update famille set nomfamille = ?  where idFam = ?");
			ps.setString(1, p.getNomfamille());
			ps.setInt(2, p.getIdFam());
			ps.executeUpdate();
			ps.close();				 
					
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

	public void deleteUser( int id) {
		 Connection conn=singletonConnexion.getConnection();
	       
		try {
			PreparedStatement ps= conn.prepareStatement("delete from famille where idFam = ?");
			//System.out.println(id);
			ps.setInt(1, id);
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public List<famille> getUser(){
		List<famille> users = new ArrayList<famille>();
		String query = "SELECT * FROM famille;";
		try {
			PreparedStatement ps = singletonConnexion.getConnection().prepareStatement(query);
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				famille user = new famille();
				user.setIdFam(rs.getInt("idFam"));
				user.setNomfamille(rs.getString("nomfamille"));
				

				users.add(user);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return users;
	}
	
	
	
	
	
	
	private void printSQLException(SQLException ex) {
		for (Throwable e : ex) {
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