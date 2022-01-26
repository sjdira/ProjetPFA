<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	
	
	<title>Messagerie</title>
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
    <link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico">
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
        <div class="page-container"  >
            <!-- HEADER DESKTOP-->
		<%@ include file = "header.jsp" %>
            <!-- HEADER DESKTOP-->

        
        <div class="inbox-mailbox-area mg-b-15" style="margin-top: 10%;">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="row">
                                <div class="col-lg-3">
                                    <div class="inbox-email-menu-list compose-b-mg-30 shadow-reset">
                                        <div class="compose-email">
                                            <a href="#">Écrire un email</a>
                                        </div>
                                        <ul class="nav nav-tabs">
                                            <li>
                                                <h4 class="Inbox-category-ad"><i class="fa fa-folder-o" aria-hidden="true"></i> Dossier</h4>
                                            </li>
                                            <li class="active"><a data-toggle="tab" href="#inbox"><span class="inbox-icon"><i class="fa fa fa-inbox "></i></span> Boîte de réception </a>
                                            </li>
                                            <li><a data-toggle="tab" href="#viewmail"><span class="inbox-icon"><i class="fa fa fa-inbox "></i></span> Voir le courrier</a>
                                            </li>
                                            <li><a data-toggle="tab" href="#composemail"><span class="inbox-icon"><i class="fa fa fa-inbox "></i></span> Écrire un email</a>
                                            </li>
                                            
                                            <li><a data-toggle="tab" href="#sendmail"><span class="inbox-icon"><i class="fa fa-envelope" aria-hidden="true"></i></span> Envoyer un mail</a>
                                            </li>
                                            <li><a data-toggle="tab" href="#important"><span class="inbox-icon"><i class="fa fa-certificate" aria-hidden="true"></i></span> Important</a>
                                            </li>
                                            <li><a data-toggle="tab" href="#drafts"><span class="inbox-icon"><i class="fa fa-file-text-o" aria-hidden="true"></i></span> Brouillons </a>
                                            </li>
                                          
                                           
                                        </ul>
                                    </div>
                                </div>
                                <div class="col-lg-9">
                                    <div class="tab-content">
                                        <div id="inbox" class="tab-pane fade in animated zoomInDown custom-inbox-message shadow-reset active">
                                            <div class="mail-title inbox-bt-mg">
                                                <h2>Boîte de réception</h2>
                                                <div class="view-mail-action view-mail-ov-d-n">
                                                    <a href="DemandeMaintenance"><i class="fa fa-reply"></i> Répondre</a>
                                                    <a class="compose-draft-bt" href="javascript:window.print()"><i class="fa fa-print"></i> Print</a>
                                                    <a class="compose-discard-bt" href="#"><i class="fa fa-trash-o"></i> Trash</a>
                                                </div>
                                            </div>
                                            
                                                <table id="table" data-toggle="table" data-pagination="true" data-search="true" data-show-columns="true" data-show-pagination-switch="true" data-show-refresh="true" data-key-events="true" data-show-toggle="true" data-resizable="true" data-cookie="true" data-cookie-id-table="saveId" data-show-export="true" data-click-to-select="true" data-toolbar="#toolbar1">
                                                    <thead>
                                                        <tr>
                                                      
                                                   
                                                            <th data-field="name">Nom</th>
                                                            <th data-field="email">Titre</th>
                                                            <th data-field="phone">Messages</th>
                                                            <th data-field="company">Direction</th>
                                                            <th data-field="email">mail</th>
                                                        </tr>
                                                    </thead>
                                              
                                                    <tbody>
                                                       
                                                  <c:forEach var="msg" items="${ Demandes }"> 
                                                        <tr class="new-email">
                                                           
                                                            <td>${ msg.getNom() } }</td>
                                                        
                                                            <td>${ msg.getSujet() }</td>
                                                            <td>${ msg.getMsg() }</td>
                                                            <td>${ msg.getDirection() }
                                                            </td>
                                                            <td>${ msg.getEmail() }</td>
                                                        </tr>
                                            		</c:forEach>
                                                    
                                                       
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                        
                                       
                                </div>
                            </div>
                        </div>
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