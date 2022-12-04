<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="utf8"%>
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
	
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
	
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
                    <li><a href="index.jsp?page=4"><img class="nav-img" src="assets/connexion.png" width="50px" height="50px"></a></li>
                    <li><a href="index.jsp?page=8"><img class="nav-img" src="assets/deconnexion.png" width="50px" height="50px"></a></li>
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
		case 6 :%> <%@ include file="description_offre.jsp" %> <% break;
		case 7 :%> <%@ include file="insertcandidature.jsp" %> <% break;
		case 8 : session.invalidate(); response.sendRedirect("index.jsp?page=1"); break;
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
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>

</body>
</html>
