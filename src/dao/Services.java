package dao;

import java.util.Iterator;
import java.util.List;

import org.hibernate.Session;
import util.HibernateUtil;

public class Services {

	public void addTypeMaterieDAO(TypeMaterieDAO p){
		Session session =  HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		session.save(p);
		session.getTransaction().commit();
	}
	public TypeMaterieDAO getTypeMaterieDAO(Long idP){
		Session session =  HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		TypeMaterieDAO p = (TypeMaterieDAO) session.load(TypeMaterieDAO.class, idP);
		return p;
	}
	public List<TypeMaterieDAO> getAllTypeMaterieDAO(){
		Session session =  HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		return session.createQuery("from TypeMaterieDAO").list();
	}
	
	public void deleteTypeMaterieDAO (Long id) {
		Session session =  HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		TypeMaterieDAO  p = (TypeMaterieDAO ) session.load(TypeMaterieDAO.class, id);
		
		
		session.delete(p);
		session.getTransaction().commit();
	}
	
	public void addFourniseurDAO(FourniseurDAO p){
		Session session =  HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		session.save(p);
		session.getTransaction().commit();
	}
	
	public FourniseurDAO getFourniseurDAO(Long idP){
		Session session =  HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		FourniseurDAO p = (FourniseurDAO) session.load(FourniseurDAO.class, idP);
		return p;
	}
	public List<FourniseurDAO> getAllFourniseurDAO(){
		Session session =  HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		return session.createQuery("from FourniseurDAO").list();
	}
	
	public void deleteFourniseurDAO (Long id) {
		Session session =  HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		FourniseurDAO  p = (FourniseurDAO ) session.load(FourniseurDAO.class, id);
		
		
		session.delete(p);
		session.getTransaction().commit();
	}
	
	
	public void addMarqueMaterielDAO(MarqueMaterielDAO p){
		Session session =  HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		session.save(p);
		session.getTransaction().commit();
	}
	public MarqueMaterielDAO getMarqueMaterielDAO(Long idP){
		Session session =  HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		MarqueMaterielDAO p = (MarqueMaterielDAO) session.load(MarqueMaterielDAO.class, idP);
		return p;
	}
	
	public List<MarqueMaterielDAO> getAllMarqueMaterielDAO(){
		Session session =  HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		return session.createQuery("from MarqueMaterielDAO").list();
	}
	public void deleteMarqueMaterielDAO (Long id) {
		Session session =  HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		MarqueMaterielDAO  p = (MarqueMaterielDAO ) session.load(MarqueMaterielDAO.class, id);
		
		
		session.delete(p);
		session.getTransaction().commit();
	}
	
	
	public void addModelDAO(ModelDAO p){
		Session session =  HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		session.save(p);
		session.getTransaction().commit();
	}
	
	public ModelDAO getModelDAO(Long idP){
		Session session =  HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		ModelDAO p = (ModelDAO) session.load(ModelDAO.class, idP);
		return p;
	}
	public List<ModelDAO> getAllModelDAO(){
		Session session =  HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		return session.createQuery("from ModelDAO").list();
	}
	
	public long getIDModel(ModelDAO m) {
		
		Session session =  HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		
		
		return (long) session.getIdentifier(m);
		

	}
	
	public void deleteModelDAO (Long id) {
		Session session =  HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		ModelDAO  p = (ModelDAO ) session.load(ModelDAO.class, id);
		
		
		session.delete(p);
		session.getTransaction().commit();
	}
	
	
	
	public void addModelToMarque(Long idModel,Long idMarque){
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		
		ModelDAO p = (ModelDAO) session.load(ModelDAO.class, idModel);
		
		MarqueMaterielDAO c = (MarqueMaterielDAO) session.load(MarqueMaterielDAO.class, idMarque);
		
		c.getModels().add(p);
	
		
		
		session.getTransaction().commit();
	}

