<%@page import="controleur.Controleur"%>
<%@page import="controleur.User"%>
<%@ include file="vue/vue_connexion.jsp" %>

<% 
User unUser = null;
if(request.getParameter("seConnecter") != null)
{
	String email = request.getParameter("email");
	String mdp= request.getParameter("mdp");
	
	unUser = Controleur.selectWhereUser(email, mdp);
	if (unUser == null)
	{
		out.print("<br> Vérifier vos identifiants");
	}
	else
	{
		//connexion réussie, on démarre la session.
		session.setAttribute("id_user", unUser.getId_user());
		session.setAttribute("email", unUser.getEmail());
		session.setAttribute("nom", unUser.getNom());
		session.setAttribute("prenom", unUser.getPrenom());
		session.setAttribute("tel", unUser.getTel());
		session.setAttribute("role", unUser.getRole());
		//recharger la page index.jsp ou la page candidature
		response.sendRedirect("index.jsp?page=1");
	
	}
}

%>