package dao;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import models.User;
import models.bonde;
import models.bonsortie;

public class bonSortieDAO {
	
	
	public void registrationBonde(bonsortie p)throws ClassNotFoundException {
		 Connection conn=singletonConnexion.getConnection();
	       try {
			PreparedStatement ps= conn.prepareStatement("INSERT INTO bonSortie (dateBS,nomDemandeur,refBien,qteServie) VALUES (?,?,?,?)");
			
			ps.setDate(1, (java.sql.Date) p.getDateBS());
			ps.setString(2, p.getNomDemandeur());
			ps.setString(3,  p.getRefBien());
			ps.setInt(4, p.getQteServie());
			
			ps.executeUpdate();
			ps.close();				 
					
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	public bonsortie getid(int idbonDS) {
		String select ="select * from bonsortie where idbonDS=?";
		Connection conn=singletonConnexion.getConnection();
		bonsortie us=new bonsortie();
		
		try {
			PreparedStatement ps= conn.prepareStatement(select);
			ps.setInt(1, idbonDS);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
			us.setIdbonDS(idbonDS);
			
			us.setDateBS(rs.getDate("dateBS"));
			us.setNomDemandeur(rs.getString("nomDemandeur"));
			us.setRefBien(rs.getString("dateFac"));
			us.setQteServie( rs.getInt("qteServie"));
			
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		
		return us;
		
	}
	
	public void updateuser(bonsortie p)throws ClassNotFoundException {
		 Connection conn=singletonConnexion.getConnection();
	       try {
			PreparedStatement ps= conn.prepareStatement("update bonsortie set  dateBS= ?, nomDemandeur = ? , refBien = ? , qteServie = ? where idbonDS = ?");
			ps.setDate(1, (Date) p.getDateBS());
			ps.setString(2, p.getNomDemandeur());
			ps.setString(3,  p.getRefBien());
			ps.setInt(4, p.getQteServie());
			ps.setInt(5, p.getIdbonDS());
			ps.executeUpdate();
			ps.close();				 
					
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

	public void deleteBonde( int idbonDS) {
		 Connection conn=singletonConnexion.getConnection();
	       
		try {
			PreparedStatement ps= conn.prepareStatement("delete from bonsortie where idbonDS = ? ");
			System.out.println(idbonDS);
			ps.setInt(1, idbonDS);
			
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}	
	
	
	
	public List<bonsortie> getUser(){
		List<bonsortie> uss = new ArrayList<bonsortie>();
		String query = "select * from bonsortie;";
		try {
			PreparedStatement ps = singletonConnexion.getConnection().prepareStatement(query);
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				bonsortie us = new bonsortie();
				us.setIdbonDS(rs.getInt("idbonDS"));
				us.setDateBS(rs.getDate("dateBS"));
				us.setNomDemandeur(rs.getString("nomDemandeur"));
				us.setRefBien(rs.getString("refBien"));
				us.setQteServie(rs.getInt("qteServie"));
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
