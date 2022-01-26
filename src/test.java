import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

import dao.EnStockDAO;
import dao.FourniseurDAO;
import dao.MarqueMaterielDAO;
import dao.ModelDAO;

import dao.Services;
import dao.TypeMaterieDAO;

public class test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Services service = new Services();
		
		/*
		TypeMaterieDAO type = new TypeMaterieDAO("Ordinateur");
		
		FourniseurDAO fourni = new FourniseurDAO("Jayjon");
		
		ModelDAO model = new ModelDAO("O3122");
		
		MarqueMaterielDAO Marque = new MarqueMaterielDAO("DELL");
		
		
		Iterator<MarqueMaterielDAO> M = service.getAllMarqueMaterielDAO().iterator();
		
		while (M.hasNext()) {
			MarqueMaterielDAO type2 = (MarqueMaterielDAO) M.next();
			System.out.println(type2.getIdMarque());
		}
		
		
		
		
		MarqueMaterielDAO mq = service.getMarqueMaterielDAO(new Long(1));
		Iterator<ModelDAO> modelsM= mq.getModels().iterator();
		
		
		while(modelsM.hasNext()){
			ModelDAO p = modelsM.next();
			System.out.println(p.getNomModel());
		}
		*/
		
		EnStockDAO s = service.GetNserieInfo("c1234");
		System.out.println(s.getMarqueMateriel());
		//System.out.println(s.getMarqueMateriel());
	//	System.out.println(s.getBudget());
		//service.addModelDAO(model);
		//service.addMarqueMaterielDAO(Marque);
		
		//service.addFourniseurDAO(fourni);
		
		//System.out.println(model.getIdModel());
		//EnStockDAO entrer = new EnStockDAO("typeMateriel", "marqueMateriel", "model"," nserie", "fournisseur", "numeroBC", "numeroBL"," budget", "responsable"," numeroInventaire"," commentaire", new Date());
		
		//service.addEnStockDAO(entrer);
		
		//service.addModelToMarque(1L, 1L);
		//service.addModelToMarque(1L,3L);
		//service.addModelToMarque(1L,2L);
		//service.addTypeMaterieDAO(type);
		
		/*	Iterator<MarqueMaterielDAO> P = model.getMarques().iterator();
		
		while(P.hasNext()) {
			MarqueMaterielDAO pp = P.next();
			System.out.println(pp.getNomMarque());
		}
		*?
		
		/*	
		 * 
		Produit p = new Produit("Alpha", "beta", 212.);
		Produit p1 = new Produit("Alpha1", "beta1", 212.);
		Produit p2 = new Produit("Alpha2", "beta2", 212.);
		Produit p3 = new Produit("Alpha3", "beta3", 212.);
		
		service.addProduit(p);
		service.addProduit(p1);
		service.addProduit(p2);
		service.addProduit(p3);
		
		Categorie c = new Categorie("Pc", "d", new Date());
		
		Categorie c1 = new Categorie("Pc1", "d1", new Date());
		Categorie c2 = new Categorie("Pc2", "d2", new Date());
		Categorie c3 = new Categorie("Pc3", "d3", new Date());
		
		service.addCategorie(c);
		service.addCategorie(c1);
		service.addCategorie(c2);
		service.addCategorie(c3);
		
		
	
		Iterator<Produit> produis = service.getAllProduit().iterator();
		
		while (produis.hasNext()) {
			Produit pp = produis.next();
			
			pp.show();
			
		}
		
		
		
		service.addProduitToCategorie(26L, 25L);
		service.addProduitToCategorie(28L, 25L);
		service.addProduitToCategorie(27L, 31L);
	
		
		Iterator<Produit> P = c.getProduits().iterator();
		
		while(P.hasNext()) {
			Produit pp = P.next();
			pp.show();
		}
		
	*/
	}
	

}
