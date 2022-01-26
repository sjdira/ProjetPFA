package com.projetpfe.servlet;

import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import dao.EnStockDAO;
import dao.FourniseurDAO;
import dao.MarqueMaterielDAO;
import dao.ModelDAO;
import dao.Services;
import dao.TypeMaterieDAO;

@WebServlet("/FormulaireEnStock")
public class FormulaireEnStock extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
	String todaysdate;
	String test;
	Iterator<ModelDAO> modelsM;
	MarqueMaterielDAO mq;
	Services services = new Services();
    public FormulaireEnStock() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		

		Iterator<MarqueMaterielDAO> Marques = services.getAllMarqueMaterielDAO().iterator();
		Iterator<MarqueMaterielDAO> Marques2 = services.getAllMarqueMaterielDAO().iterator();
		Iterator<TypeMaterieDAO> Type = services.getAllTypeMaterieDAO().iterator();
		
		Iterator<FourniseurDAO> Fourni = services.getAllFourniseurDAO().iterator();
	//	Iterator<ModelDAO> Model = services.getAllModelDAO().iterator();
	//	 long l = Long.parseLong(request.getParameter("MarqueMateriel"));
		
		
		
		
        request.setAttribute("TypeMateriels", Type);
        request.setAttribute("MarqueMateriels", Marques);
        request.setAttribute("MarqueMs", Marques2);
        DateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy");
        Calendar cal = Calendar.getInstance();
        Date date = cal.getTime();
        String todaysdate = dateFormat.format(date);
         request.setAttribute("Today", todaysdate);
         
         
       // MarqueMaterielDAO mq = services.getMarqueMaterielDAO(l);
    	//	Iterator<ModelDAO> modelsM= mq.getModels().iterator();
        
         
        
        
        request.setAttribute("FourniseurMateriels", Fourni);
        
        
		this.getServletContext().getRequestDispatcher("/WEB-INF/FormulaireEnStocks.jsp").forward(request, response);
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
		EnStockDAO entrer = new EnStockDAO(TypeM, MarqNom, Model, NSerie, Fourniseur, BCNom, BLNom, Budget, ResposableSortie, Ninventaire, Commentaire, new Date(),"En stock");
		
		request.setAttribute("MarqueM",MarqueMateriel);
		request.setAttribute("ModelM",Model);
		request.setAttribute("TypeM",TypeM);
		request.setAttribute("Fourniseur",Fourniseur);
		request.setAttribute("BCM",BCNom);
		request.setAttribute("BLM",BLNom);
		request.setAttribute("BudgetM",Budget);
		request.setAttribute("ResposableS",ResposableSortie);
		
		request.setAttribute("Commentaire",Commentaire);
		
		
		service.addEnStockDAO(entrer);
			}
		doGet(request, response);
		
	}

}
