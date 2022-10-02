package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import models.User;

public class login {
	public User getUser(String username, String password) throws ClassNotFoundException, SQLException {

		String check = "select * from user where username = ? and password = ? ";
		Connection con = singletonConnexion.getConnection();
		PreparedStatement preparedStatement = con.prepareStatement(check);
		preparedStatement.setString(1, username);
		preparedStatement.setString(2, password);

		ResultSet rs = preparedStatement.executeQuery();
		List<User> users = new ArrayList<User>();
		while (rs.next()) {
			User user = new User();
			user.setUsername(rs.getString("username"));
			user.setFirst_Name(rs.getString("firstname"));
			user.setLast_Name(rs.getString("lastname"));
			user.setEmail(rs.getString("email"));
			user.setPassword(rs.getString("password"));
			user.setRole(rs.getString("role"));
			
			users.add(user);
		}
		if (users.size() >= 1) {
			return users.get(0);
		} else {
			return null;
		}
	}

	public String Role(User user) {
		Connection conn = singletonConnexion.getConnection();
		PreparedStatement ps;
		String role = null;
		try {
			ps = conn.prepareStatement("select role from user where username=? and password=? ");
			ps.setString(1, user.getUsername());
			ps.setString(2, user.getPassword());
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				role = rs.getString("role");
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return role;
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
