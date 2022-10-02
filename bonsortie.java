package models;

import java.util.Date;

public class bonsortie {
	
	private int idbonDs;
	private Date dateBS;
	private String nomDemandeur;
	private String refBien;
	private int qteServie;
	
	
	public bonsortie() {
		super();
		this.idbonDs = idbonDs;
		this.dateBS = dateBS;
		this.nomDemandeur = nomDemandeur;
		this.refBien = refBien;
		this.qteServie = qteServie;
	}
	
	public bonsortie(String numBE, Date date, String idFam) {
		this.dateBS = dateBS;
		this.nomDemandeur = nomDemandeur;
		this.refBien = refBien;
		this.qteServie = qteServie;
	}

	public int getIdbonDS() {
		return idbonDs;
	}
	public void setIdbonDS(int idbonDs) {
		this.idbonDs = idbonDs;
	}
	public Date getDateBS() {
		return dateBS;
	}
	public void setDateBS(Date dateBS) {
		this.dateBS = dateBS;
	}
	public String getNomDemandeur() {
		return nomDemandeur;
	}
	public void setNomDemandeur(String nomDemandeur) {
		this.nomDemandeur = nomDemandeur;
	}
	public String getRefBien() {
		return refBien;
	}
	public void setRefBien(String refBien) {
		this.refBien = refBien;
	}
	public int getQteServie() {
		return qteServie;
	}
	public void setQteServie(int qteServie) {
		this.qteServie = qteServie;
	}
	

}
