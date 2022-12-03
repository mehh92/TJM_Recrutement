<%@page import="controleur.Offre"%>
<%@page import="controleur.Controleur"%>


<h3>Description de l'offre d'emploi</h3>
<br>
<h4>Description de l'entreprise</h4>
<br>
<p>khfksdhgfskjfgksjfgsdfjsqgfdgsfjhfgsjhfgsjhfgsjhfdgdsfskfdhsfd</p>
<br>
<h4>L'offre d'emploi en détail</h4>
<br>
<h5>Le profil recherché</h5>
<br>
<p><%=uneOffre.getDescription_personne()%></p>
<br>
<h5>Description du travail</h5>
<br>
<p><%=uneOffre.getDescription_travail()%></p>
<br>
<h5>Description de la mission</h5>
<br>
<p><%=uneOffre.getDescription_mission()%></p>
<br>
<a href='index.jsp?page=7&id_offre=<%=uneOffre.getId_offre()%>'> Postuler</a>