<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Inscription</title>
</head>
<body>

<div class="container-inscription">

	<div class="form-civilite">
		<label> Civilité </label>
		<select name="civilite" id="civilite">
			<option value="Mr"> Mr </option>
			<option value="Mme"> Mme </option>
			<option value="Mlle"> Mlle </option>
		</select>
	</div>
	<div class="form-prenom">
		<label> Prénom </label>
		<input type="text" name="prenom" id="prenom"> 
	</div>
	<div class="form-nom">
		<label> Nom </label>
		<input type="text" name="nom" id="nom"> 
	</div>
	<div class="form-telephone">
		<label> Téléphone </label>
		<input type=tel name="tel" id="tel"> 
	</div>
	<div class="form-email">
		<label> Email </label>
		<input type="email" name="email" id="email"> 
	</div>
	<div class="form-mdp">
		<label> Mot de passe </label>
		<input type="password" name="password" id="password"> 
	</div>
	
	<div class="button-continuer">
		<button> Continuer </button>
	</div>
	
	<div class="compte">
		<a href="connexion.jsp"> <p> Vous avez déjà un compte ? </p></a>
	</div>


</div>

</body>
</html>