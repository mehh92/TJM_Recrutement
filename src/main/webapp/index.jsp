<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="controleur.*" %>
<%@ page import="java.util.ArrayList" %>

<!DOCTYPE html>
<html lang="fr">
<head>
	<meta charset="ISO-8859-1">
    <meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="css/style.css">
	<title>TJM Recrutement</title>
</head>
<body>
	<header>
        <div class="wrap-nav">
            <div class="voiture-nav">
                <img class="voiture" src="assets/logo.png" alt="logo de TJM Automobile">
            </div>
            <div class="text-nav">
                <ul>
                    <li><a href="index.jsp?page=1">Accueil</a></li>
                    <li><a href="index.jsp?page=2">Les offres</a></li>
                    <li><a href="index.jsp?page=3">Les candidatures</a></li>
                    <li><a href="index.jsp?page=4"><img class="" src="assets/connexion.png" width="50px" height="50px"></a></li>
                    <li><a href="index.jsp?page=6"><img class="" src="assets/deconnexion.png" width="50px" height="50px"></a></li>
                </ul>
            </div>
        </div>
    </header>
     
    <% 
    int maPage = 1;
    if(request.getParameter("page")!= null )
	{
		maPage = Integer.parseInt(request.getParameter("page"));
	}
	
	switch(maPage)
	{
		case 1 :%> <%@ include file="home.jsp" %> <% break;
		case 2 :%> <%@ include file="offre.jsp" %> <% break;
		case 3 :%> <%@ include file="candidature.jsp" %> <% break;
		case 4 :%> <%@ include file="connexion.jsp" %> <% break;
		case 5 :%> <%@ include file="inscription.jsp" %> <% break;
		case 6 : session.invalidate(); response.sendRedirect("index.jsp?page=1"); break;
	}
    %>

  	<footer class="container-footer">
    	<div class="item-entreprise">   
        	<div class="clef">
            	<h2> TJM automobile </h2>
               	<img src="assets/cle.png">
           	</div>
           	<p> Services automobile depuis 2022 </p>
           	<p> Copyrights. All rights reserved.</p>
       </div>
       <div class="item-info">
       		<h3> Informations </h3>
           	<p class="info-p"> Pour tout renseignement, n'hésitez pas à prendre <br> contact avec nous ou à nous rendre visite ! </p>
           <div class="element-info">
               <img src="assets/position.png">
               <p> 6-8 impasse des deux cousins, 75017, Paris </p>
           </div>
           <div class="element-info">
               <img src="assets/phone.png">
               <p> 01 XX XX XX XX </p>
           </div>
           <div class="element-info">
               <img src="assets/email.png">
               <p> tjm.automobile@gmail.com </p>
           </div>
       </div>
    </footer> 
</body>
</html>
