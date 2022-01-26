<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 	<%@page import="java.util.Iterator" %>
    <%@page import="dao.*" %>
	<%@ page import = "javax.servlet.http.HttpServletResponse"%>
	<%@page import = "java.util.Date" %>
	
    
<!DOCTYPE html>
<html>
<head>
	
	
	<title>Formulaire En Stock</title>
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
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
	<!--Load Script and Stylesheet -->
	<script type="text/javascript" src="DateToDay/jquery.simple-dtpicker.js"></script>
	<link type="text/css" href="DateToDay/jquery.simple-dtpicker.css" rel="stylesheet" />
	<!---->
	

</head>
<body>
	

	<!-- 	
		 <div class="modal fade" role="dialog" id="addTypeModal">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h3 class="modal-title"> Type de materiel</h3>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					</div>

 			<form action="AjoutMateriels" method="post" class="form-inline">
					<div class="modal-body">
					
					
						
						 <input type="text" id="text-input" name="TypeM" placeholder="Ajout type " class="form-control">
                         </div>                   
						

						<div class="modal-footer">
							<button type="submit" class="btn btn-primary btn-sm">
                                            <i class="fa fa-dot-circle-o"></i> Ajouter
                             </button>

						</div>
						
					
					</form>
				</div>
			</div>

		</div>       
		
		
		
		<div class="modal fade" role="dialog" id="AddMarqueModal">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h3 class="modal-title"> Marque </h3>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					</div>

 			<form action="AjoutMateriels" method="post" class="form-inline">
					<div class="modal-body">
					
					
						
						 <input type="text" id="text-input" name="MarqueM" placeholder="Ajout Marque " class="form-control">
                         </div>                   
						

						<div class="modal-footer">
							<button type="submit" class="btn btn-primary btn-sm">
                                            <i class="fa fa-dot-circle-o"></i> Ajouter
                             </button>

						</div>
						
					
					</form>
				</div>
			</div>

		</div>       
		
		
		<div class="modal fade" role="dialog" id="AddModelModal">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h3 class="modal-title"> Modéle materiel </h3>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					</div>

 			<form action="AjoutMateriels" method="post" class="form-inline">
					<div class="modal-body">
					
					 <select name="idMarque" id="SelectLm" class="form-control-sm form-control">
                                                       
                                                        <option value="0">Selectionner le materiel</option>
                                                        <c:forEach var="MarqueMateriel" items="${ MarqueMs }">
           					 								<option value="${ MarqueMateriel.getIdMarque() }"> <c:out value="${ MarqueMateriel.getNomMarque()}" /></option>
      													</c:forEach>
                                                   
                                                    </select>
						
						 <input type="text" id="text-input" name="MarqueM" placeholder="Ajout Model " class="form-control">
                         </div>                   
						

						<div class="modal-footer" align="right">
							<button type="submit" class="btn btn-primary btn-sm">
                                            <i class="fa fa-dot-circle-o"></i> Ajouter
                             </button>

						</div>
						
					
					</form>
				</div>
			</div>

		</div>       
		
		
		
		
		
		
		 <div class="modal fade" role="dialog" id="AddFournisseurModal">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h3 class="modal-title"> Fournisseur</h3>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					</div>

 			<form action="AjoutMateriels" method="post" class="form-inline">
					<div class="modal-body">
					
					 <input type="text" id="text-input" name="FournisseurM" placeholder="Ajout Fournisseur" class="form-control">
                                                  
                         </div>                   
						

						<div class="modal-footer">
							<button type="submit" class="btn btn-primary btn-sm">
                                            <i class="fa fa-dot-circle-o"></i> Ajouter
                             </button>

						</div>
						
					
					</form>
				</div>
			</div>

		</div>               
		 -->
		<div class="page-wrapper">
        <!-- HEADER MOBILE-->
        	
        <!-- END HEADER MOBILE-->

       	 <!-- MENU SIDEBAR-->
			<%@include file="Menu.jsp" %>
        <!-- END MENU SIDEBAR-->

        <!-- PAGE CONTAINER-->
        <div class="page-container">
            <!-- HEADER DESKTOP-->
			<%@ include file = "header.jsp" %>
            <!-- HEADER DESKTOP-->
		  <form action="FormulaireEnStocks" method="post"  class="form-horizontal">
            <!-- MAIN CONTENT-->
          <div class="section__content section__content--p30">
          	<div class="container-fluid">
          		
          	
          		<div class="row">
           		<div class="col-md-12" style="margin-top: 90px;">
                          
                               
                                <div class="card">
                                   
                                    <div class="card-header">
                                        <strong>Entrée materiel </strong> En stock
                                    </div>
                                    
                                  
                                    
                                    <div class="card-body card-block">
                                      
								
                                        <div class="col-xs-6" onchange="Script();">
                                        	
                                        	<div class="row form-group">
                                                <div class="col-lg-2">
                                                    <label for="" class=" form-control-label">Numéro d'inventaire</label>
                                                </div>
                                                <div class="col-lg-4">
                                                
                                               
                                                    <input type="text" id="text" name="Ninventaire" placeholder="Saisie"  <c:if test="${!empty NumIvo }"> value = "<c:out value="${ NumIvo }"/>" </c:if>class="form-control">
                                               
                                                    
                                                    
                                                </div>
                                                 <div class="col-lg-2">
                                                    <label for="text-input" class=" form-control-label">N* de serie </label>
                                                </div>
                                                <div class="col-lg-4">
                                                    <input type="text" id="text-input" name="NSerie" placeholder="Saisie" class="form-control">
                                                    
                                                </div>         
                                          </div>
                                        	
                                        	<div class="row form-group">
                                        	
                                        
	                                                <div class="col-lg-2">
	                                                    <label for="selectSm" class=" form-control-label">Type de materiel</label>
	                                                </div>
                                                <div class="col-lg-4">
                                                    <select name="TypeMateriels" id="SelectLm" class="form-control-sm form-control" >
                                                        <option value="0">Selectionner le type </option>
                                            
                                                        <c:forEach var="TypeMateriel" items="${ TypeMateriels }">
           					 								<option value="${ TypeMateriel.getNomMateriel() }"  <c:if test="${ !empty TypeM && TypeMateriel.getNomMateriel() == (TypeM)  }"> selected </c:if> > <c:out value="${ TypeMateriel.getNomMateriel() }" /></option>
      													</c:forEach>
                                                        
                                                        
                                                                                                   
                                                    </select>
                                                </div>
                                                  <!-- 
                                                        <div class="col-lg-1">
                                                        
                                    			<button type="button" class="btn btn-outline-secondary btn-sm" data-toggle="modal" data-target="#addTypeModal"> <i class="fa fa-plus"></i></button>	
                                    			
                                    			</div> -->
                          
                                               <div class="col-lg-2">
                                                    <label for="selectSm" class=" form-control-label">Fournisseur</label>
                                                </div>
                                                <div class="col-lg-4">
                                                    <select name="Fournisseur" id="SelectLm" class="form-control-sm form-control">
                                                        <option value="0">Selectionner le fournisseur</option>
                                                      	<c:forEach var="FourniseurMateriel" items="${ FourniseurMateriels }">
           					 								<option value="${ FourniseurMateriel.getNomFournisseur()  }" <c:if test="${ !empty Fourniseur && FourniseurMateriel.getNomFournisseur() == (Fourniseur)  }"> selected </c:if>> <c:out value="${FourniseurMateriel.getNomFournisseur() }" /></option>
      													</c:forEach>
                                                    </select>
                                                </div> 
                                    			<!-- 
                                    			<div class="col-lg-1">
                                    			
                                    				<button type="button" class="btn btn-outline-secondary btn-sm" data-toggle="modal" data-target="#AddFournisseurModal"><i class="fa fa-plus"></i></button>
                                    			
                                    			</div>
                                     -->
                                    
                                    
                                    
                                            </div>
                                            
                                            <div class="row form-group">
                                         
                                             
                                                
                                                 <div class="col-lg-2">
                                                    <label for="selectSm" class=" form-control-label">Marque materiel</label>
                                                </div>
                                                <div class="col-lg-4">
         									
                                                    <select name="MarqueMateriel" id="SelectLm" class="form-control-sm form-control" onchange="rafraichir(this);" >
                                                       
                                                        <option value="0">Selectionner le materiel</option>
                                                        <c:forEach var="MarqueMateriel" items="${ MarqueMateriels }">
           					 								<option value="${MarqueMateriel.getIdMarque() }" <c:if test="${ !empty MarqueM && MarqueMateriel.getIdMarque() == (MarqueM)  }"> selected </c:if> > <c:out value="${ MarqueMateriel.getNomMarque() }" /></option>
      													</c:forEach>
                                                   
                                                    </select>

                                                </div>
                                           <!--     
                                                <div class="col-lg-1">
                                    			
                                    				<button type="button" class="btn btn-outline-secondary btn-sm" data-toggle="modal" data-target="#AddMarqueModal"><i class="fa fa-plus"></i></button>
                                    			
                                    			</div>
                                                
                                                 --> 
                                                
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
     												
                                         <div class="col-lg-2">
                                                    <label for="selectSm" class=" form-control-label">Model</label>
                                                </div>
                                                <div class="col-lg-4">
         									
                                                   <div id="theValue1">
                                                   <select name="Model" id="SelectLm" class="form-control-sm form-control"  >
                                                      <c:if test="${ !empty ModelM }"> 
                                                      
                                                      <option value="${ ModelM }">${ModelM }</option>
                                                      
                                                      
                                                      </c:if>  
                                                        <option value="0">Selectionner le model</option>
                                                        
                                                        
                                                        </select>
                                        			 </div>
                                            

                                                </div>
                                          <!-- 
                                           <div class="col-lg-1">
                                    			
                                    				<button type="button" class="btn btn-outline-secondary btn-sm" data-toggle="modal" data-target="#AddModelModal"><i class="fa fa-plus"></i></button>
                                    			
                                    			</div>
                                            -->
                                           </div>
						
									
									           
                                            <div class="row form-group">
                                                <div class="col-lg-2">
                                                    <label for="date" class=" form-control-label">Date d'achat</label>
                                                </div>
                                                <div class="col-lg-4">
                                                 
                                                    <input type="text" id="today" name="DataAchat" class="form-control" value="${ Today }">
                                                  
                                                </div>
                                                
                                            </div>
                                            </div>

											<div class="row form-group">
                                                
										</div>
                                            
                                        <div class="col-xs-6">   
                                  			<div class="row form-group">
                                                <div class="col-lg-2">
                                                    <label for="email-input" class=" form-control-label">Numero BC</label>
                                                </div>
                                                <div class="col-lg-4">
                                                    <input type="text" id="text" name="BCNom" placeholder="Saisie" class="form-control" <c:if test="${!empty BCM }"> value = "<c:out value="${ BCM }"/>" </c:if>>
                                                    
                                                </div>
                                                  <div class="col-lg-2">
                                                    <label for="email-input" class=" form-control-label">Numero BL.</label>
                                                </div>
                                                <div class="col-lg-4">
                                                    <input type="text" id="text" name="BLNom" placeholder="Saisie" class="form-control" <c:if test="${!empty BLM }"> value = "<c:out value="${ BLM }"/>" </c:if>>
                                                    
                                                </div>
                                            </div>
                                                
                                            </div>

                                            
                                                      <div class="col-xs-6">   
                                  			<div class="row form-group">
                                                <div class="col-lg-2">
                                                    <label for="" class=" form-control-label">Budget </label>
                                                </div>
                                                <div class="col-lg-4">
                                                    <input type="text" id="text" name="Budget" placeholder="Saisie" class="form-control" <c:if test="${!empty BudgetM }"> value = "<c:out value="${ BudgetM }"/>" </c:if>>
                                                    
                                                </div>
                                                  <div class="col-lg-2">
                                                    <label for="email-input" class=" form-control-label">Responsable d’entrée </label>
                                                </div>
                                                <div class="col-lg-4">
                                                    <input type="text" id="text" name="ResposableSortie" placeholder="Saisie" class="form-control" <c:if test="${!empty ResposableS }"> value = "<c:out value="${ ResposableS }"/>" </c:if>>
                                                    
                                                </div>
                                            </div>
                                                
                                      
                                       
                                       
                                                  
                                                      
                                  	
                                            
                                            	<div class="row form-group">
                                               
                                                 <div class="col-lg-2">
                                                
                                                    <label for="select" class=" form-control-label">Commentaire</label>
                                             
                                      </div>
                                      <div class="col-lg-10">
                                       
                                           <textarea name="Commentaire" id="textarea-input" rows="4" placeholder="commentaires..." class="form-control"></textarea>
                                              
                                          
                                       </div>    
                                               
                                       </div>
                                       </div>
                                       
                                       </div>
                                    <div class="card-footer" align="center">
                                        <button type="submit" class="btn btn-primary btn-sm">
                                            <i class="fa fa-floppy-o"></i> Enregistrer
                                        </button>
                                        <button type="reset" class="btn btn-danger btn-sm" onclick="reloadfct();">
                                            <i class="fa fa-undo"></i> vider	
                                        </button>
                                    </div>
                      
                             		</div>
                            		<script type="text/javascript">
                            		
                            		function reloadfct() {
                            			location.reload(); 
									}
                            		
                            		</script>
                             
                                
                         
                         
                         
                         
                         
                            </div>
                             </div>
                           </div>
                            </div>
                             </form>
                             </div>
                           
                             </div>
                             
                           
                             
              
   
            </body>
                                

                                
             <%@include file = "Script.jsp" %>                 		
</html>