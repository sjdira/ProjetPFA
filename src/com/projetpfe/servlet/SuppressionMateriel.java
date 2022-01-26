package com.projetpfe.servlet;

import java.io.IOException;
import java.util.Iterator;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.FourniseurDAO;
import dao.MarqueMaterielDAO;
import dao.ModelDAO;
import dao.Services;
import dao.TypeMaterieDAO;

/**
 * Servlet implementation class SuppressionMateriel
 */
@WebServlet("/SuppressionMateriel")
public class SuppressionMateriel extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Services services = new Services();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SuppressionMateriel() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Iterator<MarqueMaterielDAO> Marques = services.getAllMarqueMaterielDAO().iterator();
		Iterator<TypeMaterieDAO> Type = services.getAllTypeMaterieDAO().iterator();
		Iterator<ModelDAO> Model = services.getAllModelDAO().iterator();
		Iterator<FourniseurDAO> Fourni = services.getAllFourniseurDAO().iterator();
		
		request.setAttribute("TypeMateriels", Type);
        request.setAttribute("MarqueMateriels", Marques);
        request.setAttribute("Models", Model);
        request.setAttribute("Fournis", Fourni);
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/DeleteMateriel.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String idtype = request.getParameter("TypeMateriels");
		String idFournisseur = request.getParameter("Fournisseur");
		String idMarque = request.getParameter("MarqueMateriel");
		String idModel = request.getParameter("Model");
		
		
if(idtype != null) {
		
			System.out.println(idtype);
			Long cvid = Long.parseLong(idtype);
			services.deleteTypeMaterieDAO(cvid);
			
			
		}else
			if(idMarque != null ) {
				
				Long cvid = Long.parseLong(idMarque);
				services.deleteMarqueMaterielDAO(cvid);
				
			}else
				if(idModel != null ) {
					
					Long cvid = Long.parseLong(idModel);
					System.out.println(cvid);
					
					try {
						services.deleteModelDAO(cvid);
					} catch (Exception e) {
						// TODO: handle exception
						System.out.println(e.toString());
					}
					
				}else
					
					if(idFournisseur != null) {
						
						Long cvid = Long.parseLong(idFournisseur);
						services.deleteFourniseurDAO(cvid);
						
						
					}
		
		
		doGet(request, response);
	}

}
