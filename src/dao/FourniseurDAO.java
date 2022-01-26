package dao;

public class FourniseurDAO {
	
	private long idFournisseur;
	private String nomFournisseur;
	
	
	
	
	public FourniseurDAO() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	public FourniseurDAO(String nomFournisseur) {
		super();
		this.nomFournisseur = nomFournisseur;
	}


	public long getIdFournisseur() {
		return idFournisseur;
	}
	public void setIdFournisseur(long idFournisseur) {
		this.idFournisseur = idFournisseur;
	}
	public String getNomFournisseur() {
		return nomFournisseur;
	}
	public void setNomFournisseur(String nomFournisseur) {
		this.nomFournisseur = nomFournisseur;
	}
	
	

}
