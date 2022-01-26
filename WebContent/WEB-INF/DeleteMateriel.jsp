<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

        
        <div class="main-content">
        <div class="section__content section__content--p30">
          <div class="container-fluid">
            <div class="row">
              <div class="col-lg-6">
 <form action="" method="post"  class="form-horizontal">
                <div class="card">
                  <div class="card-header">
                    <strong>Type matériel</strong>
                    
                  </div>
                  <div class="card-body">
                       <div class="col-12 col-md-12">
                                                   <select name="TypeMateriels" id="SelectLm" class="form-control-sm form-control" >
                                                        <option value="0">Selectionner le type </option>
                                            
                                                        <c:forEach var="TypeMateriel" items="${ TypeMateriels }">
           					 								<option value="${ TypeMateriel.getIdTypeMateriel() }"  > <c:out value="${ TypeMateriel.getNomMateriel() }" /></option>
      													</c:forEach>
                                                        
                                                        
                                                                                                   
                                                    </select>
                                                </div>

                   </div>
                   
                          <button type="submit" class="btn btn-danger ">
                                            <i class="fa fa-ban"></i> Supprimer
                                        </button>
             
                </div>
                    </form>
                  </div>
         
                <!-- /# card -->

 <div class="col-lg-6">
 <form action="" method="post"  class="form-horizontal">
                <div class="card">
                  <div class="card-header">
                    <strong>Fournisseur</strong>
                  </div>
                  <div class="card-body">
                    
                    <div class="col-12 col-md-12">
                                                   <select name="Fournisseur" id="SelectLm" class="form-control-sm form-control">
                                                        <option value="0">Selectionner le fournisseur</option>
                                                      	<c:forEach var="FourniseurMateriel" items="${ Fournis }">
           					 								<option value="${ FourniseurMateriel.getIdFournisseur()  }" > <c:out value="${FourniseurMateriel.getNomFournisseur() }" /></option>
      													</c:forEach>
                                                    </select>
                                                </div>

                   </div>
                   
                          <button type="submit" class="btn btn-danger ">
                                            <i class="fa fa-ban"></i> Supprimer
                                        </button>
             
                </div>
</form>
              </div>

            </div>
<div class="row">
              <div class="col-lg-6">
              
              <form action="" method="post"  class="form-horizontal">
                <div class="card">
                  <div class="card-header">
                    <strong>Marque matériel</strong>
                  </div>
                  <div class="card-body">
                    <div class="col-12 col-md-12">
                                                  <select name="MarqueMateriel" id="SelectLm" class="form-control-sm form-control"  >
                                                       
                                                        <option value="0">Selectionner le materiel</option>
                                                        <c:forEach var="MarqueMateriel" items="${ MarqueMateriels }">
           					 								<option value="${MarqueMateriel.getIdMarque() }"> <c:out value="${ MarqueMateriel.getNomMarque() }" /></option>
      													</c:forEach>
                                                   
                                                    </select>
                                                </div>

                   </div>
                   
                          <button type="submit" class="btn btn-danger ">
                                            <i class="fa fa-ban"></i> Supprimer
                                        </button>
             
                </div>

</form>
                  </div>
             
	 <div class="col-lg-6">
	 <form action="" method="post"  class="form-horizontal">
                <div class="card">
                  <div class="card-header">
                    <strong>Modèle</strong>
                  </div>
                  <div class="card-body">
                   <div class="col-12 col-md-12">
                                                    <select name="Model" id="SelectLm" class="form-control-sm form-control"  >
                                                      <option value="0">Selectionner le modele</option>
                                                     <c:forEach var="Model" items="${ Models }">
                                                      <option value="${ Model.getIdModel() }">${Model.getNomModel() }</option>
                                                      
                                                       </c:forEach>
                                                        
                                                        
                                                        </select>
                                                </div>

                   </div>
                   
                          <button type="submit" class="btn btn-danger ">
                                            <i class="fa fa-ban"></i> Supprimer
                                        </button>
             
                </div>
</form>
</div>
</div>
                  </div>
                </div>

              </div>

              </div>
            </div>


   
            </body>
                                

                                
             <%@include file = "Script.jsp" %>                 		

</html>