
<!DOCTYPE html>
<html>
<head>
	
	
	<title>Authentification</title>
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

<style type="text/css">
	

/* Made with love by Mutiullah Samim*/


html,body{
background-image: url('images/bg.jpeg');
background-size: cover;
background-repeat: no-repeat;
height: 10%;
white : 10%;
font-family: 'Numans', sans-serif;
}
.connecter {
	color: RGB(62, 111, 218);
	background-color: transparent;
	background-image: none;
	border-color: RGB(62, 111, 218);
	"
}

.connecter:hover {
	color: #fff;
	background-color: RGB(62, 111, 218);
	border-color: RGB(62, 111, 218);
}

.connecter.disabled, .connecter:disabled {
	color: RGB(62, 111, 218);
	background-color: transparent;
}

.connecter:not(:disabled):not(.disabled).active, .connecter:not(:disabled):not(.disabled):active, .show>.connecter.dropdown-toggle {
	color: #fff;
	background-color: RGB(62, 111, 218);
	border-color: RGB(62, 111, 218);
}

.connecter:not(:disabled):not(.disabled).active:focus, .connecter:not(:disabled):not(.disabled):active:focus, .show>.connecter.dropdown-toggle:focus {
	box-shadow: 0 0 0 .2rem rgba(62, 111, 218, .5)
}
</style>

<body class="animsition">

		<div class="page-wrapper">
		
        
        
 
     
      </div>
            
             <div class="section__content section__content--p30">
          	<div class="container-fluid">
          			<div class="row   form-group">
           			<div class="container">
                <div class="login-wrap"  >
                    <div class="login-content">
                        <div class="login-logo">
                            <a href="index">
                                <img src="images/icon/m2asoft_logo.png" alt="M2ASOFT">
                            </a>
                        </div>
                        <div class="login-logo">
                                <b>Se connecter</b>
                        </div>
                       <div class = "form-group">
                       
                       		<c:if test="${ !empty NonConnexion }"> 
                                    <div class="row">
                                    <div class="col-lg-12">
                                    <div class="sufee-alert alert with-close alert-danger alert-dismissible fade show">
                                    <button type="button" class="close sucess-op" data-dismiss="alert" aria-label="Close">
                                        <span class="icon-sc-cl" aria-hidden="true">×</span>
                                    </button>
                                   
                                    <span class="adminpro-icon adminpro-checked-pro admin-check-sucess admin-check-pro-none"></span>
                                    <div style="transform: translate(10%, 0%);">
                                    <p class="message-alert-none"> 
                                    <c:out value="${  NonConnexion }"></c:out> </p>
                                    </div>
                                </div>
                                    </div>
                                  
                                    
                                    </div>
                                    </c:if>
                       
                       </div>
                       
                           <form action="index" method="post">
                       
                       
                        <div class="login-form">
                        
                                <div class="form-group" >
                                    <label>Identifiant</label>
                                    <input class="au-input au-input--full" type="text" name="email" placeholder="Identifiant">
                                </div>
                                <div class="form-group">
                                    <label>Mot de passe</label>
                                    <input class="au-input au-input--full" type="password" name="password" placeholder="Mot de passe">
                              		
                                </div>
                               <!--  
                                <div class="login-checkbox">
                                    <label>
                                        <input type="checkbox" name="remember">Souviens-toi de moi
                                    </label>
                                    <label>
                                        <a href="#">Mot de passe oublié?</a>
                                    </label>
                                </div>
                                -->
                                <button class="btn btn-outline-danger btn-lg btn-block connecter " type="submit"><strong>Se connecter </strong></button>
                             
                            </div>    
                            </form>
                          
                        </div>
                    </div>
                 <br><br><br>
                </div>
              
            </div>	
           				
           				
           				</div>
           			</div>
          
       
</body>

		
    <!-- Jquery JS-->
    <script src="vendor/jquery-3.2.1.min.js"></script>
    <!-- Bootstrap JS-->
    <script src="vendor/bootstrap-4.1/popper.min.js"></script>
    <script src="vendor/bootstrap-4.1/bootstrap.min.js"></script>
    <!-- Vendor JS       -->
    <script src="vendor/slick/slick.min.js">
    </script>
    <script src="vendor/wow/wow.min.js"></script>
    <script src="vendor/animsition/animsition.min.js"></script>
    <script src="vendor/bootstrap-progressbar/bootstrap-progressbar.min.js">
    </script>
    <script src="vendor/counter-up/jquery.waypoints.min.js"></script>
    <script src="vendor/counter-up/jquery.counterup.min.js">
    </script>
    <script src="vendor/circle-progress/circle-progress.min.js"></script>
    <script src="vendor/perfect-scrollbar/perfect-scrollbar.js"></script>
    <script src="vendor/chartjs/Chart.bundle.min.js"></script>
    <script src="vendor/select2/select2.min.js">
    </script>

    <!-- Main JS-->
    <script src="js/main.js"></script>
</html>