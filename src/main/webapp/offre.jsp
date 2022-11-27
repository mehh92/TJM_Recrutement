<%@page import="controleur.Offre"%>
<%@page import="controleur.Controleur"%>
<%@page import="java.util.ArrayList"%>


<h1>Nos differentes offres</h1>

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

