<%@page import="controleur.Offre"%>
<%@page import="controleur.Controleur"%>
<%@page import="java.util.ArrayList"%>

<link rel="stylesheet" href="css/style.css">

<h1 class="titre-offre">Nos differentes offres</h1>

<% ArrayList<Offre> lesOffres = Controleur.selectAllOffres(); 

for (Offre uneOffre : lesOffres)
{
	%>
	<p> <%=uneOffre.getTitre()%> </p>
	<p> <%=uneOffre.getLieux()%> </p>
	<p> <%=uneOffre.getSecteur()%> </p>
	<p> <%=uneOffre.getSalaire()%> </p>
	<p> <%=uneOffre.getContrat() %></p>
	<br>
	<br>
	<br>
	<%
}


%>

