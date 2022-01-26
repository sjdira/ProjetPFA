package dao;

import java.util.HashSet;
import java.util.Set;

public class ModelDAO {

	private long idModel;
	private String NomModel;
	
	
	private Set<MarqueMaterielDAO> marques = new HashSet<MarqueMaterielDAO>();


	public ModelDAO() {
		super();
		// TODO Auto-generated constructor stub
	}


	


	public ModelDAO(String nomModel) {
		super();
		NomModel = nomModel;
		
	}





	public Set<MarqueMaterielDAO> getMarques() {
		return marques;
	}





	public void setMarques(Set<MarqueMaterielDAO> marques) {
		this.marques = marques;
	}





	public long getIdModel() {
		return idModel;
	}


	public void setIdModel(long idModel) {
		this.idModel = idModel;
	}


	public String getNomModel() {
		return NomModel;
	}


	public void setNomModel(String nomModel) {
		NomModel = nomModel;
	}


	
}
