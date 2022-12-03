<%@page import="java.util.ArrayList"%>
<%@page import="controleur.Vuelescandidatures"%>
<%@page import="controleur.Controleur"%>

<%

ArrayList<Vuelescandidatures> lesCandidatures = Controleur.selectAllCandidatures();

for (Vuelescandidatures uneCandidature : lesCandidatures)
{
	%>
	<a href='index.jsp?page=3&id_candidature=<%=uneCandidature.getId_candidature()%>'>
	<img src='assets/supprimer.png' height='20' width='20'></a>
	
	<p><%=uneCandidature.getTitre()%> <em>Réf : <%=uneCandidature.getId_offre()%></em></p>
	<p> lieu : <%=uneCandidature.getLieux()%> Contrat : <%=uneCandidature.getContrat()%> </p>
	<p> <%=uneCandidature.getNom()%> </p>
	<p> <%=uneCandidature.getPrenom()%> </p>
	<p> <%=uneCandidature.getEmail()%> </p>
	<p> <%=uneCandidature.getTel()%> </p>
	<p> <%=uneCandidature.getDate_candidature()%> </p>
	<p> <%=uneCandidature.getExperience()%> </p>
	<p> <%=uneCandidature.getDiplome()%> </p>
	<p> <%=uneCandidature.getMessage()%> </p>
	
	<br>
	<br>
	<br>
	<%
}

%>