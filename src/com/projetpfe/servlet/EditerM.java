package com.projetpfe.servlet;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.EnStockDAO;
import dao.FourniseurDAO;
import dao.MarqueMaterielDAO;
import dao.Services;
import dao.TypeMaterieDAO;

/**
 * Servlet implementation class EditerM
 */
@WebServlet("/EditerM")
public class EditerM extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditerM() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		Long  mid = null;
		String IdSerie = request.getParameter("IdSerie");
		Services service = new Services();
	
	if(IdSerie != null)
		 mid = Long.parseLong(IdSerie);
		EnStockDAO sot = service.getEnStockDAO(mid);

		Iterator<MarqueMaterielDAO> Marques = service.getAllMarqueMaterielDAO().iterator();
		//Iterator<MarqueMaterielDAO> Marques2 = service.getAllMarqueMaterielDAO().iterator();
		Iterator<TypeMaterieDAO> Type = service.getAllTypeMaterieDAO().iterator();		
		Iterator<FourniseurDAO> Fourni = service.getAllFourniseurDAO().iterator();
	
		request.setAttribute("TypeMateriels", Type);
        request.setAttribute("MarqueMQ", Marques);
        request.setAttribute("FourniseurMateriels", Fourni);
        
        request.setAttribute("Serie", sot.getNserie());
		request.setAttribute("NumIvo", sot.getNumeroInventaire());
		request.setAttribute("Marque",sot.getMarqueMateriel());
		request.setAttribute("ModelM",sot.getModel());
		request.setAttribute("TypeM",sot.getTypeMateriel());
		request.setAttribute("Fourniseur",sot.getFournisseur());
		request.setAttribute("BCM",sot.getNumeroBC());
		request.setAttribute("BLM",sot.getNumeroBL());
		request.setAttribute("BudgetM",sot.getBudget());
		request.setAttribute("ResposableS",sot.getResponsable());
		request.setAttribute("Today", sot.getDate());
		request.setAttribute("Commentaire",sot.getResponsable());
		request.setAttribute("idhidden", sot.getIdEnStock());
		request.setAttribute("statut", sot.getStatut());

		this.getServletContext().getRequestDispatcher("/WEB-INF/BodyEdit.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		String TypeM =  request.getParameter("TypeMateriels");
		String MarqueMateriel = request.getParameter("MarqueMateriel");
		String Model = request.getParameter("Model");
		String NSerie = request.getParameter("NSerie");
		String Fourniseur = request.getParameter("Fournisseur");
		String BCNom = request.getParameter("BCNom");
		String BLNom = request.getParameter("BLNom");
		String Budget = request.getParameter("Budget");
		String ResposableSortie = request.getParameter("ResposableSortie");
		String Ninventaire = request.getParameter("Ninventaire");
		String Commentaire = request.getParameter("Commentaire");
		String idHidden = request.getParameter("IdStock");
		
		
		java.util.Date date1 = null;
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String date=request.getParameter("DataAchat");
		if(date!=null && ResposableSortie!=null) {
			try {
		date1= sdf.parse(date);
	} catch (ParseException e) {
		
		e.printStackTrace();
	}
			
	Services service = new Services();
	Long mid = Long.parseLong(MarqueMateriel);
	MarqueMaterielDAO Objet= service.getMarqueMaterielDAO(mid);
	String MarqNom = Objet.getNomMarque();
	EnStockDAO entrer = new EnStockDAO(TypeM, MarqNom, Model, NSerie, Fourniseur, BCNom, BLNom, Budget, ResposableSortie, Ninventaire, Commentaire, date1,"En stock");
	
	entrer.setIdEnStock(Long.parseLong(idHidden));
	try {
		service.updateEnStockDAO(entrer);
	} catch (Exception e) {
		// TODO: handle exception
	}
	
		
	this.getServletContext().getRequestDispatcher("/Categorie").forward(request, response);
		}
		
		
		doGet(request, response);
	}
		
		

}
