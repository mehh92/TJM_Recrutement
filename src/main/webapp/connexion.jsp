<%@page import="controleur.Controleur"%>
<%@page import="controleur.User"%>
<%@ include file="vue/vue_connexion.jsp" %>

<% 
int pageCo = Integer.parseInt(request.getParameter("page"));
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
        if (pageCo == 4)
        {
            response.sendRedirect("index.jsp?page=3");
        }
        else
        {
            response.sendRedirect("index.jsp?page=1");
        }

    }
}
%>