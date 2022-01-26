package dao;

import java.util.HashSet;
import java.util.Set;

public class MarqueMaterielDAO {
	
	private long idMarque;
	private String NomMarque;
	
	private Set<ModelDAO> models = new HashSet<ModelDAO>();

	private Set<MarqueMaterielDAO> Marques = new HashSet<MarqueMaterielDAO>();
	
	
	
	public Set<MarqueMaterielDAO> getMarques() {
		return Marques;
	}


	public void setMarques(Set<MarqueMaterielDAO> marques) {
		Marques = marques;
	}


	public MarqueMaterielDAO() {
		super();
		// TODO Auto-generated constructor stub
	}

	
	public MarqueMaterielDAO(String nomMarque) {
		super();
		NomMarque = nomMarque;
		
	}


	public Set<ModelDAO> getModels() {
		return models;
	}


	public void setModels(Set<ModelDAO> models) {
		this.models = models;
	}


	public long getIdMarque() {
		return idMarque;
	}

	public void setIdMarque(long idMarque) {
		this.idMarque = idMarque;
	}

	public String getNomMarque() {
		return NomMarque;
	}

	public void setNomMarque(String nomMarque) {
		NomMarque = nomMarque;
	}

	
	
	
}
