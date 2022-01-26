<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	
	
	<title>Consulter opérations</title>
	<!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="au theme template">
    <meta name="author" content="Hau Nguyen">
    <meta name="keywords" content="au theme template">

    <!-- Title Page-->
    

    <!-- Fontfaces CSS-->
    <link href="css/font-face.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-5/css/fontawesome-all.min.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">

    <!-- Bootstrap CSS-->
    <link href="vendor/bootstrap-4.1/bootstrap.min.css" rel="stylesheet" media="all">

    <!-- Vendor CSS-->
    <link href="vendor/animsition/animsition.min.css" rel="stylesheet" media="all">
    <link href="vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet" media="all">
    <link href="vendor/wow/animate.css" rel="stylesheet" media="all">
    <link href="vendor/css-hamburgers/hamburgers.min.css" rel="stylesheet" media="all">
    <link href="vendor/slick/slick.css" rel="stylesheet" media="all">
    <link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="vendor/perfect-scrollbar/perfect-scrollbar.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="css/theme.css" rel="stylesheet" media="all">
	
</head>
<body class="animsition" >

	

   <div class="modal fade" role="dialog" id="addTypeModal" align="center" style="margin-top: 10%;">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h3 class="modal-title"> Operation</h3>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					</div>

 			<form action="EditerModif" method="post" class="form-inline">
					<div class="modal-body">
						<input type="hidden" id="today" name="IdSerie" class="form-control" value="${ LC.getIdEnStock() }" >
						<button type="submit" class="btn btn-outline-primary">
                                            <i class="fa fa-pencil-square-o"></i>&nbsp; Modifier</button>
                                            
                        <button type="button" class="btn btn-outline-danger">
                                            <i class="fa fa-minus-circle"></i>&nbsp; Supprimer</button>
					
					</div>
						
					
					</form>
				</div>
			</div>

		</div>       
	
	

   

		<div class="page-wrapper">
        <!-- HEADER MOBILE-->
        	<%@include file="Meta.jsp" %>
        <!-- END HEADER MOBILE-->
	
       	 <!-- MENU SIDEBAR-->
			<%@include file="Menu.jsp" %>
        <!-- END MENU SIDEBAR-->

        <!-- PAGE CONTAINER-->
        <div class="page-container">
            <!-- HEADER DESKTOP-->
			<%@ include file = "header.jsp" %>
            <!-- HEADER DESKTOP-->
 <div class="section__content section__content--p30" style=" background-color: RGB(255,249,246);">
          
          
        
		
		
		<br>
        <div class="content" >
            <div class="animated fadeIn">
                
               
               <div class="row">
           		<div class="col-md-12" style="margin-top: 70px;">
                          
                               
                                <div class="card">
                                   
                                    <div class="card-header" align="center" style="background-color: hotpink;">
                                        <strong style=" color: white;">Etat / Rapport </strong> 
                                    </div>
                                    
                                  
                        
                                    
                                    <div class="card-body card-block">
                                      
								
					
                 
                                        <div class="col-xs-6">
                                      <style>
					fieldset 
					{
						border: 1px solid #ddd !important;
						margin: 0;
						
						padding: 10px;       
						
						border-radius:4px;
						background-color:#f5f5f5;
						padding-left:10px!important;
						height : 100%;
						margin-bottom: 5%; 
					}	
					
						legend
						{
							font-size:14px;
							font-weight:bold;
							margin-bottom: 0px; 
							width: 30%;
							
							border: 1px solid #ddd;
							border-radius: 4px; 
							padding: 5px 5px 5px 10px; 
							background-color: #ffffff;
						}
		
