<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	
	
	<title>Formulaire Sortie Stock</title>
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
<body  class="materialdesign">
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
		  <form action="" method="post"  class="form-horizontal">
            <!-- MAIN CONTENT-->
          <div class="section__content section__content--p30" style=" background-color: RGB(255,249,246);">
          	<div class="container-fluid">
          		
          	
          		<div class="row">
           		<div class="col-md-12" style="margin-top: 90px;">
                          
                               
                                <div class="card">
                                   
                                    <div class="card-header" align="center" style="background-color: hotpink;">
                                        <strong style=" color: white;">Sortie Matériel de Stock</strong> 
                                    </div>
                                    
                                  
                                    
                                    
                                    <div class="card-body card-block">
                                      
								
					<div class="row form-group" >
							
								
                                
                                          
                                            
                                           
                                            <div class="col-lg-6">
                                             	<form  action="SortieDuMateriel" method="POST">
                                                <div class="input-group mb-3">
													  <div class="input-group-prepend">
													    <label class="input-group-text" for="inputGroupSelect01">Numéro d'inventaire</label>
													  </div>
													 
													 <input type="text"  name="NInvo" class="form-control">
													
													
													
													<button type="submit" class="btn btn-outline-secondary btn-sm">
                                            &nbsp;&nbsp;&nbsp;<i class="fa fa-search"></i>&nbsp;&nbsp;&nbsp;&nbsp;</button> 
													</div> 
											   </form>		
                                                </div>  

                                       
                                            <div class="col-lg-6">
                                         
                                  
                                              <form  action="SortieDuMateriel" method="POST">
                                                <div class="input-group mb-3">
                                                    		
													  <div class="input-group-prepend">
													    <label class="input-group-text" for="inputGroupSelect01">Numéro serie</label>
													  </div>
											  
													 <input type="text"  name="search" class="form-control">
													
													
													
													<button type="submit" class="btn btn-outline-secondary btn-sm">
                                            &nbsp;&nbsp;&nbsp;<i class="fa fa-search"></i>&nbsp;&nbsp;&nbsp;&nbsp;</button>
													
													  
                                           </div>
                                             </form>
                               					  </div>
                           
									   
							
							
							
							
									<div class="row form-group" style=" transform: translateX(15%)">
                                    
                                    <div class="card-body">
                                
                          <c:if test="${ !empty MSGERREU }">
                          <div class="sufee-alert alert with-close alert-danger alert-dismissible fade show" align="center">
                                        <span class="badge badge-pill badge-danger"> Erreur </span>
                                      <h4>  ${MSGERREU } </h4>
                                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                            <span aria-hidden="true">×</span>
                                        </button>
                                    </div>
                          
                          
                          </c:if>      
                                
                          <c:if test="${ !empty Materiel  }">
                                <table id="bootstrap-data-table" class="table table-striped table-bordered">
                                    <thead>
                                        <tr>
                                            </tr><tr>
                                            		<th>N inventaire </th>
                                            		<th>N serie </th>
                                                	<th>Materiel</th>
                                                    <th>Marque  </th>
                                                    <th>Modele</th>
                                                   
                                                    
                                            </tr>
                                        
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>
                                            	<input  name="idMateriel" type="hidden" value="${idMateriel }">
                                            	<input  name="DateAchat" type="hidden" value="${DateAchat }"> 
                                            	<input  name="N_Invo" type="hidden" value="${N_Invo }"> 
                                            	
                                            	<c:out value="${N_Invo }"></c:out>
                                            </td>
                                            <td>
                                            	<input  name="Nserie" type="hidden" value="${Nserie }"> 
                                            	<c:out value="${Nserie }"></c:out>
                                            </td>
                                            <td>
                                            	<input  name="Materiel" type="hidden" value="${Materiel }"> 
                                        			<c:out value="${Materiel }"></c:out>
                                             </td>
                                            <td> 
                                            	<input  name="Marque" type="hidden" value="${Marque }"> 
                                            	 <c:out value="${Marque }"></c:out>
                                            
                                            </td>
                                            <td> 
                                            <input  name="Modele" type="hidden" value="${Modele }"> 
                                             	<c:out value="${Modele }"></c:out>
                                            </td>
                                          
                                        </tr>
                                        
                                       
                                    </tbody>
                                </table>
                                
                                <br><br>
                                </c:if>
                 
                                        <div class="col-xs-6">
                                      <style>
				<!--fieldset 
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
							width: 35%;
							
							border: 1px solid #ddd;
							border-radius: 4px; 
							padding: 5px 5px 5px 10px; 
							background-color: #ffffff;
						}
		
