<%@page import="java.util.ArrayList"%>
<%@page import="controleur.Offre"%>
<%@page import="controleur.Controleur"%>

<h1 class="titre-les-offre">Nos differentes offres</h1>

<%

ArrayList<Offre> lesOffres = Controleur.selectAllOffres();

for (Offre uneOffre : lesOffres)
{
	
	if(session.getAttribute("role") != null && session.getAttribute("role") == "recruteur")
	{ 
	%>
	
	<a href='index.jsp?page=2&id_offre=<%=uneOffre.getId_offre()%>'>
	<img src='assets/supprimer.png' height='20' width='20'></a>
	<% 
	}
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
	
	<a href='index.jsp?page=6&id_offre=<%=uneOffre.getId_offre()%>'>Postuler</a> 
	<br>
	<br>
	<br>
	<%
}

%>