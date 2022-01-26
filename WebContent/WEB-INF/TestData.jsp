<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.Iterator" %><%@page import="dao.*" %><%@ page import = "javax.servlet.http.HttpServletResponse"%>
    


<select name="Model" id="SelectM" class="form-control-sm form-control" style="visibility: visible; ">
    <option value="">Selectionner le modele </option>
	<%Services service = new Services();response.setContentType("text/plain");String test = request.getParameter("v");long  ConverL = Long.parseLong(test);if(ConverL!=0L){MarqueMaterielDAO mq = service.getMarqueMaterielDAO(ConverL);
 	Iterator<ModelDAO> modelsM= mq.getModels().iterator();
	while(modelsM.hasNext()) {ModelDAO m = modelsM.next();%>	
	<option value="<%=m.getNomModel()%>"><%=m.getNomModel()%></option>
	<%
	}}%>
	
	
	</select>
