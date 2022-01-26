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
 * Servlet implementation class AddMateriel
 */
@WebServlet("/AddMateriel")
public class AddMateriel extends HttpServlet {
	private static final long serialVersionUID = 1L;

	TypeMaterieDAO type ;
	MarqueMaterielDAO Marque;
	FourniseurDAO fourni;
	
	ModelDAO model;
	/**
     * @see HttpServlet#HttpServlet()
     */
    public AddMateriel() {
        super();
        // TODO Auto-generated constructor stub
    }


    
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Services services = new Services();

		Iterator<MarqueMaterielDAO> M = services.getAllMarqueMaterielDAO().iterator();
		
        request.setAttribute("MarqueMateriels", M);
      
		this.getServletContext().getRequestDispatcher("/WEB-INF/AjoutMaterie.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String TypeM = request.getParameter("TypeM");
		String MarqueM = request.getParameter("MarqueM");
		String idMarque = request.getParameter("idMarque");
		String ModeleM = request.getParameter("ModeleM");
		String FournisseurM = request.getParameter("FournisseurM");
		Services service = new Services();
		if(TypeM != null) {
		
			
			type = new TypeMaterieDAO(TypeM);
			service.addTypeMaterieDAO(type);
			
			
		}else
			if(MarqueM != null ) {
				
				Marque = new MarqueMaterielDAO(MarqueM);
				service.addMarqueMaterielDAO(Marque);
				
			}else
				if(ModeleM != null && idMarque != null) {
					
					model = new ModelDAO(ModeleM);
					service.addModelDAO(model);
					service.addModelToMarque(model.getIdModel(),Long.parseLong(idMarque));
					
				}else
					
					if(FournisseurM != null) {
						
						fourni = new FourniseurDAO(FournisseurM);
						service.addFourniseurDAO(fourni);
						
						
					}
		
        doGet(request, response);
		//this.getServletContext().getRequestDispatcher("/AjoutMaterie.jsp").forward(request, response);
	}

}