-->
										</style>
   									<form action="ConsulterOperations#vue" method="post">            	
   										
   										<fieldset class="col-md-12">    	
									<legend>Critère de recherche</legend>
					
				
							
	                               <div class="row form-group">
	                               	 <div class="col-lg-2">
	                                                    <label for="selectSm" class=" form-control-label">Statut</label>
	                                  </div>
	                                    <div class="col-lg-4">           
                                                   
                                                 <select name="statut" id="SelectLm2" class="form-control-sm form-control">
                                                         
                                                        <option value="">Selectionner la statut</option>
                                                        
                                                        <option value = "En stock" <c:if test="${ !empty Statut && Statut == Enstock  }"> selected </c:if> >En Stock </option>
                                                      	<option value = "En cours d'instalation " <c:if test="${ !empty Statut && Statut == Encours  }"> selected </c:if>>En cours d'instalation </option>
                                                      	<option value = "Apres l'instalation " <c:if test="${ !empty Statut && Statut == apresInsta  }"> selected </c:if>>Apres l'instalation  </option>
                                                      	<option value = "Affecter" <c:if test="${ !empty Statut && Statut == affect  }"> selected </c:if>>Affecter  </option>
                                                    </select>
                                  </div>
                                 	
                                  <div class="col-lg-2">
                                   <label for="text-input" class=" form-control-label">Type Materiel </label>
                                  </div>
                                  <div class="col-lg-4">    
                                  	 <select name="TypeMateriels" id="SelectLm" class="form-control-sm form-control" >
                                                        <option value="">Selectionner le type </option>
                                            
                                                        <c:forEach var="TypeMateriel" items="${ TypeMateriels }">
           					 								<option value="${ TypeMateriel.getNomMateriel() }"  <c:if test="${ !empty Type && TypeMateriel.getNomMateriel() == (Type)  }"> selected </c:if> > <c:out value="${ TypeMateriel.getNomMateriel() }" /></option>
      													</c:forEach>
                                                        
                                                        
                                                                                                   
                                                    </select>
                                 </div>
                                  </div>            
                                                
                                 <script type="text/javascript">
                                                
                                                function rafraichir(s) {
                                                	
                                                	
                                                	var v = s.value
                                                	$.ajax({
                                                		type : 'POST',
                                                		data : {v : v},
                                                		url : 'AjaxControle',
                                                		success : function(test){
                                                		
                                                			window.document.getElementById("theValue1").innerHTML ="";
                                                			var div = document.createElement("div");
                                                			div.innerHTML = test;
                                             				
                                                			window.document.getElementById("theValue1").appendChild(div);
                                                			
                                                		}
                                                		
                                                	});
                                                	
                                                   
                                                }
                                                
                                 </script>
					 <div class="row form-group">
	                               	 <div class="col-lg-2">
	                                                    <label for="selectSm" class=" form-control-label">Marque</label>
	                                  </div>
	                                    <div class="col-lg-4">           
                                                   
                                                        <select name="MarqueMateriel" id="SelectLm" class="form-control-sm form-control" onchange="rafraichir(this);" >
                                                       
                                                        <option value="">Selectionner le materiel</option>
                                                        <c:forEach var="MarqueMateriel" items="${ MarqueMateriels }">
           					 								<option value="${MarqueMateriel.getIdMarque() }" <c:if test="${ !empty Marque && MarqueMateriel.getIdMarque() == (Marque)  }"> selected </c:if> > <c:out value="${ MarqueMateriel.getNomMarque() }" /></option>
      													</c:forEach>
                                                   
                                                    </select>
                                  </div>
                                 	 
                                  <div class="col-lg-2">
                                   <label for="text-input" class=" form-control-label">Model </label>
                                  </div>
                                  <div class="col-lg-4"> 
                                   <div id="theValue1">   
                                  	   <select name="Model" id="SelectLm" class="form-control-sm form-control"  >
                                                      <c:if test="${ !empty Model }"> 
                                                      
                                                      <option value="${ Model }">${Model }</option>
                                                      
                                                      
                                                      </c:if>  
                                                        <option value="">Selectionner le model</option>
                                                        
                                                        
                                                        </select>
