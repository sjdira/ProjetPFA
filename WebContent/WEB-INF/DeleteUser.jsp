<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	
	
	<title>Suppression utilisateur</title>
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
	

    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- favicon
		============================================ -->
   
    <!-- Google Fonts
		============================================ -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i,800" rel="stylesheet">
    <!-- Bootstrap CSS
		============================================ -->
    <link rel="stylesheet" href="Contact/css/bootstrap.min.css">
    <!-- Bootstrap CSS
		============================================ -->
    <link rel="stylesheet" href="Contact/css/font-awesome.min.css">
    <!-- adminpro icon CSS
		============================================ -->
    <link rel="stylesheet" href="Contact/css/adminpro-custon-icon.css">
    <!-- meanmenu icon CSS
		============================================ -->
    <link rel="stylesheet" href="Contact/css/meanmenu.min.css">
    <!-- mCustomScrollbar CSS
		============================================ -->
    <link rel="stylesheet" href="Contact/css/jquery.mCustomScrollbar.min.css">
    <!-- animate CSS
		============================================ -->
    <link rel="stylesheet" href="Contact/css/animate.css">
    <!-- normalize CSS
		============================================ -->
    <link rel="stylesheet" href="Contact/css/normalize.css">
    <!-- form CSS
		============================================ -->
    <link rel="stylesheet" href="Contact/css/form.css">
    <!-- style CSS
		============================================ -->
    <link rel="stylesheet" href="Contact/style.css">
    <!-- responsive CSS
		============================================ -->
    <link rel="stylesheet" href="Contact/css/responsive.css">
    <!-- modernizr JS
		============================================ -->
    <script src="Contact/js/vendor/modernizr-2.8.3.min.js"></script>
</head>
<body class="materialdesign">

		<div class="page-wrapper">
        <!-- HEADER MOBILE-->
        <%@include file="Meta.jsp" %>
        <!-- END HEADER MOBILE-->

        <!-- MENU SIDEBAR-->
		<%@include file="Menu.jsp" %>
        <!-- END MENU SIDEBAR-->

        <!-- PAGE CONTAINER-->
        <div class="page-container"  style=" background-color: RGB(255,249,246);">
            <!-- HEADER DESKTOP-->
		<%@ include file = "header.jsp" %>
            <!-- HEADER DESKTOP-->

        
 
  
    <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
    <!-- Header top area start-->


            <!-- Breadcome End-->
            <!-- Contact Start-->
            <div class="login-form-area mg-t-30 mg-b-40"  style="transform: translate(40%, 20%);">
                <div class="container-fluid">
                    <div class="row from-group" style="transform: scale(1.5, 1);" >
                   
                        <form id="adminpro-contact-form" class="adminpro-form" method="post" action="">
                            <div class="col-lg-6">
                                <div class="login-bg" style="width: 500px; height: 500px;">
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div class="logo">
                                                <a href="#"><img src="images/icon/m2asoft_logo.png" alt="" />
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div class="login-title" align="center"> 
                                                <h1><strong>Suppression Utilisateur </strong></h1>
                                            </div>
                                        </div>
                                    </div>
                                 <div class="row">
                                    	<div class="col-lg-12">
                                    	<c:if test="${ !empty Validation }"> 
                                    <div class="row">
                                    <div class="col-lg-12">
                                    <div class="alert alert-success alert-success-style1 alert-success-stylenone">
                                    <button type="button" class="close sucess-op" data-dismiss="alert" aria-label="Close">
                                        <span class="icon-sc-cl" aria-hidden="true">×</span>
                                    </button>
                                   
                                    <span class="adminpro-icon adminpro-checked-pro admin-check-sucess admin-check-pro-none"></span>
                                    <div style="transform: translate(10%, 0%);">
                                    <p class="message-alert-none"><strong>Success!</strong> 
                                    <c:out value="${  Validation }"></c:out> </p>
                                    </div>
                                </div>
                                    </div>
                                  
                                    
                                    </div>
                                    </c:if>
                                    	
                                    	
                                    	</div>
                                    
                                    
                                    
                                    </div>
                                    
                                    
                                      <script type="text/javascript">
                                    
                                    function ScriptModif(s) {
                                    	
                                    	var v = s.value
                                    	$.ajax({
                                    		type : 'POST',
                                    		data : {v : v},
                                    		url : 'AjaxControleDelet',
                                    		success : function(test){
                                    		
                                    			window.document.getElementById("theValue1").innerHTML ="";
                                    			var div = document.createElement("div");
                                    			div.innerHTML = test;
                                 			
                                    			window.document.getElementById("theValue1").appendChild(div);
                                    			
                                    		}
                                    		
                                    	});
									}
                                    
                                    
                                    
                                    </script>
                                   <div class="row">
                                        <div class="col-lg-4">
                                            <div class="login-input-head">
                                                <p>List utilisateur</p>
                                            </div>
                                        </div>
                                        <div class="col-lg-8" style="transform: translate(0%, -4%);">
                                          <br>
                                          <select class="mdb-select md-form" name="deltUsers" onchange="ScriptModif(this);">
                                          
												  <option value="" disabled selected>Choisissez votre option</option>
												   <c:forEach var="usr" items="${ users }">
           					 								<option value="${ usr.getIdUser() }"> <c:out value="${ usr.getIdentifiant()} " /></option>
      												</c:forEach>
                                                   
											</select>
                                        </div>
                                    </div>
                            <div id="theValue1">  
                            
                            
                            
                            </div>  
                                   
                             
                                    <div class="row">
                                        <div class="col-lg-4"></div>
                                        <div class="col-lg-8">
                                            <div class="login-button-pro">
                                                <button type="submit" class="btn btn-danger">Supprimer </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </form>
                        <div class="col-lg-3"></div>
                    </div>
                </div>
            </div>
            <!-- Contact End--><br><br><br>
   
        </div>
    </div>
    <!-- Footer Start-->
    
    <!-- Footer End-->
    <!-- jquery
		============================================ -->
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

           				
         
           				
           	
<%@include file="Script.jsp" %>
</body>
</html>