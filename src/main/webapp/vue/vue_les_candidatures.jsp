<%@page import="java.util.ArrayList"%>
<%@page import="controleur.Vuelescandidatures"%>
<%@page import="controleur.Controleur"%>

<%if(session.getAttribute("role") != null && session.getAttribute("role").equals("recruteur"))
{
%>
<div class="d-block">
<h1 class="titre-les-candidatures">Les candidatures</h1>

	<%
	
	ArrayList<Vuelescandidatures> lesCandidatures = Controleur.selectAllCandidatures();
	
	for (Vuelescandidatures uneCandidature : lesCandidatures)
	{
		%>
		<div class="container border-1 border-dark border mb-3">
			<div class="d-flex mt-5">
				<h3 class=" flex-fill me-4"><%=uneCandidature.getTitre()%> <em>Réf : <%=uneCandidature.getId_offre()%></em></h3>
				<p class="flex-fill me-4"> lieu : <%=uneCandidature.getLieux()%>  <br> Contrat : <%=uneCandidature.getContrat()%> </p>
				<div class="flex-fill float-end">	
					<a href='index.jsp?page=3&action=sup&id_candidature=<%=uneCandidature.getId_candidature()%>'>
					<img src='assets/supprimer.png' height='20' width='20'></a>
					
					<a href='index.jsp?page=3&action=non-retenu&id_candidature=<%=uneCandidature.getId_candidature()%>'>
					<img src='assets/non-retenu.png' height='20' width='20'></a>
					
					<a href='index.jsp?page=3&action=approuve&id_candidature=<%=uneCandidature.getId_candidature()%>'>
					<img src='assets/approuve.png' height='20' width='20'></a>
				</div>
			</div>
			<div class="d-flex p-3">
				<div class="d-block col">
					<p> <%=uneCandidature.getNom()%> </p>
					<p> <%=uneCandidature.getPrenom()%> </p>
					<p> <%=uneCandidature.getEmail()%> </p>
					<p> <%=uneCandidature.getTel()%> </p>
				</div>
				<div class="d-block col">
					<p> <%=uneCandidature.getExperience()%> </p>
					<p> <%=uneCandidature.getDiplome()%> </p>
					<p> <%=uneCandidature.getMessage()%> </p>
				</div>
				<div class="d-block col">
					<p> <%=uneCandidature.getDate_candidature()%> </p>
					<p><em> <%=uneCandidature.getStatut()%></em> </p>
				</div>
			</div>
		</div>
</div>
		<%
	}
}
else if(session.getAttribute("role") != null && session.getAttribute("role").equals("candidat"))
{
	%>
<div class="d-block">
	<h1 class="titre-les-candidatures">Vos candidatures</h1>
	
	<%
	int id_user = (Integer) session.getAttribute("id_user");
	
	ArrayList<Vuelescandidatures> lesCandidatures = Controleur.selectWhereAllCandidatures(id_user);
	
	for (Vuelescandidatures uneCandidature : lesCandidatures)
	{
		%>
		<div class="container border-1 border-dark border mb-3">
			<div class="d-flex mt-5">
				<h3 class=" flex-fill me-4"><%=uneCandidature.getTitre()%> <em>Réf : <%=uneCandidature.getId_offre()%></em></h3>
				<p class="flex-fill me-4"> lieu : <%=uneCandidature.getLieux()%>  <br> Contrat : <%=uneCandidature.getContrat()%> </p>
				<div class="flex-fill float-end">	
					<a href='index.jsp?page=3&action=sup&id_candidature=<%=uneCandidature.getId_candidature()%>'>
					<img src='assets/supprimer.png' height='20' width='20'></a>
					
					<a href='index.jsp?page=3&action=non-retenu&id_candidature=<%=uneCandidature.getId_candidature()%>'>
					<img src='assets/non-retenu.png' height='20' width='20'></a>
					
					<a href='index.jsp?page=3&action=approuve&id_candidature=<%=uneCandidature.getId_candidature()%>'>
					<img src='assets/approuve.png' height='20' width='20'></a>
				</div>
			</div>
			<div class="d-flex p-3">
				<div class="d-block col">
					<p> <%=uneCandidature.getNom()%> </p>
					<p> <%=uneCandidature.getPrenom()%> </p>
					<p> <%=uneCandidature.getEmail()%> </p>
					<p> <%=uneCandidature.getTel()%> </p>
				</div>
				<div class="d-block col">
					<p> <%=uneCandidature.getExperience()%> </p>
					<p> <%=uneCandidature.getDiplome()%> </p>
					<p> <%=uneCandidature.getMessage()%> </p>
				</div>
				<div class="d-block col">
					<p> <%=uneCandidature.getDate_candidature()%> </p>
					<p><em> <%=uneCandidature.getStatut()%></em> </p>
				</div>
			</div>
		</div>
</div>
		<%
	}
}
%>