</div>                                 </div>
                                  </div>            
                                                
						
								</fieldset>				
   												
   							             <div class="row form-group">
                                                <div class="col-lg-2">
                                                    <label for="Quantite" class=" form-control-label">Quantité</label>
                                                </div>
                                                <div class="col-lg-4">
                                                 
                                                    <input type="text" id="today" name="Quantite" class="form-control" 
                                                <c:if test="${ !empty TabStatutEnStock  }">  
                                                    value="${ TabStatutEnStock.size() }" 
                                                 </c:if>   
                                                <c:if test="${ !empty Affecter  }">  
                                                    value="${ Affecter.size() }" 
                                                 </c:if>   
                                                    <c:if test="${ !empty TypeM  }">  
                                                    value="${ TypeM.size() }" 
                                                 </c:if>   
                                                  
                                                    
                                                    disabled="disabled">
                                                  
                                                </div>
                                                <div class="col-lg-6" align="right">
                                                
                                                <button type="submit" class="btn btn-outline-primary">
                                            <i class="fa fa-check-square-o"></i> &nbsp;&nbsp;<strong>  Edit</strong> &nbsp;&nbsp;&nbsp;
                                        </button>
                                                
                                                </div>
                                            </div>
                                       </form>    
                          
                                        	

                          
                
                                                
             
                    </div>
                            </div>
										</div>
										</div>
										
        
                            </div>
                             </div>
                           </div>
               
               
                
                
                <div class="row" >
						
						
                    <div class="col-md-12">
                    
                    
                        <div class="card">
                            <div class="card-header" align="center" id="vue" style="size: auto;">
                                <strong class="card-title">Consulter opérations</strong>
                            </div>
                    
                            <div class="row from-group" >
                             <div class="col-md-12">
                                <table id="bootstrap-data-table" class="table table-striped table-bordered" style="width: 100%;">
                                   
                                   <c:if test="${ !empty TypeM }">
                                    <thead>
                                   
                                  
                                        <tr>
                                            <tr>
                                                <th>N serie  </th>
                                                    <th>Inventaire </th>     
                                                    <th> Type </th>
                                                    <th >Marque </th>
                                                    <th> Model</th>
                                         <!--            <th >Fournisseur</th> -->
                                                    <th>Statut</th> 
                                                     <th>Date Achat </th>
                                                    <th><i class="fa fa-exchange"></i> </th>
                                                 
                                            </tr>
                                        
                                    </thead>
                                    <tbody>
                                      <c:forEach var="LC" items="${ TypeM }">
                                        <tr>
                                            <td>${ LC.getNserie() }</td>
                                            <td>${ LC.getNumeroInventaire() }</td>
                                            <td>${ LC.getTypeMateriel()  }</td>
                                            <td>${ LC.getMarqueMateriel() } </td>
                                            <td>${ LC.getModel() }</td>
                                      <!--      <td>${ LC.getFournisseur() } </td> --> 
                                            <td>
                                            ${ LC.getStatut() }
                                            </td>
                                             <td>
                                            ${ LC.getDate() }
                                            </td>
                                             <td>
                                          <div class="col-lg-1" align="center">
                                     <form action="EditerModif" method="post" class="form-inline">       
                                                        <input type="hidden" id="today" name="IdSerie" class="form-control" value="${ LC.getIdEnStock()}" >
                                    			<button type="submit" class="btn btn-outline-primary" >
                                            <i class="fa fa-pencil-square-o">  </i></button>
                                    	</form>	
                                    	</div> 
                                    	
                                    	
                                         <!--    ${ LC.getCommentaire() } -->
                                           
                                            </td>
                                          
                                        </tr>
                                        </c:forEach>
                                        
                                    </tbody>
                                    
                                     </c:if>
                                   
                                   
                                   
                                   
                                    <c:if test="${ !empty Affecter }">
                                    <thead >
                                   
                                  
                                        <tr>
                                            <tr>
                                                <th>N serie  </th>
                                                    <th>Inventaire </th>     
                                                    <th> Type </th>
                                                    <th >Marque </th>
                                                   
                                                   
                                                    <th>Direction affecter</th> 
                                                     <th>Date Achat </th>
                                                    <th> Date Sortie </th>
                                                 	<th> <i class="fa fa-exchange"></i></th>
                                            </tr>
                                        
                                    </thead>
                                    <tbody >
                                      <c:forEach var="LC" items="${ Affecter }">
                                        <tr>
                                            <td>${ LC.getNserie() }</td>
                                            <td>${ LC.getNinvo() }</td>
                                            <td>${ LC.getMateriel()  }</td>
                                            <td>${ LC.getMarque() } </td>
                                            
             
                                            <td>
                                            ${ LC.getDirection() }
                                            </td>
                                             <td>
                                            ${ LC.getDateAchat() }
                                            </td>
                                             <td>
                                            ${ LC.getDate() }
                                            </td>
                                            <td>
                                             <div class="col-lg-1" align="center">
                                     <form action="EditerModifHorsStock" method="post" class="form-inline">       
                                          <input type="hidden" id="" name="IdSerie2" class="form-control" value="${ LC.getIdSortie() }" >
                                    			<button type="submit" class="btn btn-outline-primary" >
                                            <i class="fa fa-pencil-square-o">  </i></button>
                                    	</form>	
                                    	</div> 
                                            
                                            
                                            </td>
                                        
                                          
                                        </tr>
                                        </c:forEach>
                                        
                                    </tbody>
                                    
                                     </c:if>
                                     
                                       <c:if test="${ !empty TabStatutEnStock }">
                                    <thead>
                                   
                                  
                                        <tr>
                                            <tr>
                                                <th>N serie  </th>
                                                    <th>Inventaire </th>
                                                    <th>Date Achat </th>
                                                    <th> Type </th>
                                                    <th >Marque </th>
                                                    <th> Model</th>
                                                    <th >Fournisseur</th>
                                                 		<th>Statut</th> 
                                                     
                                                    <th> Obs </th>
                                                 
                                            </tr>
                                        
                                    </thead>
                                    <tbody>
                                      <c:forEach var="LC" items="${ TabStatutEnStock }">
                                        <tr>
                                            <td>${ LC.getNserie() }</td>
                                            <td>${ LC.getNumeroInventaire() }</td>
                                            <td>${ LC.getDate() }</td>
                                            <td>${ LC.getTypeMateriel() } </td>
                                            <td>${ LC.getMarqueMateriel() }</td>
                                            <td>${ LC.getModel() } </td>
                                            <td>
                                            ${ LC.getFournisseur() }
                                            </td>
                                          <td>
                                            ${ LC.getStatut() }
                                            </td>
                                           
                                             <td>
                                            ${ LC.getCommentaire() }
                                            </td>
                                          
                                        </tr>
                                        </c:forEach>
                                        
                                    </tbody>
                                    
                                     </c:if>
                                </table>

                                
                            </div>
                        </div>

