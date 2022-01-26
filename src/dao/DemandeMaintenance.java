package dao;

public class DemandeMaintenance {
	
	private long IdDemande;
	private String Nom , Prenom , Email , Sujet , direction , Msg ;
	
	
	
	
	public DemandeMaintenance() {
		super();
		// TODO Auto-generated constructor stub
	}
	public DemandeMaintenance(String nom, String prenom, String email, String sujet, String direction, String msg) {
		super();
		Nom = nom;
		Prenom = prenom;
		Email = email;
		Sujet = sujet;
		this.direction = direction;
		Msg = msg;
	}
	public long getIdDemande() {
		return IdDemande;
	}
	public void setIdDemande(long idDemande) {
		IdDemande = idDemande;
	}
	public String getNom() {
		return Nom;
	}
	public void setNom(String nom) {
		Nom = nom;
	}
	public String getPrenom() {
		return Prenom;
	}
	public void setPrenom(String prenom) {
		Prenom = prenom;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public String getSujet() {
		return Sujet;
	}
	public void setSujet(String sujet) {
		Sujet = sujet;
	}
	public String getDirection() {
		return direction;
	}
	public void setDirection(String direction) {
		this.direction = direction;
	}
	public String getMsg() {
		return Msg;
	}
	public void setMsg(String msg) {
		Msg = msg;
	}

}
