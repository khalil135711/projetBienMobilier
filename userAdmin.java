package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import models.User;


public class userAdmin {

	public void registrationUser(User p)throws ClassNotFoundException {
		 Connection conn=singletonConnexion.getConnection();
	       try {
			PreparedStatement ps= conn.prepareStatement("INSERT INTO user (username,firstname,lastname,email,password,role) VALUES (?,?,?,?,?,?)");
			ps.setString(1, p.getUsername());
			ps.setString(2, p.getFirst_Name());
			ps.setString(3, p.getLast_Name());
			ps.setString(4, p.getEmail());
			ps.setString(5, p.getPassword());
			ps.setString(6, p.getRole());
			ps.executeUpdate();
			ps.close();				 
					
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	public User getid(int id) {
		String select ="select * from user where id=?";
		Connection conn=singletonConnexion.getConnection();
		User us=new User();
		
		try {
			PreparedStatement ps= conn.prepareStatement(select);
			ps.setInt(1, id);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
			us.setId(id);
			us.setUsername(rs.getString("username"));
			us.setFirst_Name(rs.getString("firstname"));
			us.setLast_Name(rs.getString("lastname"));
			us.setEmail(rs.getString("email"));
			us.setPassword(rs.getString("password"));
			us.setRole(rs.getString("role"));}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 
		
		return us;
		
	}
	
	public void updateuser(User p)throws ClassNotFoundException {
		 Connection conn=singletonConnexion.getConnection();
	       try {
			PreparedStatement ps= conn.prepareStatement("update user set username = ? , firstname = ? , lastname = ? , email = ? , password = ? where id = ?");
			ps.setString(1, p.getUsername());
			ps.setString(2, p.getFirst_Name());
			ps.setString(3, p.getLast_Name());
			ps.setString(4, p.getEmail());
			ps.setString(5, p.getPassword());
			ps.setInt(6, p.getId());
			ps.executeUpdate();
			ps.close();				 
					
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
 
	public void deleteUser( int id) {
		 Connection conn=singletonConnexion.getConnection();
	       
		try {
			PreparedStatement ps= conn.prepareStatement("delete from user where id = ?");
			System.out.println(id);
				
			ps.setInt(1, id);
		
			ps.executeUpdate();
							 
					
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	
	
	
	public List<User> getUser(){
		List<User> users = new ArrayList<User>();
		String query = "SELECT * FROM user;";
		try {
			PreparedStatement ps = singletonConnexion.getConnection().prepareStatement(query);
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				User user = new User();
				user.setId(rs.getInt("id"));
				user.setUsername(rs.getString("username"));
				user.setFirst_Name(rs.getString("firstname"));
				user.setLast_Name(rs.getString("lastname"));
				user.setEmail(rs.getString("email"));
				user.setRole(rs.getString("role"));

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