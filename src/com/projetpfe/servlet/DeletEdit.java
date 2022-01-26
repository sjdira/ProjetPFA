package com.projetpfe.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Services;

/**
 * Servlet implementation class DeletEdit
 */
@WebServlet("/DeletEdit")
public class DeletEdit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeletEdit() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		this.getServletContext().getRequestDispatcher("/Categorie").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String IdStock = request.getParameter("IdSerie3");
		
		Services srv = new Services();
		
			
			
		try {
			srv.deleteEnStockDAO(Long.parseLong(IdStock));
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("vvvvvvvvvvvvvvvvvvvvvvvvvvvv");
		}	
		try {
			srv.deleteSortieStockDAO(Long.parseLong(IdStock));
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("vvvvvvvvvvvvvvvvvvvvvvvvvvvv");
		}
		
	
		
		doGet(request, response);
	}

}