-->
										</style>
   									
   										
   										<fieldset class="col-md-12">    	
									<legend>Attribuer</legend>
					
					
							
	                               <div class="row form-group">
	                               	 <div class="col-lg-2">
	                                                    <label for="selectSm" class=" form-control-label">Nom complet</label>
	                                  </div>
	                                    <div class="col-lg-4">           
                                                   
                                                         <input type="text" id="text-input" name="NomB" placeholder="Text" class="form-control">
                                  </div>
                                 	
                                  <div class="col-lg-2">
                                   <label for="text-input" class=" form-control-label">Direction </label>
                                  </div>
                                  <div class="col-lg-4">    
                                  	  <input type="text" id="text-input" name="Direction" placeholder="Text" class="form-control">
                                 </div>
                                  </div>            
                                                
                                 
					
						
								</fieldset>				
   												
   							
                          
                                        	

                          
                
                                               <div class="row form-group" >
                                                <div class="col-lg-2">
                                                    <label for="email-input" class=" form-control-label">Responsable de Sortie</label>
                                                </div>
                                                <div class="col-lg-4">
                                                    <input type="text" id="text" name="RespoSortie" placeholder="Saisie" class="form-control">
                                                   
                                                </div>
                                                  <div class="col-lg-2">
                                                    <label for="selectSm2" class=" form-control-label">Statut</label>
                                                </div>
                                                <div class="col-lg-4">
                                                    <select name="statut" id="SelectLm2" class="form-control-sm form-control">
                                                        <option value="0">Selectionner la statut</option>
                                                      	<option value = "En cours d'instalation ">En cours d'instalation </option>
                                                      	<option value = "Apres l'instalation ">Apres l'instalation  </option>
                                                      	<option value = "Affecter">Affecter  </option>
                                                    </select>
                                                </div>
                             
                                            </div>

                                           
                                            <div class="row form-group">
                                                <div class="col-lg-2">
                                                    <label for="date" class=" form-control-label">Date de sortie</label>
                                                </div>
                                                <div class="col-lg-4">
                                                <input type="text" id="today" name="DateSortie" class="form-control" value="${ Today }">
                                                    
                                                   
                                                </div>
                                              
                                            </div>
                                            </div>
                	<div class="row form-group" style="margin-top: 3%;">
                                               
                                                 <div class="col-lg-2">
                                                
                                                    <label for="select" class=" form-control-label">Commentaire</label>
                                             
                                      </div>
                                      <div class="col-lg-10">
                                       
                                           <textarea name="Remarque" id="textarea-input" rows="4" placeholder="commentaires..." class="form-control"></textarea>
                                              
                                          
                                       </div>    
                                               
                                       </div>
                                
                                	<div class="row form-group" style="margin-top: 3%;">
                                               
                                                 <div class="col-lg-2">
                                                
                                                    <label for="select" class=" form-control-label">Joint fichier  </label>
                                             
                                      </div>
                                      <div class="col-lg-10">
               
										<div class="input-group">
										  <div class="input-group-prepend">
										    <span class="input-group-text" id="inputGroupFileAddon01">Upload</span>
										  </div>
										  <div class="custom-file">
										    <input type="file" class="custom-file-input" id="inputGroupFile01"
										      aria-describedby="inputGroupFileAddon01" name = "FileJoint">
										    <label class="custom-file-label" for="inputGroupFile01">Choose file</label>
										  </div>
										</div>

                                       </div>    
                                               
                                       </div>            
                                            
                             

                              
                                                
                                              
                    <div class="col-lg-12" style="margin-top: 20px" align="center">
                                        <button type="submit" class="btn btn-outline-primary">
                                            <i class="fa fa-check-square-o"></i> Valider
                                        </button>
                                        <button type="reset" class="btn btn-outline-danger">
                                            <i class="fa fa-times-circle-o"></i> Rejeter   
                                        </button>
                                    </div>
                    </div>
                            </div>
										</div>
										</div>
										
        
                            </div>
                             </div>
                           </div>
                            </div>
                            </div>
                             </form>
                             
        </div>                     
                           
            </div>                 
                             
                           
                      	
    <!-- jquery
		============================================ -->
    <script src="js/vendor/jquery-1.11.3.min.js"></script>
    <!-- bootstrap JS
		============================================ -->
    <script src="js/bootstrap.min.js"></script>
    <!-- meanmenu JS
		============================================ -->
    <script src="js/jquery.meanmenu.js"></script>
    <!-- mCustomScrollbar JS
		============================================ -->
    <script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
    <!-- sticky JS
		============================================ -->
    <script src="js/jquery.sticky.js"></script>
    <!-- scrollUp JS
		============================================ -->
    <script src="js/jquery.scrollUp.min.js"></script>
    <!-- map JS
		============================================ -->
    <script src="js/data-table/bootstrap-table.js"></script>
    <script src="js/data-table/tableExport.js"></script>
    <script src="js/data-table/data-table-active.js"></script>
    <script src="js/data-table/bootstrap-table-editable.js"></script>
    <script src="js/data-table/bootstrap-editable.js"></script>
    <script src="js/data-table/bootstrap-table-resizable.js"></script>
    <script src="js/data-table/colResizable-1.5.source.js"></script>
    <script src="js/data-table/bootstrap-table-export.js"></script>
    <!--  dropzone JS
		============================================ -->
    <script src="js/dropzone.js"></script>
    <!-- multiple email JS
		============================================ -->
    <script src="js/multiple-email/multiple-email-active.js"></script>
    <!-- summernote JS
		============================================ -->
    <script src="js/summernote.min.js"></script>
    <script src="js/summernote-active.js"></script>
    <!-- main JS
		============================================ -->
    <script src="js/main.js"></script>
    		
    <script src="Contact/js/vendor/jquery-1.11.3.min.js"></script>
    <!-- bootstrap JS
		============================================ -->
    <script src="Contact/js/bootstrap.min.js"></script>
    <!-- meanmenu JS
		============================================ -->
    <script src="Contact/js/jquery.meanmenu.js"></script>
    <!-- mCustomScrollbar JS
		============================================ -->
    <script src="Contact/js/jquery.mCustomScrollbar.concat.min.js"></script>
    <!-- sticky JS
		============================================ -->
    <script src="Contact/js/jquery.sticky.js"></script>
    <!-- scrollUp JS
		============================================ -->
    <script src="Contact/js/jquery.scrollUp.min.js"></script>
    <!-- form validate JS
		============================================ -->
    <script src="Contact/js/jquery.form.min.js"></script>
    <script src="Contact/js/jquery.validate.min.js"></script>
    <script src="Contact/js/form-active.js"></script>
    <!-- main JS
		============================================ -->
    <script src="Contact/js/main.js"></script>
    
   
            </body>
                                

                                
             <%@include file = "Script.jsp" %>                 		
</html>