</div>

                </div>

            </div><!-- .animated -->
        </div><!-- .content -->


   </div>
   </div>  


  

    <!-- Right Panel -->

    <!-- Scripts -->
    


    <script src="assets/js/lib/data-table/datatables.min.js"></script>
    <script src="assets/js/lib/data-table/dataTables.bootstrap.min.js"></script>
    <script src="assets/js/lib/data-table/dataTables.buttons.min.js"></script>
    <script src="assets/js/lib/data-table/buttons.bootstrap.min.js"></script>
    <script src="assets/js/lib/data-table/jszip.min.js"></script>
    <script src="assets/js/lib/data-table/vfs_fonts.js"></script>
    <script src="assets/js/lib/data-table/buttons.html5.min.js"></script>
    <script src="assets/js/lib/data-table/buttons.print.min.js"></script>
    <script src="assets/js/lib/data-table/buttons.colVis.min.js"></script>
    <script src="assets/js/init/datatables-init.js"></script>
    
      <script src="https://cdn.jsdelivr.net/npm/jquery@2.2.4/dist/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.4/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery-match-height@0.7.2/dist/jquery.matchHeight.min.js"></script>
    <script src="assets/js/menu.js"></script>

    <!--  Chart js -->
    <script src="https://cdn.jsdelivr.net/npm/chart.js@2.7.3/dist/Chart.bundle.min.js"></script>

    <!--Chartist Chart-->
    <script src="https://cdn.jsdelivr.net/npm/chartist@0.11.0/dist/chartist.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/chartist-plugin-legend@0.6.2/chartist-plugin-legend.min.js"></script>

    <script src="https://cdn.jsdelivr.net/npm/jquery.flot@0.8.3/jquery.flot.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/flot-pie@1.0.0/src/jquery.flot.pie.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/flot-spline@0.0.1/js/jquery.flot.spline.min.js"></script>

    <script src="https://cdn.jsdelivr.net/npm/simpleweather@3.1.0/jquery.simpleWeather.min.js"></script>
    <script src="assets/js/init/weather-init.js"></script>

    <script src="https://cdn.jsdelivr.net/npm/moment@2.22.2/moment.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/fullcalendar@3.9.0/dist/fullcalendar.min.js"></script>
    <script src="assets/js/init/fullcalendar-init.js"></script>

    <script type="text/javascript">
        $(document).ready(function() {
          $('#bootstrap-data-table-export').DataTable();
      } );
  </script>
  

            </body>
                                

                                
             <%@include file = "Script.jsp" %>                 		

</html>