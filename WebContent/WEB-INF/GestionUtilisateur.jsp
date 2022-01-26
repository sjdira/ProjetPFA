<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	
	
	<title>Gestion utilisateur</title>
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
   
</head>
<body class="animsition" style=" background-color: RGB(255,249,246);">

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
 <div class="section__content section__content--p30" style=" background-color: RGB(255,249,246);">
          
         <!-- Main container -->
    <main>



      <!-- Recent jobs -->
    


      <!-- Facts -->
    


    

      <!-- Categories -->
      <section class="bg-alt" style=" background-color: RGB(255,249,246);">
        <div class="container">
        <header class="section-header" style=" transform: translateX(-9%)">
            
            <h2>Gestion utilisateurs</h2>
            
          </header>

  <div class="category-grid" style=" transform: translateX(7%)">
          
          
           <div class="row" >
           <div class="col-lg-12" >
            <a href="AjoutUtilisateurs">
              <i class="fa fa-user-plus"></i>
              <h6>Ajout utilisateur</h6>
              <p>Formulaire , droit accés ...</p>
            </a>

            <a href="DeleteUsers">
              <i class="fa fa-user-times"></i>
              <h6>Suppression utilisateur </h6>
              <p>Recherche suppression</p>
            </a>
            </div>
            </div>
<div class="col-lg-12" style=" transform: translateX(15%)">
            <a href="ModificationUtilisateurs">
              <i class="fa fa-cogs"></i>
              <h6>Modification utilisateur</h6>
              <p>Formulaire , droit accés</p>
            </a>
</div>
           
      </section>
      <!-- END Categories -->


 
    </main>
    <!-- END Main container -->
          
          
          </div>
          
          
          </div>
          
          
          </div>

</body>
   <%@include file = "Script.jsp" %>              
</html>