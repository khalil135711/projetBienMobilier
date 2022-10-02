package models;

import java.util.Collection;

public class famille {
	private int idFam;
	private String nomfamille;
	
	public famille(int idFam, String nomfamille) {
		super();
		this.idFam = idFam;
		this.nomfamille = nomfamille;
		
	}
	
	public int getIdFam() {
		return idFam;
	}

	public void setIdFam(int idFam) {
		this.idFam = idFam;
	}

	public String getNomfamille() {
		return nomfamille;
	}

	public void setNomfamille(String nomfamille) {
		this.nomfamille = nomfamille;
	}

	public famille() {
		super();
	}
}

	


