package com.projetpfe.servlet;

import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.EnStockDAO;
import dao.Services;
import dao.SortieStockDAO;


/**
 * Servlet implementation class SortieDuMateriels
 */
@WebServlet("/SortieDuMateriels")
public class SortieDuMateriels extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SortieDuMateriels() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		DateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy");
        Calendar cal = Calendar.getInstance();
        Date date = cal.getTime();
        String todaysdate = dateFormat.format(date);
         request.setAttribute("Today", todaysdate);
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/SortieDuMateriel.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		EnStockDAO GetInf = null;
		
		String Nserie = request.getParameter("search");
		String NInvo = request.getParameter("NInvo");
		String materiel = request.getParameter("Materiel");
		String marque = request.getParameter("Marque");
		String model = request.getParameter("Modele");
		 String nomB = request.getParameter("NomB");

		 

			

		String direction= request.getParameter("Direction");
		String statut= request.getParameter("statut");
		String remaque= request.getParameter("Remarque");
		String responsableSortie= request.getParameter("RespoSortie");
		String fileJoint= request.getParameter("FileJoint");
		boolean etat = Boolean.parseBoolean(request.getParameter("etat"));
		java.util.Date date1 = null;
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String date=request.getParameter("DateSortie");
		String serie = request.getParameter("Nserie");
		String dateAchat = request.getParameter("DateAchat");
		String N_Invo = request.getParameter("N_Invo");
		Services serv = new Services();
		

		
		if( materiel == null ) {		
			
			if(Nserie != null)
				GetInf = serv.GetNserieInfo(Nserie);
			else
				if(NInvo !=null)
					GetInf = serv.GetNinvoInfo(NInvo);
				
				if(GetInf != null) {
				
				request.setAttribute("idMateriel", GetInf.getIdEnStock());
				request.setAttribute("N_Invo",GetInf.getNumeroInventaire() );
				request.setAttribute("Nserie",GetInf.getNserie());
				request.setAttribute("Materiel",GetInf.getTypeMateriel());
				request.setAttribute("Marque",GetInf.getMarqueMateriel());
				request.setAttribute("Modele",GetInf.getModel());
				request.setAttribute("DateAchat",GetInf.getDate());
				
				
				}else {
					request.setAttribute("MSGERREU", "Ce numéro de serie n'existe pas");
				}
				}
		if(serie !=null && materiel !=null && model != null) {
			
			System.out.println("vvvvvv");
			try {
				date1= sdf.parse(date);
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			SortieStockDAO SO = new SortieStockDAO(N_Invo,serie, materiel, marque, model, nomB, direction, statut, remaque, responsableSortie, fileJoint, etat, new Date(),dateAchat);
			
			GetInf = serv.GetNserieInfo(serie);
			
			GetInf.setStatut(statut);
			
			serv.updateEnStockDAO(GetInf);
			
			serv.addSortieStockDAO(SO);	
			
			// Definir la methode de supression du materiel de la partie enstock 
		}
				
				
				
				doGet(request, response);
	}

}
