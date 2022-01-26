package Controller;

import java.io.IOException;

import java.util.Iterator;

import javax.servlet.ServletException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MarqueMaterielDAO;
import dao.ModelDAO;
import dao.Services;

/**
 * Servlet implementation class AjaxControle
 */
@WebServlet("/AjaxControle")
public class AjaxControle extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	
	
	
	
    public AjaxControle() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//request.getAttribute("test");
		this.getServletContext().getRequestDispatcher("/WEB-INF/TestData.jsp").forward(request, response);
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	
		Services service = new Services();
		response.setContentType("text/plain");
		String test = request.getParameter("v");
		
		long  ConverL = Long.parseLong(test);
		

		
		MarqueMaterielDAO mq = service.getMarqueMaterielDAO(ConverL);
		 	Iterator<ModelDAO> modelsM= mq.getModels().iterator();
			
			
			while(modelsM.hasNext()) {
				ModelDAO m = modelsM.next();
				System.out.println(m.getNomModel());
			}
			request.setAttribute("testw",modelsM );
			
			doGet(request, response);
			
			
			
		
		
		
	}

}
