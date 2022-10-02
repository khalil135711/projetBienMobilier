package dao;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
//import java.util.Date;
import models.bonde;

public class bondeDAO {
	
	public void registrationBonde(bonde p)throws ClassNotFoundException {
		 Connection conn=singletonConnexion.getConnection();
	       try {
			PreparedStatement ps= conn.prepareStatement("INSERT INTO bonde (numBE,dateBE,numFac,dateFac,descriptionBE) VALUES (?,?,?,?,?)");
			ps.setString(1, p.getNumBe());
			ps.setDate(2, (java.sql.Date) p.getDateBE());
			ps.setString(3, p.getNumFac());
			ps.setDate(4, (java.sql.Date) p.getDateFac());
			ps.setBlob(5, p.getDescriptionBE());
			
			ps.executeUpdate();
			ps.close();				 
					
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	public bonde getid(int idbonDE) {
		String select ="select * from bonde where idbonDE=?";
		Connection conn=singletonConnexion.getConnection();
		bonde us=new bonde();
		
		try {
			PreparedStatement ps= conn.prepareStatement(select);
			ps.setInt(1, idbonDE);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
			us.setIdbonDE(idbonDE);
			us.setNumBe(rs.getString("numBE"));
			us.setDateBE(rs.getDate("dateBE"));
			us.setNumFac(rs.getString("numFac"));
			us.setDateFac(rs.getDate("dateFac"));
			}
		    } catch (SQLException e) {
			e.printStackTrace();
		    }
		return us;	
	}
	
	public void updateuser(bonde p)throws ClassNotFoundException {
		 Connection conn=singletonConnexion.getConnection();
	       try {
			PreparedStatement ps= conn.prepareStatement("update bonde set  numBE= ? , dateBE = ? , numFac = ? , dateFac = ?  where idbonDE = ?");
			ps.setString(1, p.getNumBe());
			ps.setDate(2, (Date) p.getDateBE());
			ps.setString(3, p.getNumFac());
			ps.setDate(4, (Date) p.getDateFac());
			ps.setInt(5, p.getIdbonDE());
			ps.executeUpdate();
			ps.close();				 
					
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

	public void deleteBonde( int idbonDE) {
		 Connection conn=singletonConnexion.getConnection();
	       
		try {
			PreparedStatement ps= conn.prepareStatement("delete from bonde where idbonDE = ?");
			System.out.println(idbonDE);
			ps.setInt(1, idbonDE);
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}	
	
	public List<bonde> getUser(){
		List<bonde> uss = new ArrayList<bonde>();
		String query = "select * from bonde;";
		try {
			PreparedStatement ps = singletonConnexion.getConnection().prepareStatement(query);
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				bonde us = new bonde();
				us.setIdbonDE(rs.getInt("idbonDE"));
				us.setNumBe(rs.getString("numBE"));
				us.setDateBE(rs.getDate("dateBE"));
				us.setNumFac(rs.getString("numFac"));
				us.setDateFac(rs.getDate("dateFac"));
				us.setDescriptionBE(rs.getBinaryStream("descriptionBE"));
				uss.add(us);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return uss;
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
