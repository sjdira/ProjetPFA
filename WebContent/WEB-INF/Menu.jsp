
        <aside class="menu-sidebar d-none d-lg-block">
            <div class="logo" style="background-color: white;">
                <a href="Categorie">
                    <img src="images/icon/m2asoft_logo.png" alt="M2ASOFT" />
                </a>
            </div>
            
         
            <div class="menu-sidebar__content js-scrollbar1" style="background-color: white">
                <nav class="navbar-sidebar">
                    <ul class="list-unstyled navbar__list">
                    	 <li>
                      	        <a href="Categorie">
                                <i class="fa fa-home" style="color: hotpink;"></i><strong>Accueil</strong></a>
                        </li>
                        <li class="has-sub">
                            <a class="js-arrow" href="#">
                             <i class="fas fa-dolly" style="color: hotpink;"></i>La gestion de Stock</a>
                            <ul class="list-unstyled navbar__sub-list js-sub-list">
                                <li >
                                    <a href="FormulaireEnStocks">Entrée en Stock</a>
                                </li>
                                <li>
                                    <a href="SortieDuMateriel">Sortie de Stock</a>
                                </li>
                                
                            </ul>
                        </li>
                       <!--  
                          <li>
                      	        <a href="Messageries">
                                <i class="fa fa-envelope"></i>Boîte de réception </a>
                        </li>
                        -->   
                         <li>
                      	        <a href="ConsulterOperations">
                                <i class="fa fa-line-chart" style="color: hotpink;"></i>Etat/Rapport</a>
                        </li>
                          
                                  <li>
                      	        <a href="Statistique">
                                <i class="fa fa-bar-chart-o" style="color: hotpink;"></i>Statistique</a>
                  		      </li>
                                         
                       
                         <li class="has-sub">
                            <a class="js-arrow" href="#">
                             <i class="fa fa-search" style="color: hotpink;"></i>Recherche</a>
                            <ul class="list-unstyled navbar__sub-list js-sub-list">
                                <li >
                                    <a href="RechercheMateriels">Entrée en Stock</a>
                                </li>
                                <li>
                                    <a href="RechercheSortieDuMateriel">Sortie de Stock</a>
                                </li>
                                
                            </ul>
                        </li>
                       <c:if test="${ !empty sessionScope.DroitAcces &&  sessionScope.DroitAcces == sessionScope.Admin }"> 
                         <li>
                      	        <a href="GestionUtilisateurs">
                                <i class="fa fa-users" style="color: hotpink;"></i>Gestion Utilisateur</a>
                        </li>
                        
                       
                       
                        
                         <li class="has-sub">
                            <a class="js-arrow" href="#">
                             <i class="fa fa-cogs" style="color: hotpink;"></i>Gestion Matériel</a>
                            <ul class="list-unstyled navbar__sub-list js-sub-list">
                              
                                <li>
                                    <a href="AjoutMateriels">Ajout Matériel</a>
                                </li>
                                <li>
                                    <a href="SuppressionMateriel">Suppression Matériel</a>
                                </li>
                              
                            </ul>
                        </li>
                        
                        
         </c:if>
                       
             
                    </ul>
                </nav>
                  
            </div>
        </aside>
        
    