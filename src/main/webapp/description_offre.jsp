<%@page import="controleur.Controleur"%>
<%@page import="controleur.Offre"%>

<%
int id_offre = Integer.parseInt(request.getParameter("id_offre")) ;

Offre uneOffre = Controleur.selectWhereOffre(id_offre);%>

<%@ include file="vue/vue_description_offre.jsp" %>

