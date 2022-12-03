<%@page import="controleur.Controleur"%>
<%@page import="controleur.Offre"%>

<%
int id_offre = Integer.parseInt(request.getParameter("id_offre")) ;

Offre uneOffre = Controleur.selectWhereOffre(id_offre);%>

<h1><%=uneOffre.getTitre()%></h1>

<%@ include file="vue/vue_description_offre.jsp" %>

