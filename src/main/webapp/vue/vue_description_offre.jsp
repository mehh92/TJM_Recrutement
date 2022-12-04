<%@page import="controleur.Offre"%>
<%@page import="controleur.Controleur"%>

<div class="imgOffre">
	<img src="assets/atelier.jpeg">
</div>

<div>
	<h1 class="titre-descriptionOffre mt-3 ms-2"><%=uneOffre.getTitre()%></h1>

<div class="containerPoste">
	<div class="descriptionPoste">
		<h3>Description du poste</h3>
	</div>
	<div class="mt-3">
		<h3>Description de l'entreprise</h4>
		<p>khfksdhgfskjfgksjfgsdfjsqgfdgsfjhfgsjhfgsjhfgsjhfdgdsfskfdhsfd</p>
	</div>
	<div class="mt-5">
		<h3>L'offre d'emploi en détail</h4>
	</div>
	<div class="mt-5">
		<h3>Le profil recherché</h5>
		<p><%=uneOffre.getDescription_personne()%></p>
	</div>
	<div class="mt-5">
		<h3>Description du travail</h5>
		<p><%=uneOffre.getDescription_travail()%></p>
	</div>
	<div class="mt-5">
		<h3>Description de la mission</h5>
		<p><%=uneOffre.getDescription_mission()%></p>
	</div>
	<div class="mt-5 button-postuler">
		<a href='index.jsp?page=7&id_offre=<%=uneOffre.getId_offre()%>'> Postuler</a>
	</div>
</div>
</div>