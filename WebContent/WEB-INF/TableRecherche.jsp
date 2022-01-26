<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	
	
	<title>Etat / Rapport</title>
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
        <div class="page-container">
            <!-- HEADER DESKTOP-->
			<%@ include file = "header.jsp" %>
            <!-- HEADER DESKTOP-->
 <div class="section__content section__content--p30" style=" background-color: RGB(255,249,246);">
          
		<br>
        <div class="content" >
            <div class="animated fadeIn"style="margin-top: 10%;">
                
                
                
                <div class="row" >
						
						
                    <div class="col-md-12">
                    
            
                                    
                        <div class="card">
                            <div class="card-header" align="center" style="background-color: hotpink;">
                                <strong class="card-title" style="color: white;">Materiel En Stock</strong>
                            </div>
                    
                            <div class="row from-group" align="center">
                             <div class="col-md-12">
                                <div class="col-lg-6">
                                             	
                                                
                                                </div>
                                                
                                <table id="bootstrap-data-table" class="table table-striped table-bordered">
                                    <thead>
                                        <tr>
                                            <tr>
                                                	<th>N Serie </th>
                                                    <th>Type matériel </th>
                                                    <th>Marque </th>
                                                    <th >Modele</th>
                                                    <th >Fournisseur</th>
                                                   <th >Date Achat</th>
                                                   <th> Respo </th>
                                                   <th >Numéro B.C</th>
                                                   <th >Numéro B.L</th>
                                            </tr>
                                        
                                    </thead>
                                    <tbody>
                                    <c:forEach var="ens" items="${ Enstock }">
                                        <tr>
                                            <td>
                                            	<c:out value="${ ens.getNserie() }" />
                                            </td>
                                            <td>
                                            	<c:out value="${ ens.getTypeMateriel() }" />
                                            </td>
                                            <td>
                                            	<c:out value="${ ens.getMarqueMateriel() }" />
                                            </td>
                                            <td>
                                            	<c:out value="${ ens.getModel() }" />
                                            </td>
                                            <td>
                                            	<c:out value="${ ens.getFournisseur() }" />
                                            </td>
                                            <td>
                                            	<c:out value="${ ens.getDate() }" />
                                            </td>
                                        	<td>
                                        		<c:out value="${ ens.getResponsable() }" />
                                        	</td>
                                        	<td>
                                        		<c:out value="${ ens.getNumeroBC() }" />
                                        	</td>
                                        	<td>
                                        		<c:out value="${ ens.getNumeroBL() }" />
                                        	</td>
                                        </tr>
                                     </c:forEach>
                                       
                                    </tbody>
                                </table>

                                
                            </div>
                          
                        </div>
				
</div>

                </div>
 <div class="row from-group"> 
                            <br><br><br><br>
                            </div>
            </div><!-- .animated -->
        </div><!-- .content -->

 <div class="row from-group"> 
                            <br><br><br><br>
                            </div>
   </div>
   </div>  
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