package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import models.User;

public class setPasswordDao {
	
	public void setPassword(User user) {
		
		Connection conn = singletonConnexion.getConnection();
		PreparedStatement ps;
		String email;
		
		try {
			ps = conn.prepareStatement("update user set password= ? where email= ? ");
            ps.setString(2,user.getEmail() ); 
            ps.setString(1,user.getPassword() );
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
            	email = rs.getString("email");
			}
            ps.executeUpdate();
            System.out.println("mot de pass est changer");
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
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
