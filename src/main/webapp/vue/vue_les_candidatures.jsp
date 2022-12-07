<%@page import="java.util.ArrayList"%>
<%@page import="controleur.Vuelescandidatures"%>
<%@page import="controleur.Controleur"%>

<%if(session.getAttribute("role") != null && session.getAttribute("role").equals("recruteur"))
{
%>
<div class="imgCandidature"></div>

<div class="d-block">
<h1 class="titre-les-candidatures">Les candidatures</h1>

	<%
	
	ArrayList<Vuelescandidatures> lesCandidatures = Controleur.selectAllCandidatures();
	
	for (Vuelescandidatures uneCandidature : lesCandidatures)
	{
		%>
		<div class="container border-1 border-dark border mb-3 mt-5">
			<div class="entete-candidature d-flex mt-3">
				<h3 class="titreCandidature"><%=uneCandidature.getTitre()%> - <%=uneCandidature.getContrat()%>
				(<%=uneCandidature.getLieux()%>)</h3>
			<div class="ms-5 col-2">
				<p class="ref-offre">Référence de l'offre : <%=uneCandidature.getId_offre()%></p>
			</div>
				<div class="text-end col-6">
					<a href='index.jsp?page=3&action=approuve&id_candidature=<%=uneCandidature.getId_candidature()%>'>
					<img src='assets/approuve.png' height='20' width='20'></a>
					
					<a href='index.jsp?page=3&action=non-retenu&id_candidature=<%=uneCandidature.getId_candidature()%>'>
					<img class="stop-img" src='assets/non-retenu.png' height='20' width='20'></a>
					
					<a href='index.jsp?page=3&action=sup&id_candidature=<%=uneCandidature.getId_candidature()%>'>
					<img src='assets/supprimer.png' height='20' width='20'></a>
				</div>
			</div>
			<div class="margin-bloc d-flex p-3">
				<div class="d-block col">
					<h3 class="titre-bloc-candidature"> Informations personnelles </h3>
					<p class="paragraphe-bloc-candidature"> Nom : <%=uneCandidature.getNom()%> </p>
					<p class="paragraphe-bloc-candidature"> Prénom : <%=uneCandidature.getPrenom()%> </p>
					<p class="paragraphe-bloc-candidature"> Email : <%=uneCandidature.getEmail()%> </p>
					<p class="paragraphe-bloc-candidature"> Téléphone : <%=uneCandidature.getTel()%> </p>
				</div>
				<div class="d-block col">
					<h3 class="titre-bloc-candidature"> Expérience & diplôme </h3>
					<p class="paragraphe-bloc-candidature"> Année d'expérience sur le poste : <%=uneCandidature.getExperience()%> </p>
					<p class="paragraphe-bloc-candidature"> Dernier diplôme obtenu : <%=uneCandidature.getDiplome()%> </p>
					
				</div>
				<div class="d-block col">
					<h3 class="titre-bloc-candidature"> Informations candidature </h3>
					<p class="paragraphe-bloc-candidature"> Date candidature : <%=uneCandidature.getDate_candidature()%> </p>
					<p class="paragraphe-bloc-candidature"> Statut : <%=uneCandidature.getStatut()%></p>
				</div>
				
			</div>
			<div class="d-block boxsizingBorder">
				<h3 class="titre-bloc-candidature msg"> Message à destination du recruteur </h3>
				<textarea name="msg" disabled><%=uneCandidature.getMessage()%></textarea>
			</div>
		</div>
</div>
		<%
	}
}
else if(session.getAttribute("role") != null && session.getAttribute("role").equals("candidat"))
{
	%>
<div class="imgCandidature"></div>

<div class="d-block">
	<h1 class="titre-les-candidatures">Vos candidatures</h1>
	
	<%
	int id_user = (Integer) session.getAttribute("id_user");
	
	ArrayList<Vuelescandidatures> lesCandidatures = Controleur.selectWhereAllCandidatures(id_user);
	
	for (Vuelescandidatures uneCandidature : lesCandidatures)
	{
		%>
		<div class="container border-1 border-dark border mb-3 mt-5">
			<div class="entete-candidature-candidat d-flex mt-3">
				<h3 class="titreCandidature"><%=uneCandidature.getTitre()%> - <%=uneCandidature.getContrat()%>
				(<%=uneCandidature.getLieux()%>)</h3>
			<div class="ms-5 col-2">
				<p class="ref-offre">Référence de l'offre : <%=uneCandidature.getId_offre()%></p>
			</div>
			
			</div>
			<div class="margin-bloc d-flex p-3">
				<div class="d-block col">
					<h3 class="titre-bloc-candidature"> Informations personnelles </h3>
					<p class="paragraphe-bloc-candidature"> Nom : <%=uneCandidature.getNom()%> </p>
					<p class="paragraphe-bloc-candidature"> Prénom : <%=uneCandidature.getPrenom()%> </p>
					<p class="paragraphe-bloc-candidature"> Email : <%=uneCandidature.getEmail()%> </p>
					<p class="paragraphe-bloc-candidature"> Téléphone : <%=uneCandidature.getTel()%> </p>
				</div>
				<div class="d-block col">
					<h3 class="titre-bloc-candidature"> Expérience & diplôme </h3>
					<p class="paragraphe-bloc-candidature"> Année d'expérience sur le poste : <%=uneCandidature.getExperience()%> </p>
					<p class="paragraphe-bloc-candidature"> Dernier diplôme obtenu : <%=uneCandidature.getDiplome()%> </p>
					
				</div>
				<div class="d-block col">
					<h3 class="titre-bloc-candidature"> Informations candidature </h3>
					<p class="paragraphe-bloc-candidature"> Date candidature : <%=uneCandidature.getDate_candidature()%> </p>
					<p class="paragraphe-bloc-candidature"> Statut : <%=uneCandidature.getStatut()%></p>
				</div>
				
			</div>
			<div class="d-block boxsizingBorder">
				<h3 class="titre-bloc-candidature msg"> Message à destination du recruteur </h3>
				<textarea name="msg" disabled><%=uneCandidature.getMessage()%></textarea>
			</div>
		</div>
</div>
		<%
	}
}
else 
{
    response.sendRedirect("index.jsp?page=4");
    return;
}
%>

