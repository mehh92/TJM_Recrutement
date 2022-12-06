<%@page import="java.util.ArrayList"%>
<%@page import="controleur.Offre"%>
<%@page import="controleur.Controleur"%>

<h1 class="titre-les-offre">Nos differentes offres</h1>

<%

ArrayList<Offre> lesOffres = Controleur.selectAllOffres();

%><div class="container-card"><%
for (Offre uneOffre : lesOffres)
{
	
	if(session.getAttribute("role") != null && session.getAttribute("role") == "recruteur")
	{ 
	%>

		
		<div class="card">
			<div class="card-body">
				<a class="lien-card-title" href='index.jsp?page=6&id_offre=<%=uneOffre.getId_offre()%>'><h5 class="card-title"><%=uneOffre.getTitre()%> - <%=uneOffre.getContrat()%></h5></a>
				<em><h6 class="date-position card-subtitle text-muted">Le <%=uneOffre.getDate_offre()%></h6></em>
				<a href='index.jsp?page=2&id_offre=<%=uneOffre.getId_offre()%>'><img class="supr-offre" src='assets/supprimer.png' height='20' width='20'></a>
				<em><h6 class="ref-position card-subtitle mb-3 mt-2 text-muted">Ref : <%=uneOffre.getId_offre()%></h6></em>
				<p class="card-text">Lieux : <%=uneOffre.getLieux()%></p>
				<p class="card-text">Secteur : <%=uneOffre.getSecteur()%></p>
				<p class="p-fin-card card-text">Salaire : <%=uneOffre.getSalaire()%></p>
				<a href='index.jsp?page=6&id_offre=<%=uneOffre.getId_offre()%>'><img class="fleche-card" src="assets/fleche-offre.png" alt="fleche-offre"></a>
			</div>
		</div>

		
	<% 
	}
	else
	{
	%>
		<div class="card">
			<div class="card-body">
				<a class="lien-card-title" href='index.jsp?page=6&id_offre=<%=uneOffre.getId_offre()%>'><h5 class="card-title"><%=uneOffre.getTitre()%> - <%=uneOffre.getContrat()%></h5></a>
				<em><h6 class="date-position card-subtitle text-muted">Le <%=uneOffre.getDate_offre()%></h6></em>
				<em><h6 class="ref-position card-subtitle mb-3 mt-2 text-muted">Ref : <%=uneOffre.getId_offre()%></h6></em>
				<p class="card-text">Lieux : <%=uneOffre.getLieux()%></p>
				<p class="card-text">Secteur : <%=uneOffre.getSecteur()%></p>
				<p class="p-fin-card card-text">Salaire : <%=uneOffre.getSalaire()%></p>
				<a href='index.jsp?page=6&id_offre=<%=uneOffre.getId_offre()%>'><img class="fleche-card" src="assets/fleche-offre.png" alt="fleche-offre"></a>
			</div>
		</div>
		
	
	<%
	}
	%>
	
	<%
}
%></div><%
%>