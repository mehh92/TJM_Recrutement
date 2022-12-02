package controleur;

public class Offre {

	private int id_offre;
	private String titre, lieux, secteur, salaire, contrat, date_offre;
	private String description_personne, description_travail, description_mission;
	
	public Offre(int id_offre, String titre, String lieux, String secteur, String salaire, String contrat,
			String date_offre, String description_personne, String description_travail, String description_mission) {
		super();
		this.id_offre = id_offre;
		this.titre = titre;
		this.lieux = lieux;
		this.secteur = secteur;
		this.salaire = salaire;
		this.contrat = contrat;
		this.date_offre = date_offre;
		this.description_personne = description_personne;
		this.description_travail = description_travail;
		this.description_mission = description_mission;
	}
	
	//Constructeur sans l'attribut id et date
	public Offre(String titre, String lieux, String secteur, String salaire, String contrat,
			String description_personne, String description_travail, String description_mission) {
		super();
		this.titre = titre;
		this.lieux = lieux;
		this.secteur = secteur;
		this.salaire = salaire;
		this.contrat = contrat;
		this.description_personne = description_personne;
		this.description_travail = description_travail;
		this.description_mission = description_mission;
	}

	public int getId_offre() {
		return id_offre;
	}

	public void setId_offre(int id_offre) {
		this.id_offre = id_offre;
	}

	public String getTitre() {
		return titre;
	}

	public void setTitre(String titre) {
		this.titre = titre;
	}

	public String getLieux() {
		return lieux;
	}

	public void setLieux(String lieux) {
		this.lieux = lieux;
	}

	public String getSecteur() {
		return secteur;
	}

	public void setSecteur(String secteur) {
		this.secteur = secteur;
	}

	public String getSalaire() {
		return salaire;
	}

	public void setSalaire(String salaire) {
		this.salaire = salaire;
	}

	public String getContrat() {
		return contrat;
	}

	public void setContrat(String contrat) {
		this.contrat = contrat;
	}

	public String getDate_offre() {
		return date_offre;
	}

	public void setDate_offre(String date_offre) {
		this.date_offre = date_offre;
	}

	public String getDescription_personne() {
		return description_personne;
	}

	public void setDescription_personne(String description_personne) {
		this.description_personne = description_personne;
	}

	public String getDescription_travail() {
		return description_travail;
	}

	public void setDescription_travail(String description_travail) {
		this.description_travail = description_travail;
	}

	public String getDescription_mission() {
		return description_mission;
	}

	public void setDescription_mission(String description_mission) {
		this.description_mission = description_mission;
	}
	
	
}	