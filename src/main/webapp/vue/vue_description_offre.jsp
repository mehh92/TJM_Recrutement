<%@page import="controleur.Offre"%>
<%@page import="controleur.Controleur"%>

<div class="imgOffre"></div>

<h1 class="titre-description-offre"><%=uneOffre.getTitre()%> - <%=uneOffre.getContrat()%></h1>

<div class="containerPoste">
	<div class="descriptionPoste">
		<h3>Description du poste</h3>
	</div>
	<div class="mt-3">
		<h3 class="titre-description">Description de l'entreprise</h4>
		<p>khfksdhgfskjfgksjfgsdfjsqgfdgsfjhfgsjhfgsjhfgsjhfdgdsfskfdhsfd</p>
	</div>
	<div class="mt-5">
		<h3 class="titre-description">Le profil recherche</h5>
		<p><%=uneOffre.getDescription_personne()%></p>
	</div>
	<div class="mt-5">
		<h3 class="titre-description">Description du travail</h5>
		<p><%=uneOffre.getDescription_travail()%></p>
	</div>
	<div class="mt-5">
		<h3 class="titre-description"s>Description de la mission</h5>
		<p class="last-paragraphe"><%=uneOffre.getDescription_mission()%></p>
	</div>
	
		<button class="btn-formulaire btn-postuler margin-btn-formulaire"><a href='index.jsp?page=7&id_offre=<%=uneOffre.getId_offre()%>'> Postuler</a></button>
</div>
</div>