package dao;

import java.util.Date;

public class SortieStockDAO {
	
	private long IdSortie;
	
	private String  Ninvo, Nserie , Materiel ,Marque ,Model , NomB, Direction , Statut,Remaque ,ResponsableSortie ,FileJoint , dateAchat;
	private boolean Etat ; 
	private Date date ;
	
	
	
	
	public SortieStockDAO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public SortieStockDAO(String Ninvo, String nserie, String materiel, String marque, String model, String nomB, String direction, String statut, String remaque, String responsableSortie, String fileJoint,
			boolean etat, Date date , String dateAchat) {
		super();
		Nserie = nserie;
		Materiel = materiel;
		Marque = marque;
		Model = model;
		NomB = nomB;
		this.Ninvo = Ninvo;
		Direction = direction;
		Statut = statut;
		Remaque = remaque;
		ResponsableSortie = responsableSortie;
		FileJoint = fileJoint;
		Etat = etat;
		this.date = date;
		this.dateAchat = dateAchat;
	}
	public String getNinvo() {
		return Ninvo;
	}
	public void setNinvo(String ninvo) {
		Ninvo = ninvo;
	}
	public String getDateAchat() {
		return dateAchat;
	}
	public void setDateAchat(String dateAchat) {
		this.dateAchat = dateAchat;
	}
	public long getIdSortie() {
		return IdSortie;
	}
	public void setIdSortie(long idSortie) {
		IdSortie = idSortie;
	}
	public String getNserie() {
		return Nserie;
	}
	public void setNserie(String nserie) {
		Nserie = nserie;
	}
	public String getMateriel() {
		return Materiel;
	}
	public void setMateriel(String materiel) {
		Materiel = materiel;
	}
	public String getMarque() {
		return Marque;
	}
	public void setMarque(String marque) {
		Marque = marque;
	}
	public String getModel() {
		return Model;
	}
	public void setModel(String model) {
		Model = model;
	}
	public String getNomB() {
		return NomB;
	}
	public void setNomB(String nomB) {
		NomB = nomB;
	}

	public String getDirection() {
		return Direction;
	}
	public void setDirection(String direction) {
		Direction = direction;
	}
	public String getStatut() {
		return Statut;
	}
	public void setStatut(String statut) {
		Statut = statut;
	}
	public String getRemaque() {
		return Remaque;
	}
	public void setRemaque(String remaque) {
		Remaque = remaque;
	}
	public String getResponsableSortie() {
		return ResponsableSortie;
	}
	public void setResponsableSortie(String responsableSortie) {
		ResponsableSortie = responsableSortie;
	}
	public String getFileJoint() {
		return FileJoint;
	}
	public void setFileJoint(String fileJoint) {
		FileJoint = fileJoint;
	}
	public boolean isEtat() {
		return Etat;
	}
	public void setEtat(boolean etat) {
		Etat = etat;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	} 
	

}
