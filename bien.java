package models;

import java.io.File;
import java.io.InputStream;
import java.sql.Blob;

public class bien {
	private int refBien;
	private String designation;
	private String caracteristiqueTech;
	private int stockMin;
	private String emplacement;
	private String numBE;
	private String nomFournisseur;
	private int qteLivre;
	private String codeBarre;
	private InputStream documentLies;
	private String famille;
	private InputStream img;
	private String baseImage;
	private int qteRester;
	
	public bien(int refBien, String designation, String caracteristiqueTech, int stockMin, String emplacement,
			String numBE, String nomFournisseur, int qteLivre, String codeBarre, String famille,
			InputStream img,InputStream documentLies ) {
		super();
		this.refBien = refBien;
		this.designation = designation;
		this.caracteristiqueTech = caracteristiqueTech;
		this.stockMin = stockMin;
		this.emplacement = emplacement;
		this.numBE = numBE;
		this.nomFournisseur = nomFournisseur;
		this.qteLivre = qteLivre;
		this.codeBarre = codeBarre;
		this.famille = famille;
		this.img = img;
		this.setDocumentLies(documentLies);
	}
	public bien() {
		// TODO Auto-generated constructor stub
	}
	public int getRefBien() {
		return refBien;
	}
	public void setRefBien(int refBien) {
		this.refBien = refBien;
	}
	public String getDesignation() {
		return designation;
	}
	public void setDesignation(String designation) {
		this.designation = designation;
	}
	public String getCaracteristiqueTech() {
		return caracteristiqueTech;
	}
	public void setCaracteristiqueTech(String caracteristiqueTech) {
		this.caracteristiqueTech = caracteristiqueTech;
	}
	public int getStockMin() {
		return stockMin;
	}
	public void setStockMin(int stockMin) {
		this.stockMin = stockMin;
	}
	public String getEmplacement() {
		return emplacement;
	}
	public void setEmplacement(String emplacement) {
		this.emplacement = emplacement;
	}
	public String getNumBE() {
		return numBE;
	}
	public void setNumBE(String numBE) {
		this.numBE = numBE;
	}
	public String getNomFournisseur() {
		return nomFournisseur;
	}
	public void setNomFournisseur(String nomFournisseur) {
		this.nomFournisseur = nomFournisseur;
	}
	public int getQteLivre() {
		return qteLivre;
	}
	public void setQteLivre(int qteLivre) {
		this.qteLivre = qteLivre;
	}
	public String getCodeBarre() {
		return codeBarre;
	}
	public void setCodeBarre(String codeBarre) {
		this.codeBarre = codeBarre;
	}
	
	
	public String getFamille() {
		return famille;
	}
	public void setFamille(String famille) {
		this.famille = famille;
	}
	public InputStream getImg() {
		return img;
	}
	public void setImg(InputStream img) {
		this.img = img;
	}
	public InputStream getDocumentLies() {
		return documentLies;
	}
	public void setDocumentLies(InputStream documentLies) {
		this.documentLies = documentLies;
	}
	public String getBaseImage() {
		return baseImage;
	}
	public void setBaseImage(String baseImage) {
		this.baseImage = baseImage;
	}
	public int getQteRester() {
		return qteRester;
	}
	public void setQteRester(int qteRester) {
		this.qteRester = qteRester;
	}
	
	

}
