<%@page import="controleur.Controleur"%>
<%@page import="controleur.User"%>
<%@ include file="vue/vue_inscription.jsp" %>

<%
if(request.getParameter("validerInscription") != null)
{
	String nom = request.getParameter("nom");
	String prenom = request.getParameter("prenom");
	String email = request.getParameter("email");
	String tel = request.getParameter("tel");
	String mdp = request.getParameter("mdp");
	
	//on instancie la class client
	User unUserInscri = new User(nom, prenom, email, tel, mdp, "candidat"); 
	//genere un objet client avec le constructeur surcharg�
	
	//appel du controleur pour ex�cuter l'insertion
	
	Controleur.insertUser(unUserInscri);
	out.print("<br> Insertion r�ussie");
	
}
%>
