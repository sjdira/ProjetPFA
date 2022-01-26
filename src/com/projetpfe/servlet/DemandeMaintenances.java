package com.projetpfe.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DemandeMaintenance;
import dao.EnStockDAO;
import dao.ServiceDAO;
import dao.Services;
import dao.SortieStockDAO;

/**
 * Servlet implementation class DemandeMaintenances
 */
@WebServlet("/DemandeMaintenances")
public class DemandeMaintenances extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DemandeMaintenances() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		ServiceDAO SDAO = new ServiceDAO();
		List<EnStockDAO> enS = SDAO.getAllEnStockDAOby("En stock");
		request.setAttribute("Enstock","Enstock");
		request.setAttribute("valueEnstock",enS.size());
		System.out.println(enS.size());
		List<SortieStockDAO> Affecter = SDAO.getAllSortieStockDAOby("Affecter");
		request.setAttribute("Affecter","Affecter");
		request.setAttribute("valueAffecter",Affecter.size());
		System.out.println(Affecter.size());
		List<SortieStockDAO> cours = SDAO.getAllSortieStockDAOby("En cours d'instalation ");
		request.setAttribute("cours","En cours d'instalation");
		request.setAttribute("valuecoursr",cours.size());
		System.out.println(cours.size());
		List<SortieStockDAO> Apres = SDAO.getAllSortieStockDAOby("Apres l'instalation ");
		request.setAttribute("Apres","Apres l'instalation ");
		request.setAttribute("valueApres",Apres.size());
		System.out.println(Apres.size());
		
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/DemandeMaintenance.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
		
		doGet(request, response);
	}

}
