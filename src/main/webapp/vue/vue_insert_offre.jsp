<div class="div-hide">

<h1 class="titre-insert-offre">Inserer une offre </h1>

<form method="post" class="form-horizontal border border-insert-offre">
	<div class="form-group">
		<label class="margin-label" for="titre">Titre</label>
		<input type="text" class="form-control champ-insert-offre" name="titre" id="titre" placeholder="Titre de l'offre">
	</div>

	<div class="form-group row">
	  <div class="col-md-6">
		<label class="margin-label" for="contrat">Contrat</label>
		<input type="text" class="form-control champ-insert-offre" name="contrat" id="contrat" placeholder="Type de contrat">
	  </div>
	  <div class="col-md-6">
		<label class="margin-label" for="salaire">Salaire</label>
		<input type="text" class="form-control champ-insert-offre" name="salaire" id="salaire" placeholder="Le salaire">
	  </div>
	</div>

	<div class="form-group row">
		<div class="col-md-6">
		  <label class="margin-label" for="lieux">Lieux</label>
		  <input type="text" class="form-control champ-insert-offre" name="lieux" id="lieux" placeholder="Lieu(x)">
		</div>
		<div class="col-md-6">
		  <label class="margin-label" for="secteur">Secteur d'activite</label>
		  <input type="text" class="form-control champ-insert-offre" name="secteur" id="secteur" placeholder="Le secteur d'activite">
		</div>
	</div>

	<div class="form-group row">
		<div class="col-md-4">
			<label class="margin-label" for="description_personne">Description de la personne recherche</label>
			<textarea class="form-control champ-insert-offre" name="description_personne" rows="4" cols="50" placeholder="Description de la personne"></textarea>
		</div>
	
		<div class="col-md-4">
			<label class="margin-label" for="description_travail">Description du travail</label>
			<textarea class="form-control champ-insert-offre" name="description_travail" rows="4" cols="50" placeholder="Description du travail"></textarea>
		</div>
	
		<div class="col-md-4">
			<label class="margin-label" for="description_mission">Description de la mission</label>
			<textarea class="form-control champ-insert-offre" name="description_mission" rows="4" cols="50" placeholder="Description de la mission"></textarea>
		</div>
	</div>

	<input type="submit" name="ajouterOffre" class="btn-formulaire margin-btn-formulaire" value="Ajouter">

  </form>
  
</div>