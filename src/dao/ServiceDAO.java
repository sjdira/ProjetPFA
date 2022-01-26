package dao;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.hibernate.Session;

import util.HibernateUtil;

public class ServiceDAO {
	
	
	
	
	
	public List<EnStockDAO> getAllEnStockDAOby(String Statut){
		
		List<EnStockDAO> L = new ArrayList<EnStockDAO>();
		Services srv = new Services();
		Iterator<EnStockDAO> E = srv.getAllEnStockDAO().iterator();
		
		while (E.hasNext()) {
			EnStockDAO pp = E.next();
			String v = pp.getStatut();
			if(Statut.equals(v))
				L.add(pp);	
		}
		
		return L;
	}
	
public List<SortieStockDAO> getAllSortieStockDAOby(String Statut){
		
		List<SortieStockDAO> L = new ArrayList<SortieStockDAO>();
		
		Services srv = new Services();
		
		Iterator<SortieStockDAO> E = srv.GetAllSortieStockDAO().iterator();
		
		while (E.hasNext()) {
			SortieStockDAO pp = E.next();
			String v = pp.getStatut();
			if(Statut.equals(v))
				L.add(pp);	
		}
		
		return L;
	}

	public List<EnStockDAO> getEnStockDAOByType(String t){
				Session session =  HibernateUtil.getSessionFactory().getCurrentSession();
				session.beginTransaction();
				
				org.hibernate.Query query = session.createQuery("from EnStockDAO as TM where TM.typeMateriel = :code");
				query.setParameter("code", t);
				return query.list();
	}
	
	public List<EnStockDAO> getEnStockDAOByMarque(String t){
		Session session =  HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		
		org.hibernate.Query query = session.createQuery("from EnStockDAO as TM where TM.marqueMateriel = :code");
		query.setParameter("code", t);
		return query.list();
}
	
	public List<EnStockDAO> getEnStockDAOByModel(String t){
		Session session =  HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		
		org.hibernate.Query query = session.createQuery("from EnStockDAO as TM where TM.model = :code");
		query.setParameter("code", t);
		return query.list();
}
	
	public List<EnStockDAO> getEnStockDAOMulti(String Statut , String type){
		Session session =  HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		
		org.hibernate.Query query = session.createQuery("from EnStockDAO as TM where TM.statut = :code and TM.typeMateriel = :type");
		query.setParameter("code", Statut);
		query.setParameter("type", type);
		
		return query.list();
}
	
	public List<EnStockDAO> getEnStockDAOMulti2(String Statut , String marqueMateriel){
		Session session =  HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		
		org.hibernate.Query query = session.createQuery("from EnStockDAO as TM where TM.statut = :code and TM.marqueMateriel = :type");
		query.setParameter("code", Statut);
		query.setParameter("type", marqueMateriel);
		
		return query.list();
}
	
	public List<SortieStockDAO> getSortieStockDAO(String t){
		Session session =  HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		
		org.hibernate.Query query = session.createQuery("from SortieStockDAO as TM where TM.NomMateriel = :code");
		query.setParameter("code", t);
		return query.list();
}
	
	public List<SortieStockDAO> getSortieStockDAOMulti(String Statut , String type){
		Session session =  HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		
		org.hibernate.Query query = session.createQuery("from SortieStockDAO as TM where TM.Statut = :code and TM.Materiel = :type");
		query.setParameter("code", Statut);
		query.setParameter("type", type);
		
		return query.list();
}
	
	public List<SortieStockDAO> getSortieStockDAOMulti2(String Statut , String marqueMateriel){
		Session session =  HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		
		org.hibernate.Query query = session.createQuery("from SortieStockDAO as TM where TM.Statut = :code and TM.Marque = :Marque");
		query.setParameter("code", Statut);
		query.setParameter("Marque", marqueMateriel);
		
		return query.list();
}

	public List<EnStockDAO> getEnStockDAOMulti3(String type , String marqueMateriel){
		Session session =  HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		
		org.hibernate.Query query = session.createQuery("from EnStockDAO as TM where TM.typeMateriel = :code and TM.marqueMateriel = :type");
		query.setParameter("code", type);
		query.setParameter("type", marqueMateriel);
		
		return query.list();
}
	public List<SortieStockDAO> getSortieStockDAOMulti3(String type , String marqueMateriel){
		Session session =  HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		
		org.hibernate.Query query = session.createQuery("from SortieStockDAO as TM where TM.Materiel = :code and TM.Marque = :Marque");
		query.setParameter("code", type);
		query.setParameter("Marque", marqueMateriel);
		
		return query.list();
	}
	
	public List<EnStockDAO> getEnStockDAOMulti4(String Type ,String model , String marqueMateriel){
		Session session =  HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		
		org.hibernate.Query query = session.createQuery("from EnStockDAO as TM where TM.model = :code and TM.marqueMateriel = :type and TM.typeMateriel = :Type" );
		query.setParameter("code", model);
		query.setParameter("type", marqueMateriel);
		query.setParameter("Type", Type);
		return query.list();
}
	
	public List<EnStockDAO> getEnStockDAOMulti5(String Type ,String statut , String marqueMateriel){
		Session session =  HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		
		org.hibernate.Query query = session.createQuery("from EnStockDAO as TM where TM.statut = :code and TM.marqueMateriel = :type and TM.typeMateriel = :Type" );
		query.setParameter("code", statut);
		query.setParameter("type", marqueMateriel);
		query.setParameter("Type", Type);
		return query.list();
}
	
	public List<SortieStockDAO> getSortieStockDAOMulti4(String statut ,String type , String marqueMateriel){
		Session session =  HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		System.out.println("vvvvvdddddd");
		org.hibernate.Query query = session.createQuery("from SortieStockDAO as TM where TM.Statut = :Statut and TM.Materiel = :code and TM.Marque = :Marque");
		query.setParameter("Statut", statut);
		query.setParameter("code", type);
		query.setParameter("Marque", marqueMateriel);
		
		return query.list();
	}
	
	
	public List<SortieStockDAO> getSortieStockDAOMulti6(String statut ,String type , String marqueMateriel,String model){
		Session session =  HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		
		org.hibernate.Query query = session.createQuery("from SortieStockDAO as TM where TM.Statut = :Statut and TM.Materiel = :code and TM.Marque = :Marque and TM.Model = :model" );
		query.setParameter("Statut", statut);
		query.setParameter("code", type);
		query.setParameter("Marque", marqueMateriel);
		query.setParameter("model", model);
		return query.list();
	}
	
	
	public List<EnStockDAO> getEnStockDAOMulti6(String statut,String Type , String marqueMateriel,String model){
		Session session =  HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		
		org.hibernate.Query query = session.createQuery("from EnStockDAO as TM where TM.statut = :code and TM.marqueMateriel = :type and TM.typeMateriel = :Type and TM.model = :model" );
		query.setParameter("code", statut);
		query.setParameter("type", marqueMateriel);
		query.setParameter("Type", Type);
		query.setParameter("model", model);
		return query.list();
}
	
	
	
}
		