	public void addEnStockDAO(EnStockDAO p){
		Session session =  HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		session.save(p);
		session.getTransaction().commit();
	}
	public EnStockDAO getEnStockDAO(Long idP){
		Session session =  HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		EnStockDAO p = (EnStockDAO) session.load(EnStockDAO.class, idP);
		return p;
	}
	
	
	public List<EnStockDAO> getAllEnStockDAO(){
		Session session =  HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		return session.createQuery("from EnStockDAO").list();
	}
	
	
	public EnStockDAO GetNserieInfo(String Nserie) {
		Session session =  HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		
		Iterator<EnStockDAO> a = session.createQuery("from EnStockDAO").iterate();
		while (a.hasNext()) {
			EnStockDAO pp = a.next();
			System.out.println(pp.getNserie());
			if(pp.getNserie().equals(Nserie)) {
		
				return pp;
			}
			
		}
			
		return null ;
	}
	
	public void updateEnStockDAO (EnStockDAO p) {
		Session session =  HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
	
		session.update(p);
		session.getTransaction().commit();
		
	}
	
	public EnStockDAO GetNinvoInfo(String Ninvo) {
		Session session =  HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		
		Iterator<EnStockDAO> a = session.createQuery("from EnStockDAO").iterate();
		while (a.hasNext()) {
			EnStockDAO pp = a.next();
			
			if(pp.getNumeroInventaire().equals(Ninvo)) {
		
				return pp;
			}
			
		}
		
		
		return null ;
	}
	public void deleteEnStockDAO (Long id) {
		Session session =  HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		EnStockDAO  p = (EnStockDAO ) session.load(EnStockDAO .class, id);
		
		
		session.delete(p);
		session.getTransaction().commit();
	}
	
	
	public void deleteSortieStockDAO (Long id) {
		Session session =  HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		SortieStockDAO  p = (SortieStockDAO ) session.load(SortieStockDAO .class, id);
		
		
		session.delete(p);
		session.getTransaction().commit();
	}
	
	public void updateEnStockDAO(long id) {
		Session session =  HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		EnStockDAO  p = (EnStockDAO ) session.load(EnStockDAO .class, id);
		
		
		session.update(p);
		session.getTransaction().commit();
	}
	
	
	public void addSortieStockDAO(SortieStockDAO p){
		Session session =  HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		session.save(p);
		session.getTransaction().commit();
	}
	public SortieStockDAO getSortieStockDAO(Long idP){
		Session session =  HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		SortieStockDAO p = (SortieStockDAO) session.load(SortieStockDAO.class, idP);
		return p;
	}
	
	
	public SortieStockDAO GetAll(String Nserie) {
		Session session =  HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		
		Iterator<SortieStockDAO> a = session.createQuery("from SortieStockDAO").iterate();
		while (a.hasNext()) {
			SortieStockDAO pp = a.next();
			System.out.println(pp.getNserie());
			if(pp.getNserie().equals(Nserie)) {
		
				return pp;
			}
			
		}
		
		
		return null ;
	}
	
	public void updateSortieStockDAO (SortieStockDAO p) {
		Session session =  HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		session.update(p);
		session.getTransaction().commit();
		
	}
	
	public List<SortieStockDAO> GetAllSortieStockDAO() {
		Session session =  HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		
		return  session.createQuery("from SortieStockDAO").list();
	}
	
	public void addAddUserDAO(AddUserDAO p){
		Session session =  HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		session.save(p);
		session.getTransaction().commit();
	}
	public List<AddUserDAO> GetAllAddUserDAO() {
		Session session =  HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		
		return  session.createQuery("from AddUserDAO").list();
	}
	
	
	public void deleteAddUserDAO (Long id) {
		Session session =  HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		AddUserDAO  p = (AddUserDAO ) session.load(AddUserDAO .class, id);
		
		
		session.delete(p);
		session.getTransaction().commit();
	}
	public void updateAddUserDAO (AddUserDAO p) {
		Session session =  HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		session.update(p);
		session.getTransaction().commit();
	}
	
	
	
	public AddUserDAO getAddUserDAO (Long id) {
		Session session =  HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		AddUserDAO  p = (AddUserDAO ) session.load(AddUserDAO .class, id);
		
		return p;
	}
	
	
	public void addDemandeMaintenance(DemandeMaintenance p){
		Session session =  HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		session.save(p);
		session.getTransaction().commit();
	}
	public List<DemandeMaintenance> GetAllDemandeMaintenance() {
		Session session =  HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		
		return  session.createQuery("from DemandeMaintenance").list();
	}
	
	
}	
	
	
	

