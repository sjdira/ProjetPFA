<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	
	
	<title>Accueil</title>
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
    
      <!-- Styles -->
    <link href="accueil/assets/css/app.min.css" rel="stylesheet">
    <link href="accueil/assets/css/custom.css" rel="stylesheet">

    <!-- Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Oswald:100,300,400,500,600,800%7COpen+Sans:300,400,500,600,700,800%7CMontserrat:400,700' rel='stylesheet' type='text/css'>

    <!-- Favicons -->
    <link rel="apple-touch-icon" href="/apple-touch-icon.png">
    <link rel="icon" href="accueil/assets/img/favicon.ico">
	
</head>
<style type="text/css">

	 .bttn a:hover{
	 	color:#fff;
	 	background-color:hotpink;
	 	border-color:hotpink;
	 	-webkit-box-shadow:0 5px 65px 0 rgba(0,0,0,.15);
	 	box-shadow:0 5px 65px 0 rgba(0,0,0,.15)
	 }
	 	
	 .bttn i{
	 	font-size:40px;
	 	color:hotpink;
	 	background-color:#fff;
	 	border-radius:100%;
	 	display:inline-block;
	 	width:80px;
	 	height:80px;
	 	line-height:80px;
	 	text-align:center;
	 	margin-bottom:10px
	 }
	 .bttn h6{
	 	position:relative;
	 	color:#55595c;
	 	font-size:21px;
	 	margin-bottom:40px;
	 	-webkit-transition:.1s ease-in-out;
	 	-o-transition:.1s ease-in-out;
	 	transition:.1s ease-in-out
	 }
	 .bttn h6:after{
	 	position:absolute;
	 	content:'';
	 	bottom:-20px;
	 	left:50%;
	 	margin-left:-15px;
	 	width:30px;
	 	height:2px;
	 	border-radius:2px;
	 	background-color:#c8d0d7
	 }
	 .bttn p{
	 	color:#96a2b2;
	 	font-size:14px;
	 	line-height:24px
	 }
	 .bttn a:hover h6,.bttn a:hover p{
	 	color:#fff
	 }
	 .bttn a:hover i{
	 	color:hotpink;
	 	background-color:#fff
	 }
</style>
<body class="animsition">

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
          
          
       



      <!-- Recent jobs -->
    


      <!-- Facts -->
    


    

      <!-- Categories -->
      <section class="bg-alt" style=" background-color: RGB(255,249,246);">
        <div class="container" style=" transform: translateX(15%)">
          <header class="section-header" style=" transform: translateX(-20%);">
           
            <h2 style=" color: deeppink;">Système de gestion de parc informatique</h2>
            
          </header>
		
		
          <div class="category-grid bttn">
          <div class="row from-group">
      
            <a href="FormulaireEnStocks">
              <i class="fa fa-laptop"></i>
              <h6>Technologie en stock</h6>
              <p>Matériel, Ordinateur, Imprimante, Telephone ...</p>
            </a>
 		
 		
 		
 		
 		<a href="SortieDuMateriel">
              <i class="fa fa-laptop"></i>
              <h6>Technologie hors stock</h6>
              <p>Affectation, disponibilité,formulaire ...</p>
            </a>

           

			</div>
			 <div class="row from-group">
           <a href="ConsulterOperations">
              <i class="fa fa-line-chart"></i>
              <h6>État / Rapport </h6>
              <p>Quantité en stock, Quantité hors stock, Statut, journal...</p>
            </a>
           
           
 			
 			<a href="Statistique">
              <i class="fa fa-bar-chart-o"></i>
              <h6>Statistique operation</h6>
              <p>Donnees , operation systeme ...</p>
            </a> 
 			
 			
</div>
 <div class="row from-group">
            <a href="GestionUtilisateurs">
              <i class="fa fa-users"></i>
              <h6>Gestion Utilisateur</h6>
              <p>Ajout,Suppression, Modification</p>
            </a>

 			
            <a href="GestionMateriels">
              <i class="fa fa-cogs"></i>
              <h6>Gestion Matériel</h6>
              <p>Ajout nouveau matériel, supprimer, modifier</p>
            </a>
 			
            
            
            
            
         </div>
          </div>

        </div>
      </section>
      <!-- END Categories -->


 
    </main>
          
          
          
          </div>
          
          
          </div>
          
          
          </div>

</body>
   <%@include file = "Script.jsp" %>              
</html>