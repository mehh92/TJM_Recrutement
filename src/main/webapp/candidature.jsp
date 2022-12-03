<h1 class="titre-les-candidatures">Les candidatures</h1>

<%@ include file="vue/vue_les_candidatures.jsp" %>

<% 
if(request.getParameter("id_candidature") != null)
{
	int id_candidature = Integer.parseInt(request.getParameter("id_candidature"));
	
	Controleur.deleteCandidature(id_candidature); response.sendRedirect("index.jsp?page=3");
}
%>