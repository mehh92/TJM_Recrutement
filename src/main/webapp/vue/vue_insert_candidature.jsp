<div class="container-all d-flex">

	<div class="mt-3">
		<h1>Formulaire de candidature</h1>
		
		<form method="post">
		<div class="ms-5">
			<h2 class="info-perso">Informations personnelles</h2>
				<div class="form-nom">
			        <label> Nom : </label>
			        <input type="text" name="nom" id="nom" value="<%=session.getAttribute("nom")%>" disabled> 
			    </div>
			    <div class="form-prenom">
			        <label> Prénom : </label>
			        <input type="text" name="prenom" id="prenom" value="<%=session.getAttribute("prenom")%>" disabled> 
			    </div>
			
			    <div class="form-email">
			        <label> Email : </label>
			        <input type="email" name="email" id="email" value="<%=session.getAttribute("email")%>" disabled> 
			    </div>
			    <div class="form-tel">
			        <label> Téléphone : </label>
			        <input type="number" name="tel" id="tel" value="<%=session.getAttribute("tel")%>" disabled> 
			    </div>
			    <div class="form-experience">
			        <label> Année d'expérience dans le métier :</label>
			        <input type="number" name="experience" id="experience">
			    </div>
			    <div class="form-diplome mb-5">
			        <label> Dernier diplôme obtenu :</label>
			        <input type="text" name="diplome" id="diplome">
			    </div>
		</div>
		<div class="ms-5">	
		<h2>Vos motivations</h2>
			<label class="d-block">Message :</label>
			<textarea class="d-block w-100" name="message" rows="4" cols="50"></textarea>
		    <input class="d-block mt-3 float-end" type="submit" name="ajouterCandidature" value="Soumettre">
		</div>
		</form>
	</div>
	<div class="col d-inline">
		<img class="imgPostuler" src="assets/postuler.png">
	</div>

</div>