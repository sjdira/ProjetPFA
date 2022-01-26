package com.projetpfe.servlet;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.EnStockDAO;
import dao.FourniseurDAO;
import dao.MarqueMaterielDAO;
import dao.ServiceDAO;
import dao.Services;
import dao.SortieStockDAO;
import dao.TypeMaterieDAO;


/**
 * Servlet implementation class ConsulterOperation
 */
@WebServlet("/ConsulterOperation")
public class ConsulterOperation extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Services services = new Services();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ConsulterOperation() {
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
		
		Iterator<FourniseurDAO> Fourni = services.getAllFourniseurDAO().iterator();
	//	Iterator<ModelDAO> Model = services.getAllModelDAO().iterator();
	//	 long l = Long.parseLong(request.getParameter("MarqueMateriel"));
		
		
		
		
        request.setAttribute("TypeMateriels", Type);
        request.setAttribute("MarqueMateriels", Marques);

        DateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy");
        Calendar cal = Calendar.getInstance();
        Date date = cal.getTime();
        String todaysdate = dateFormat.format(date);
        request.setAttribute("Today", todaysdate);
         
         
       // MarqueMaterielDAO mq = services.getMarqueMaterielDAO(l);
    	//	Iterator<ModelDAO> modelsM= mq.getModels().iterator();
        
         
        
        
        request.setAttribute("FourniseurMateriels", Fourni);
        
