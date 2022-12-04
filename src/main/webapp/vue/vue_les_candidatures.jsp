<%@page import="java.util.ArrayList"%>
<%@page import="controleur.Vuelescandidatures"%>
<%@page import="controleur.Controleur"%>

<%if(session.getAttribute("role") != null && session.getAttribute("role").equals("recruteur"))
{
%>

<h1 class="titre-les-candidatures">Les candidatures</h1>

	<%
	
	ArrayList<Vuelescandidatures> lesCandidatures = Controleur.selectAllCandidatures();
	
	for (Vuelescandidatures uneCandidature : lesCandidatures)
	{
		%>
		<a href='index.jsp?page=3&action=sup&id_candidature=<%=uneCandidature.getId_candidature()%>'>
		<img src='assets/supprimer.png' height='20' width='20'></a>
		
		<a href='index.jsp?page=3&action=non-retenu&id_candidature=<%=uneCandidature.getId_candidature()%>'>
		<img src='assets/non-retenu.png' height='20' width='20'></a>
		
		<a href='index.jsp?page=3&action=approuve&id_candidature=<%=uneCandidature.getId_candidature()%>'>
		<img src='assets/approuve.png' height='20' width='20'></a>
		
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
		<p><em> <%=uneCandidature.getStatut()%></em> </p>
		
		<br>
		<br>
		<br>
		<%
	}
}
else if(session.getAttribute("role") != null && session.getAttribute("role").equals("candidat"))
{
	%>

	<h1 class="titre-les-candidatures">Vos candidatures</h1>
	
	<%
	int id_user = (Integer) session.getAttribute("id_user");
	
	ArrayList<Vuelescandidatures> lesCandidatures = Controleur.selectWhereAllCandidatures(id_user);
	
	for (Vuelescandidatures uneCandidature : lesCandidatures)
	{
		%>
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
		<p><em> <%=uneCandidature.getStatut()%></em> </p>
		
		<br>
		<br>
		<br>
		<%
	}
}
%>