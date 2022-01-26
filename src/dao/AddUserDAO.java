package dao;

public class AddUserDAO {
	
	
	private long idUser;
	private String Nom , Prenom , mail , mdp , identifiant , DroitAcces ;
	
	
	
	
	
	public AddUserDAO(String nom, String prenom, String mail, String mdp, String identifiant, String droitAcces) {
		super();
		Nom = nom;
		Prenom = prenom;
		this.mail = mail;
		this.mdp = mdp;
		this.identifiant = identifiant;
		DroitAcces = droitAcces;
	}
	public AddUserDAO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public long getIdUser() {
		return idUser;
	}
	public void setIdUser(long idUser) {
		this.idUser = idUser;
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
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public String getMdp() {
		return mdp;
	}
	public void setMdp(String mdp) {
		this.mdp = mdp;
	}
	public String getIdentifiant() {
		return identifiant;
	}
	public void setIdentifiant(String identifiant) {
		this.identifiant = identifiant;
	}
	public String getDroitAcces() {
		return DroitAcces;
	}
	public void setDroitAcces(String droitAcces) {
		DroitAcces = droitAcces;
	} 

}
