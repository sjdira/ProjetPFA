
<%
	session.removeAttribute("Identifiant");
session.removeAttribute("email");
session.removeAttribute("DroitAcces");

%>



<%@include file="index.jsp" %>
	
<%
session.invalidate();
%>