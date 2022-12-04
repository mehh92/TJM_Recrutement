<%
if(session.getAttribute("role") != null && session.getAttribute("role").equals("recruteur"))
{
%> 

<%@ include file="vue/vue_insert_offre.jsp" %> 

<% 
}
%>

<% if(request.getParameter("ajouterOffre") != null)
{
	String titre = request.getParameter("titre");
	String lieux = request.getParameter("lieux");
	String secteur = request.getParameter("secteur");
	String salaire = request.getParameter("salaire");
	String contrat = request.getParameter("contrat");
	String description_personne = request.getParameter("description_personne");
	String description_travail = request.getParameter("description_travail");
	String description_mission = request.getParameter("description_mission");
	
	//on instancie la class client
	Offre uneOffre = new Offre(titre, lieux, secteur, salaire, contrat, description_personne, description_travail, description_mission); 
	//genere un objet client avec le constructeur surchargé
	
	//appel du controleur pour exécuter l'insertion
	
	Controleur.insertOffre(uneOffre);
	out.print("<br> Insertion réussie");
}
%>

<%@ include file="vue/vue_les_offres.jsp" %>

<% 
if(request.getParameter("id_offre") != null)
{
	int id_offre = Integer.parseInt(request.getParameter("id_offre"));
	
	Controleur.deleteOffre(id_offre); response.sendRedirect("index.jsp?page=2");
}
%>