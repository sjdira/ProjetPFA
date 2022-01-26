<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <c:if test="${ !empty sessionScope.DroitAcces }">
<!DOCTYPE html>
<html>
<head>
	
	
	<title>Ajout Materiel
	</title>
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
<body class="animsition">

		<div class="page-wrapper">
        <!-- HEADER MOBILE-->
        <%@include file="Meta.jsp" %>
        <!-- END HEADER MOBILE-->

        <!-- MENU SIDEBAR-->
		<%@include file="Menu.jsp" %>
        <!-- END MENU SIDEBAR-->

        <!-- PAGE CONTAINER-->
        <div class="page-container" style=" background-color: RGB(255,249,246);">
            <!-- HEADER DESKTOP-->
		<%@ include file = "header.jsp" %>
            <!-- HEADER DESKTOP-->

        
            <!-- MAIN CONTENT-->
        <div class="section__content section__content--p30">
          	<div class="container-fluid">
          			<div class="row   form-group">
           				
           				
                              <div class ="col-lg-6"  style="margin-top: 11%;">
                             
                               <form action="" method="post" class="form-inline">
                                <div class="card" >
                                    <div class="card-header">
                                        <strong>Type de materiel </strong> 
                                    </div>
                                    
                                    <div class="card-body card-block">
                                        
                                           	<div class="form-group">
                                      
                                        	  <div class="col-12 col-md-9">
                                                    <input type="text" id="text-input" name="TypeM" placeholder="Text" class="form-control">
                                                  
                                               </div>

                                        	</div>   
                                        
                                    </div>
                                    <div class="card-footer">
                                        <button type="submit" class="btn btn-primary btn-sm">
                                            <i class="fa fa-dot-circle-o"></i>
                                        </button>
                                        <button type="reset" class="btn btn-danger btn-sm">
                                            <i class="fa fa-ban"></i> Supprimer
                                        </button>
                                    </div>
                                    
                                </div>
							</form>



							
						</div>
			  <div class ="col-lg-6" style="margin-top: 11%">			
						<form action="" method="post" class="form-inline">
                                <div class="card" >
                                
                                       <div class="card-header">
                                        <strong>Fournisseur </strong> 
                                    </div>
                                    <div class="card-body card-block">
                                        
                                           <div class="form-group">
                                      
                                        	  <div class="col-12 col-md-9">
                                                    <input type="text" id="text-input" name="FournisseurM" placeholder="Text" class="form-control">
                                                  
                                               </div>

                                        </div>   
                                   
                                       
                                    </div>
                                    <div class="card-footer">
                                        <button type="submit" class="btn btn-primary btn-sm">
                                            <i class="fa fa-dot-circle-o"></i> Ajouter
                                        </button>
                                        <button type="reset" class="btn btn-danger btn-sm">
                                            <i class="fa fa-ban"></i> Supprimer
                                        </button>
                                    </div>
                                </div>
							 </form>
				</div>
   					<div class ="col-lg-6">
							  <form action="" method="post" class="form-inline">
                                <div class="card" >
                                    <div class="card-header">
                                        <strong>Marque du materiel </strong>
                                    </div>
                                    <div class="card-body card-block">
                                        
                                           <div class="form-group">
                                      
                                        	  <div class="col-12 col-md-9">
                                                    <input type="text" id="text-input" name="MarqueM" placeholder="Text" class="form-control">
                                                  
                                               </div>

                                        </div>   
                                   
                                   
                                  
                                    </div>
                                    <div class="card-footer">
                                        <button type="submit" class="btn btn-primary btn-sm">
                                            <i class="fa fa-dot-circle-o"></i> Ajouter
                                        </button>
                                        <button type="reset" class="btn btn-danger btn-sm">
                                            <i class="fa fa-ban"></i> Supprimer
                                        </button>
                                    </div>
                                </div>	
							 </form>
							      </div>
							      
							      
							        <div class ="col-lg-6" >
							  <form action="" method="post" class="form-inline"> 
                                <div class="card" >
                               <div class="card-header">
                                        <strong>Modele du materiel </strong>
                                    </div>
                                    <div class="card-body card-block" >
                                    
                                    <div class="from-group" align="center" style="transform: translate(0, -15%);">
                                             <select name="idMarque" id="SelectLm" class="form-control-sm form-control">
                                                       
                                                        <option value="0">Selectionner le materiel</option>
                                                        <c:forEach var="MarqueMateriel" items="${ MarqueMateriels }">
           					 								<option value="${ MarqueMateriel.getIdMarque() }"> <c:out value="${ MarqueMateriel.getNomMarque()}" /></option>
      													</c:forEach>
                                                   
                                                    </select>
                                          
                                		</div>
                                        
                                           <div class="form-group">
                                      
                                        	  <div class="col-12 col-md-9">
                                                    <input type="text" id="text-input" name="ModeleM" placeholder="Text" class="form-control">
                                                  	
                                               </div>

                                        </div>   
                                       
                                       
                                    </div>
                                    <div class="card-footer">
                                        <button type="submit" class="btn btn-primary btn-sm">
                                            <i class="fa fa-dot-circle-o"></i> Ajouter
                                        </button>
                                        <button type="reset" class="btn btn-danger btn-sm">
                                            <i class="fa fa-ban"></i> Supprimer
                                        </button>
                                    </div>
                                </div>
                           </form>
</div>
<div>  <br><br>
</div>

</div>
</div>
<br><br>
<br><br></div>

</div>
</div>



   
            </body>
                                

                                
             <%@include file = "Script.jsp" %>                 		

</html>
</c:if>