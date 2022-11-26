<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Connexion</title>
</head>
<body>

<div class="container-page-connexion">
	<div class="container-item">
		<div class="email">
			<label for="email"> Email </label>
		</div>
		<div class="champ-email">
			<input type="text" name="email" id="email">
		</div>
		<div class="mdp">
			<label for="mdp"> Mot de passe</label>
		</div>
		<div class="champ-mdp">
			<input type="password" name="password" id="password" minlength="10">
		</div>
		<div class="mdplost"> <a href="#"><p> Mot de passe oublié ? </p></a></div>
		
		<div class="button-connexion">
			<button> Connexion </button>
		</div>
		
		<div class="newAccount">
			<a href="#">
				<p> Vous n'avez pas de compte ? Créez-en un maintenant </p>
			</a>
		</div>
	</div>
</div>

</body>
</html>