<h1 class="titre-formulaire-candidature">Formulaire de candidature</h1>

<div class="container-insert-candidature">
	<div class="item-insert-candidature">
		<img src="assets/postuler.png" alt="image postuler">
	</div>
	<div class="item-insert-candidature">
		<form method="post" class="border border-postuler">

			<h2 class="titre-postuler">Informations personnelles</h2>

			<div class="form-group">
				<label class="margin-label" for="Nom">Nom :</label>
				<input type="text" class="form-control margin-input-postuler" name="Nom" id="Nom" value="<%=session.getAttribute("nom")%>" disabled>
			</div>
	
			<div class="form-group">
				<label class="margin-label" for="mdp">Prenom :</label>
				<input type="text" class="form-control margin-input-postuler" name="prenom" id="prenom" value="<%=session.getAttribute("prenom")%>" disabled>
			</div>
	
			<div class="form-group">
				<label class="margin-label" for="mdp">Email :</label>
				<input type="email" class="form-control margin-input-postuler" name="email" id="email" value="<%=session.getAttribute("email")%>" disabled>
			</div>
	
			<div class="form-group">
				<label class="margin-label" for="mdp">Tel :</label>
				<input type="tel" class="form-control margin-input-postuler" name="tel" id="tel" value="<%=session.getAttribute("tel")%>" disabled>
			</div>

			<div class="form-group">
				<label class="margin-label" for="mdp">Annee d'experience dans le metier :</label>
				<input type="number" class="form-control margin-input-postuler" name="experience" id="experience" placeholder="Votre experience">
			</div>
	
			<div class="form-group">
				<label class="margin-label" for="mdp">Dernier diplome obtenu :</label>
				<input type="text" class="form-control margin-input-postuler" name="diplome" id="diplome" placeholder="Votre dernier diplome">
			</div>

			<h2 class="titre-postuler">Vos motivations</h2>

			<div class="form-group">
				<label class="margin-label" for="message">Message :</label>
				<textarea class="form-control margin-input-postuler" name="message" rows="4" cols="50" placeholder="Votre message"></textarea>
			</div>
	
			<input type="submit" name="ajouterCandidature" class="btn-formulaire margin-btn-formulaire" value="Soumettre"></input>
	
		</form>
	</div>
</div>
