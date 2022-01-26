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

import dao.FourniseurDAO;
import dao.MarqueMaterielDAO;
import dao.Services;
import dao.SortieStockDAO;
import dao.TypeMaterieDAO;

/**
 * Servlet implementation class EditerModifHorsStock
 */
@WebServlet("/EditerModifHorsStock")
public class EditerModifHorsStock extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditerModifHorsStock() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String idHorsStock = request.getParameter("IdSerie2");
		SortieStockDAO GetSortie = null;
		
		Services Get = new Services();
	
		 GetSortie = Get.getSortieStockDAO(Long.parseLong(idHorsStock));
		Iterator<MarqueMaterielDAO> Marques = Get.getAllMarqueMaterielDAO().iterator();
		//Iterator<MarqueMaterielDAO> Marques2 = service.getAllMarqueMaterielDAO().iterator();
		Iterator<TypeMaterieDAO> Type = Get.getAllTypeMaterieDAO().iterator();		
		
		
		request.setAttribute("Enstock","En stock");
		request.setAttribute("affect","Affecter");
		request.setAttribute("Encours","En cours d'instalation ");
		request.setAttribute("apresInsta","Apres l'instalation ");
	
		
		request.setAttribute("TypeMateriels", Type);
        request.setAttribute("MarqueMQ", Marques);
		
		request.setAttribute("NumIvo", GetSortie.getNinvo());
		request.setAttribute("direction", GetSortie.getDirection());
		request.setAttribute("Marque", GetSortie.getMarque());
		request.setAttribute("TypeM", GetSortie.getMateriel());		
		request.setAttribute("ModelM", GetSortie.getModel());
		request.setAttribute("Today", GetSortie.getDateAchat());
		request.setAttribute("RespoSortie", GetSortie.getResponsableSortie());
		request.setAttribute("Serie", GetSortie.getNserie());
		request.setAttribute("Soday", GetSortie.getDate());
		request.setAttribute("Statut", GetSortie.getStatut());
		request.setAttribute("Rq", GetSortie.getRemaque());
		request.setAttribute("idStock", idHorsStock);
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/EditerModifHorsStock.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String serie = request.getParameter("NSerie");
		String NInvo = request.getParameter("NInvotorie");
		String materiel = request.getParameter("TypeMateriels");
		String marque = request.getParameter("MarqueMateriel");
		String model = request.getParameter("Model");
		String idStock = request.getParameter("idStockM");
		String NomA = request.getParameter("NomA");
		 

			

		String direction= request.getParameter("DirectionAffect");
		String statut= request.getParameter("statut");
		
		String responsableSortie= request.getParameter("RespoSortie2");
		String fileJoint= request.getParameter("FileJoint");
		String Obs = request.getParameter("Commentaire");
		boolean etat = true;
		java.util.Date date1 = null;
	
		String date2=request.getParameter("DateSortie");
																								
		                                                           

		
		String dateAchat = request.getParameter("DataAchat");
		
		if(serie!=null) {
			Services srv = new Services();					
			Long mid = Long.parseLong(marque);
			MarqueMaterielDAO Objet= srv.getMarqueMaterielDAO(mid);
			String MarqNom = Objet.getNomMarque();
		SortieStockDAO srt = new SortieStockDAO(NInvo, serie, materiel,MarqNom , model, NomA, direction, statut, Obs, responsableSortie, fileJoint, etat,new Date(), dateAchat);
		try {
			srt.setIdSortie(Long.parseLong(idStock));
			srv.updateSortieStockDAO(srt);
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		
		this.getServletContext().getRequestDispatcher("/Categorie").forward(request, response);
		}
		
		
	
		
		doGet(request, response);
	}

}
