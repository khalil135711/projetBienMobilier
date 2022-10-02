package models;

import java.io.InputStream;
import java.util.Date;

public class bonde {
	
	private int idbonDE;
	private String numBe;
	private Date dateBE;
	private String numFac;
	private Date dateFac;
	private InputStream descriptionBE;
	//constructeur
	public bonde(int idbonDE, String numBe,  Date dateBE, String numFac,  Date dateFac, InputStream descriptionBE) {
		super();
		this.idbonDE = idbonDE;
		this.numBe = numBe;
		this.dateBE = (Date)dateBE;
		this.numFac = numFac;
		this.dateFac = (Date)dateFac;
		this.descriptionBE = descriptionBE;
	}
	
	public bonde( String numBe, Date dateBE, String numFac,  Date dateFac, InputStream descriptionBE) {
		super();
		this.numBe = numBe;
		this.dateBE =(Date) dateBE;
		this.numFac = numFac;
		this.dateFac =(Date) dateFac;
		this.descriptionBE = descriptionBE;
	}
	
	public bonde() {
		// TODO Auto-generated constructor stub
	}	

	public bonde(String numBE2, java.sql.Date dateBE2, String numFac2, java.sql.Date dateFac2) {
		this.numBe = numBe;
		this.dateBE =(Date) dateBE;
		this.numFac = numFac;
		this.dateFac =(Date) dateFac;	}

	public int getIdbonDE() {
		return idbonDE;
	}
	public void setIdbonDE(int idbonDE) {
		this.idbonDE = idbonDE;
	}
	public String getNumBe() {
		return numBe;
	}
	public void setNumBe(String numBe) {
		this.numBe = numBe;
	}
	public Date getDateBE() {
		return dateBE;
	}
	public void setDateBE(Date dateBE) {
		this.dateBE = dateBE;
	}
	public String getNumFac() {
		return numFac;
	}
	public void setNumFac(String numFac) {
		this.numFac = numFac;
	}
	public Date getDateFac() {
		return dateFac;
	}
	public void setDateFac(Date dateFac) {
		this.dateFac = dateFac;
	}
	public InputStream getDescriptionBE() {
		return descriptionBE;
	}
	public void setDescriptionBE(InputStream descriptionBE) {
		this.descriptionBE = descriptionBE;
	}
}
