package com.projetpfe.servlet;

import java.io.IOException;
import java.util.Iterator;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.AddUserDAO;
import dao.Services;


/**
 * Servlet implementation class index
 */
@WebServlet("/index")
public class index extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private HttpSession session = null;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public index() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/index.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		String Identifiant = request.getParameter("email");
		String mdp = request.getParameter("password");
		
		
		boolean login = false;
		
		Services serv = new Services();
		
		Iterator<AddUserDAO>  user = serv.GetAllAddUserDAO().iterator();
		
		
		
		while(user.hasNext()) {
			AddUserDAO usr = user.next();
			if(usr.getIdentifiant().equals(Identifiant) || usr.getMail().equals(Identifiant)) 
				if(usr.getMdp().equals(mdp)) {
					session = request.getSession();
					System.out.println(usr.getIdentifiant());
					session.setAttribute("Identifiant", usr.getIdentifiant());
					session.setAttribute("email", usr.getMail());
					session.setAttribute("DroitAcces", usr.getDroitAcces());
					
					session.setAttribute("Admin", "Administrateur system");
					
					login = true;
					
					break;

				}
			
		}
		if(login == true) {
			request.setAttribute("Connexion", "Statut connecter ");
		this.getServletContext().getRequestDispatcher("/Categorie").forward(request, response);
		}else {
			request.setAttribute("NonConnexion", "Identifiant ou Mot de passe erroné");
			this.getServletContext().getRequestDispatcher("/WEB-INF/index.jsp").forward(request, response);
			
		
		}
		
	}

}
