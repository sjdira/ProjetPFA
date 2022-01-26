<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.Iterator" %><%@page import="dao.*" %><%@ page import = "javax.servlet.http.HttpServletResponse"%>
    <%Services service = new Services();response.setContentType("text/plain");String test = request.getParameter("v");long  ConverL = Long.parseLong(test);if(ConverL!=0L){
		AddUserDAO usr = service.getAddUserDAO(ConverL);
		
	
	%>

<div class="row">
                                        <div class="col-lg-4">
                                            <div class="login-input-head">
                                                <p>Nom</p>
                                            </div>
                                        </div>
                                        <div class="col-lg-8">
                                            <div class="row">
                                                <div class="col-lg-6">
                                                    <div class="login-input-area register-mg-rt">
                                                    	<input type="hidden" name="iduser" value="<%=usr.getIdUser() %>"/>
                                                        <input type="text" name="Nom" value="<%=usr.getNom() %>"/>
                                                        <i class="fa fa-user login-user"></i>
                                                    </div>
                                                </div>
                                                <div class="col-lg-6">
                                                    <div class="login-input-area">
                                                        <input type="text" name="Prenom" value="<%= usr.getPrenom()%>"/>
                                                        <i class="fa fa-user login-user"></i>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-4">
                                            <div class="login-input-head">
                                                <p>Email Address</p>
                                            </div>
                                        </div>
                                        <div class="col-lg-8">
                                            <div class="login-input-area">
                                                <input type="email" name="email" value="<%=usr.getMail() %>"/>
                                                <i class="fa fa-envelope login-user" aria-hidden="true"></i>
                                            </div>
                                        </div>
                                    </div>
                                     <div class="row">
                                        <div class="col-lg-4">
                                            <div class="login-input-head">
                                                <p>Identifiant</p>
                                            </div>
                                        </div>
                                        <div class="col-lg-8">
                                            <div class="login-input-area">
                                                <input type="text" name="Identifiant" value="<%= usr.getIdentifiant()%>"/>
                                                <i class="fa fa-user login-user" aria-hidden="true"></i>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-4">
                                            <div class="login-input-head">
                                                <p>Mot de passe</p>
                                            </div>
                                        </div>
                                        <div class="col-lg-8">
                                            <div class="login-input-area">
                                                <input type="password" name="mdp" value="<%=usr.getMdp() %>"/>
                                                <i class="fa fa-lock login-user"></i>
                                                <c:if test="${ !empty FauxMdp }">
                                                	<p style="color:red;">
                                                		<c:out value="${FauxMdp }"></c:out>
                                                	</p>
                                                </c:if>
                                            </div>
                                        </div>
                                    </div>
                                     <div class="row">
                                        <div class="col-lg-4">
                                            <div class="login-input-head">
                                                <p>Confirmez le mot de passe </p>
                                            </div>
                                        </div>
                                        <div class="col-lg-8">
                                            <div class="login-input-area">
                                                <input type="password" name="mdp2" value="<%=usr.getMdp() %>"/>
                                                <i class="fa fa-lock login-user"></i>
                                            </div>
                                        </div>
                                    </div>
                                    
                                    <div class="row">
                                        <div class="col-lg-4">
                                            <div class="login-input-head">
                                                <p>Droit d'acces</p>
                                            </div>
                                        </div>
                                        <div class="col-lg-8" style="transform: translate(0%, -4%);">
                                          <br>
                                          <select class="mdb-select md-form" name="DroitAcces">
                                          
												  <option value="<%=usr.getDroitAcces() %>" disabled selected><%= usr.getDroitAcces()%></option>
												  
												  <option value="Administrateur system">Administrateur systeme</option>
												  <option value="Utilisateur normal">Utilisateur</option>
												
											</select>
                                        </div>
                                    </div>

	
	
<%

    }
    
    %>