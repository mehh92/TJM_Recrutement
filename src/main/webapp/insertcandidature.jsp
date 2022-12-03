<%@page import="controleur.Controleur"%>
<%@page import="controleur.Candidature"%>
<h1>Formulaire de candidature</h1>

<%@ include file="vue/vue_insert_candidature.jsp" %>

<% if(request.getParameter("ajouterCandidature") != null)
{
	
	String nom = (String) session.getAttribute("nom");
	String prenom = (String) session.getAttribute("prenom");
	String email = (String) session.getAttribute("email");
	String tel = (String) session.getAttribute("tel");
	
	int experience = Integer.parseInt(request.getParameter("experience"));
	String diplome = request.getParameter("diplome");
	String message = request.getParameter("message");
	
	int id_user = (Integer) session.getAttribute("id_user");
	
	int id_offre_candidature  = Integer.parseInt(request.getParameter("id_offre"));
	
	//on instancie la class client
	Candidature uneCandidature = new Candidature(nom, prenom, email, tel, experience, diplome, message, id_user, id_offre_candidature); 
	//genere un objet client avec le constructeur surchargé
	
	//appel du controleur pour exécuter l'insertion
	
	Controleur.insertCandidature(uneCandidature);
	out.print("<br> Insertion réussie");
}
%>