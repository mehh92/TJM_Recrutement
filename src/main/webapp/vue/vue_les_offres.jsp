<%@page import="java.util.ArrayList"%>
<%@page import="controleur.Offre"%>
<%@page import="controleur.Controleur"%>

<%

ArrayList<Offre> lesOffres = Controleur.selectAllOffres();

for (Offre uneOffre : lesOffres)
{
	%>
	<p> <%=uneOffre.getTitre()%> </p>
	<p> N° <%=uneOffre.getId_offre()%> </p>
	<p> <%=uneOffre.getLieux()%> </p>
	<p> Secteur <%=uneOffre.getSecteur()%> </p>
	<p> <%=uneOffre.getSalaire()%> </p>
	<p> <%=uneOffre.getContrat()%> </p>
	<p> <%=uneOffre.getDescription_personne()%> </p>
	<p> <%=uneOffre.getDescription_travail()%> </p>
	<p> <%=uneOffre.getDescription_mission()%> </p>
	<p> <em>Posté le <%=uneOffre.getDate_offre()%></em> </p>
	<!--  <p> <a href="index.jsp?page=7&idoffre= <%=uneOffre.getId_offre()%>">Postuler</a> </p>-->
	<br>
	<br>
	<br>
	<%
}

%>