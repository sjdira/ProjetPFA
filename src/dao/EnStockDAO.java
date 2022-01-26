package dao;

import java.util.Date;

public class EnStockDAO {

	
	private long idEnStock;
	private String typeMateriel,marqueMateriel,model,nserie,fournisseur,numeroBC,numeroBL,budget,responsable,numeroInventaire,Commentaire,statut;
	private Date date;
	
	
	
	
	
	
	public EnStockDAO(String typeMateriel, String marqueMateriel, String model, String nserie, String fournisseur,
			String numeroBC, String numeroBL, String budget, String responsable, String numeroInventaire,
			String commentaire, Date date , String statut) {
		super();
		this.typeMateriel = typeMateriel;
		this.marqueMateriel = marqueMateriel;
		this.model = model;
		this.nserie = nserie;
		this.fournisseur = fournisseur;
		this.numeroBC = numeroBC;
		this.numeroBL = numeroBL;
		this.budget = budget;
		this.responsable = responsable;
		this.numeroInventaire = numeroInventaire;
		Commentaire = commentaire;
		this.date = date;
		this.statut = statut;
	}
	public String getStatut() {
		return statut;
	}
	public void setStatut(String statut) {
		this.statut = statut;
	}
	public EnStockDAO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public long getIdEnStock() {
		return idEnStock;
	}
	public void setIdEnStock(long idEnStock) {
		this.idEnStock = idEnStock;
	}
	public String getTypeMateriel() {
		return typeMateriel;
	}
	public void setTypeMateriel(String typeMateriel) {
		this.typeMateriel = typeMateriel;
	}
	public String getMarqueMateriel() {
		return marqueMateriel;
	}
	public void setMarqueMateriel(String marqueMateriel) {
		this.marqueMateriel = marqueMateriel;
	}
	public String getModel() {
		return model;
	}
	public void setModel(String model) {
		this.model = model;
	}
	public String getNserie() {
		return nserie;
	}
	public void setNserie(String nserie) {
		this.nserie = nserie;
	}
	public String getFournisseur() {
		return fournisseur;
	}
	public void setFournisseur(String fournisseur) {
		this.fournisseur = fournisseur;
	}
	public String getNumeroBC() {
		return numeroBC;
	}
	public void setNumeroBC(String numeroBC) {
		this.numeroBC = numeroBC;
	}
	public String getNumeroBL() {
		return numeroBL;
	}
	public void setNumeroBL(String numeroBL) {
		this.numeroBL = numeroBL;
	}
	public String getBudget() {
		return budget;
	}
	public void setBudget(String budget) {
		this.budget = budget;
	}
	public String getResponsable() {
		return responsable;
	}
	public void setResponsable(String responsable) {
		this.responsable = responsable;
	}
	public String getNumeroInventaire() {
		return numeroInventaire;
	}
	public void setNumeroInventaire(String numeroInventaire) {
		this.numeroInventaire = numeroInventaire;
	}
	public String getCommentaire() {
		return Commentaire;
	}
	public void setCommentaire(String commentaire) {
		Commentaire = commentaire;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	
	
	
	
}
