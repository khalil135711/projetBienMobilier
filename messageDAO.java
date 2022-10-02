package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import models.message;

public class messageDAO {
	public void envoyerMsg(message p)throws ClassNotFoundException {
		 Connection conn=singletonConnexion.getConnection();
	       try {
			PreparedStatement ps= conn.prepareStatement("INSERT INTO message (msg,nomEm) VALUES (?,?)");
			ps.setString(1, p.getMsg());
			ps.setString(2, p.getNomEm());			
			ps.executeUpdate();
			ps.close();				 
					
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
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
