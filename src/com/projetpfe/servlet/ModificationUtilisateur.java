package com.projetpfe.servlet;

import java.io.IOException;
import java.util.Iterator;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.AddUserDAO;
import dao.Services;

/**
 * Servlet implementation class ModificationUtilisateur
 */
@WebServlet("/ModificationUtilisateur")
public class ModificationUtilisateur extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Services srv = new Services();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ModificationUtilisateur() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
Iterator<AddUserDAO> it = srv.GetAllAddUserDAO().iterator();
		
		
		request.setAttribute("users",it);
		
		
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/ModifUser.jsp").forward(request, response);
	
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String Nom = request.getParameter("Nom");
		String Prenom = request.getParameter("Prenom");
		String email = request.getParameter("email");
		String mdp = request.getParameter("mdp");
		String mdp2= request.getParameter("mdp2");
		String DroitAcces= request.getParameter("DroitAcces");
		String identifiant = request.getParameter("Identifiant");
		String iduser = request.getParameter("iduser");
		
		if(mdp.equals(mdp2)) {
			
			Services serv = new Services();
			AddUserDAO User = new AddUserDAO(Nom, Prenom, email, mdp, identifiant, DroitAcces);
			User.setIdUser(Long.parseLong(iduser));
			try {
				serv.updateAddUserDAO(User);
			} catch (Exception e) {
				// TODO: handle exception
				System.out.println(e.toString());
			}
			
			
			request.setAttribute("Validation", "Modification valide ");
			
			
		}else
			request.setAttribute("FauxMdp", "Le mot de passe et incorrect !!");
		
	
		
		
		doGet(request, response);
	}

}
