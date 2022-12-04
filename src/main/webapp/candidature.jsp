
<%@ include file="vue/vue_les_candidatures.jsp" %>

<% 
if(request.getParameter("action") != null && request.getParameter("id_candidature") != null)
{
	String action = request.getParameter("action");
	
	int id_candidature = Integer.parseInt(request.getParameter("id_candidature"));
	
	
	switch(action)
	{
		case "sup" : Controleur.deleteCandidature(id_candidature); 
					 response.sendRedirect("index.jsp?page=3"); 
					 break;
					 
		case "non-retenu" : Controleur.updateCandidatureNonValide(id_candidature);
							response.sendRedirect("index.jsp?page=3"); 
		  			 		break;
					 
		case "approuve" : Controleur.updateCandidatureValide(id_candidature);
						  response.sendRedirect("index.jsp?page=3"); 
						  break;
	} 
}
%>
