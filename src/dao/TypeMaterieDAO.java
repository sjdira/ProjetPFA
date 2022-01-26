package dao;

public class TypeMaterieDAO {
	
	private long idTypeMateriel;
	private String NomMateriel;
	
	
	public TypeMaterieDAO() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	public TypeMaterieDAO( String nomMateriel) {
		super();
		
		NomMateriel = nomMateriel;
	}



	public long getIdTypeMateriel() {
		return idTypeMateriel;
	}
	public void setIdTypeMateriel(long idTypeMateriel) {
		this.idTypeMateriel = idTypeMateriel;
	}
	public String getNomMateriel() {
		return NomMateriel;
	}
	public void setNomMateriel(String nomMateriel) {
		NomMateriel = nomMateriel;
	}
	
	

}
