<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	
	
	<title>Statistique</title>
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

        
 
  
    <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
    <!-- Header top area start-->
    
    <script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
			
	

            <!-- Breadcome End-->
            <!-- Contact Start-->
            <div class="main-content" style=" background-color: RGB(255,249,246);">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="au-card m-b-30">
                                    <div class="au-card-inner"><div style="position: absolute; inset: 0px; overflow: hidden; pointer-events: none; visibility: hidden; z-index: -1;" class="chartjs-size-monitor"><div class="chartjs-size-monitor-expand" style="position:absolute;left:0;top:0;right:0;bottom:0;overflow:hidden;pointer-events:none;visibility:hidden;z-index:-1;"><div style="position:absolute;width:1000000px;height:1000000px;left:0;top:0"></div></div><div class="chartjs-size-monitor-shrink" style="position:absolute;left:0;top:0;right:0;bottom:0;overflow:hidden;pointer-events:none;visibility:hidden;z-index:-1;"><div style="position:absolute;width:200%;height:200%;left:0; top:0"></div></div></div>
                                        <h3 class="title-2 m-b-40" align="center"><strong> Visualisation 
                                        opération</strong></h3>
                                        <canvas id="myChart" height="177" style="display: block; width: 355px; height: 177px;" width="355" class="chartjs-render-monitor"></canvas>
                                    </div>
                                </div>
                            </div>
                            
                            
                           
			<script type="text/javascript">

			 var ctx = document.getElementById("myChart");
			    if (ctx) {
			      ctx.height = 150;
			      var myChart = new Chart(ctx, {
			        type: 'bar',
			        data: {
			          labels: ["${Enstock}", "${Affecter}", "${cours}", "${Apres}"],
			        
			          type: 'line',
			          defaultFontFamily: 'Poppins',
			          datasets: [{
			            label: "Q donnees",
			            data: [${valueEnstock}, ${valueAffecter}, ${valuecoursr}, ${valueApres}],
			            backgroundColor: 'transparent',
			            backgroundColor: '#81b9e4',
			            borderColor: '#276b9f',
			            borderWidth: 3,
			            pointStyle: 'circle',
			            pointRadius: 5,
			            pointBorderColor: 'transparent',
			            pointBackgroundColor: 'rgba(220,53,69,0.75)',
			          }]
			        },
			        options: {
			          responsive: true,
			          tooltips: {
			            mode: 'index',
			            titleFontSize: 12,
			            titleFontColor: '#000',
			            bodyFontColor: '#000',
			            backgroundColor: '#fff',
			            titleFontFamily: 'Poppins',
			            bodyFontFamily: 'Poppins',
			            cornerRadius: 3,
			            intersect: false,
			          },
			          legend: {
			            display: false,
			            labels: {
			              usePointStyle: true,
			              fontFamily: 'Poppins',
			            },
			          },
			          scales: {
			            xAxes: [{
			              display: true,
			              gridLines: {
			                display: false,
			                drawBorder: false
			              },
			              scaleLabel: {
			                display: false,
			                labelString: 'Month'
			              },
			              ticks: {
			                fontFamily: "Poppins"
			              }
			            }],
			            yAxes: [{
			              display: true,
			              gridLines: {
			                display: false,
			                drawBorder: false
			              },
			              scaleLabel: {
			                display: true,
			                labelString: 'Donnees',
			                fontFamily: "Poppins"

			              },
			              ticks: {
			                fontFamily: "Poppins"
			              }
			            }]
			          },
			          title: {
			            display: false,
			            text: 'Normal Legend'
			          }
			        }
			      });
			    }
				
			</script>
                          
                </div>
            </div>  
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