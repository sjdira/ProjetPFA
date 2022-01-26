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
 * Servlet implementation class DeleteUser
 */
@WebServlet("/DeleteUser")
public class DeleteUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Services srv = new Services();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteUser() {
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
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/DeleteUser.jsp").forward(request, response);
	}

	/**test.png
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String iduser = request.getParameter("deltUsers");
		try {
			 srv.deleteAddUserDAO(Long.parseLong(iduser));
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e.toString());
		}
		
		 
		 request.setAttribute("Validation", "Operation valide !!");
		
		doGet(request, response);
	}

}