		this.getServletContext().getRequestDispatcher("/WEB-INF/ConsultaterOperation.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String Statut = request.getParameter("statut");
		String Type = request.getParameter("TypeMateriels");
		String Marque = request.getParameter("MarqueMateriel");
		String Model = request.getParameter("Model");
		
		request.setAttribute("Enstock","En stock");
		request.setAttribute("affect","Affecter");
		request.setAttribute("Encours","En cours d'instalation ");
		request.setAttribute("apresInsta","Apres l'instalation ");
	
		if( !Statut.equals("") && Type.equals("") && Marque.equals("") && Model.equals("")) 
			if(Statut.equals("En stock")) {
				ServiceDAO SDAO = new ServiceDAO();
				List<EnStockDAO> enS = SDAO.getAllEnStockDAOby(Statut);
				request.setAttribute("Statut",Statut);
				request.setAttribute("TypeM", enS);
			}else {
				if(Statut.equals("Affecter") || Statut.equals("En cours d'instalation ") || Statut.equals("Apres l'instalation ")) {
					ServiceDAO SDAO = new ServiceDAO();
					List<SortieStockDAO> enS = SDAO.getAllSortieStockDAOby(Statut);
					request.setAttribute("Statut",Statut);
					request.setAttribute("Affecter", enS);
				}
			}
		else
			if(Statut.equals("") && !Type.equals("") && Marque.equals("") && Model.equals(""))
			{
				ServiceDAO SDAO = new ServiceDAO();
				List<EnStockDAO> enS = SDAO.getEnStockDAOByType(Type);
				request.setAttribute("Type",Type);
				request.setAttribute("TypeM", enS);
				
			}
			else
				if(Statut.equals("") && Type.equals("") && !Marque.equals("") && Model.equals("")) {
					ServiceDAO SDAO = new ServiceDAO();
					Services srv = new Services();
					Long Mid = Long.parseLong(Marque);
					
					MarqueMaterielDAO d = srv.getMarqueMaterielDAO(Mid);
					request.setAttribute("Marque",Marque);
					
					
					List<EnStockDAO> enS = SDAO.getEnStockDAOByMarque(d.getNomMarque());
					request.setAttribute("TypeM", enS);
							
				}else
					if(Statut.equals("") && Type.equals("") && !Marque.equals("") && !Model.equals("")) {
						ServiceDAO SDAO = new ServiceDAO();
						request.setAttribute("Marque",Marque);
						request.setAttribute("Model",Model);
						List<EnStockDAO> enS = SDAO.getEnStockDAOByModel(Model);
						request.setAttribute("TypeM", enS);
					}else
						if(!Statut.equals("") && !Type.equals("") && Marque.equals("") && Model.equals(""))
							if(Statut.equals("En stock")) {
								ServiceDAO SDAO = new ServiceDAO();
								request.setAttribute("Statut",Statut);
								request.setAttribute("Type",Type);
								List<EnStockDAO> enS = SDAO.getEnStockDAOMulti(Statut, Type);
								request.setAttribute("TypeM", enS);
							}else
								if(Statut.equals("Affecter") || Statut.equals("En cours d'instalation ") || Statut.equals("Apres l'instalation "))
								{
									ServiceDAO SDAO = new ServiceDAO();
									request.setAttribute("Statut",Statut);
									request.setAttribute("Type",Type);
									List<SortieStockDAO> enS = SDAO.getSortieStockDAOMulti(Statut, Type);
									request.setAttribute("Affecter", enS);
									
								}
								
									if(!Statut.equals("") && Type.equals("") && !Marque.equals("") && Model.equals(""))
										if(Statut.equals("En stock")) 
										{
											
											request.setAttribute("Statut",Statut);
											request.setAttribute("Marque",Marque);
											Long Mid = Long.parseLong(Marque);
											Services srv = new Services();
											MarqueMaterielDAO d = srv.getMarqueMaterielDAO(Mid);
										
										
											ServiceDAO SDAO = new ServiceDAO();
											List<EnStockDAO> enS = SDAO.getEnStockDAOMulti2(Statut, d.getNomMarque());
											request.setAttribute("TypeM", enS);
											
											
										}else
											if(Statut.equals("Affecter") || Statut.equals("En cours d'instalation ") || Statut.equals("Apres l'instalation "))
											{
												Long Mid = Long.parseLong(Marque);
												Services srv = new Services();
												MarqueMaterielDAO d = srv.getMarqueMaterielDAO(Mid);
												request.setAttribute("Statut",Statut);
												request.setAttribute("Marque",Marque);
												
												ServiceDAO SDAO = new ServiceDAO();
												List<SortieStockDAO> enS = SDAO.getSortieStockDAOMulti2(Statut, d.getNomMarque());
												request.setAttribute("Affecter", enS);
											}
											
												if(Statut.equals("") && !Type.equals("") && !Marque.equals("") && Model.equals(""))
												{
													request.setAttribute("Type",Type);
													request.setAttribute("Marque",Marque);
													Long Mid = Long.parseLong(Marque);
													Services srv = new Services();
													MarqueMaterielDAO d = srv.getMarqueMaterielDAO(Mid);	
													ServiceDAO SDAO = new ServiceDAO();
													List<EnStockDAO> enS = SDAO.getEnStockDAOMulti3(Type, d.getNomMarque());
													request.setAttribute("TypeM", enS);
													
												}
												else
													if(Statut.equals("") && !Type.equals("") && !Marque.equals("") && !Model.equals(""))
													{
														
														request.setAttribute("Type",Type);
														request.setAttribute("Marque",Marque);
														request.setAttribute("Model",Model);
														Long Mid = Long.parseLong(Marque);
														Services srv = new Services();
														MarqueMaterielDAO d = srv.getMarqueMaterielDAO(Mid);	
														ServiceDAO SDAO = new ServiceDAO();
														List<EnStockDAO> enS = SDAO.getEnStockDAOMulti4(Type,Model, d.getNomMarque());
														request.setAttribute("TypeM", enS);
													}
												
												
														if(!Statut.equals("") && !Type.equals("") && !Marque.equals("") && Model.equals("")) {
															
															if(Statut.equals("En stock")) 
															{
																request.setAttribute("Type",Type);
																request.setAttribute("Marque",Marque);
																request.setAttribute("Statut",Statut);
																Long Mid = Long.parseLong(Marque);
																Services srv = new Services();
																MarqueMaterielDAO d = srv.getMarqueMaterielDAO(Mid);	
																ServiceDAO SDAO = new ServiceDAO();
																List<EnStockDAO> enS = SDAO.getEnStockDAOMulti5(Type,Statut, d.getNomMarque());
																request.setAttribute("TypeM", enS);
																
															}else
																
																{
																request.setAttribute("Type",Type);
																request.setAttribute("Marque",Marque);
																request.setAttribute("Statut",Statut);
																	Long Mid = Long.parseLong(Marque);
																	Services srv = new Services();
																	MarqueMaterielDAO d = srv.getMarqueMaterielDAO(Mid);	
																	ServiceDAO SDAO = new ServiceDAO();
																	
																	List<SortieStockDAO> enS = SDAO.getSortieStockDAOMulti4(Statut,Type, d.getNomMarque());
																	request.setAttribute("Affecter", enS);
																}
															
															
														}
														if(!Statut.equals("") && !Type.equals("") && !Marque.equals("") && !Model.equals(""))
														{
															request.setAttribute("Type",Type);
															request.setAttribute("Marque",Marque);
															request.setAttribute("Statut",Statut);
															request.setAttribute("Model",Model);
															if(Statut.equals("En stock")) 
															{
																
																Long Mid = Long.parseLong(Marque);
																Services srv = new Services();
																MarqueMaterielDAO d = srv.getMarqueMaterielDAO(Mid);	
																ServiceDAO SDAO = new ServiceDAO();
																List<EnStockDAO> enS = SDAO.getEnStockDAOMulti6(Statut,Type, d.getNomMarque() , Model);
																request.setAttribute("TypeM", enS);
																
															}else
																
																{
																	
																	Long Mid = Long.parseLong(Marque);
																	Services srv = new Services();
																	MarqueMaterielDAO d = srv.getMarqueMaterielDAO(Mid);	
																	ServiceDAO SDAO = new ServiceDAO();
																	
																	List<SortieStockDAO> enS = SDAO.getSortieStockDAOMulti6(Statut,Type, d.getNomMarque(),Model);
																	request.setAttribute("Affecter", enS);
																}
														}
														
														
										
		doGet(request, response);
	}

}
