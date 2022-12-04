package controleur;

public class Vuelescandidatures {

	private int id_candidature;
	private int id_offre;
	private String titre, lieux, contrat, nom, prenom, email, tel, date_candidature;
	private int experience;
	private String diplome, message, statut;
	private int id_user;
	
	public Vuelescandidatures(int id_candidature, int id_offre, String titre, String lieux, String contrat, String nom, String prenom,
			String email, String tel, String date_candidature, int experience, String diplome, String message, String statut, int id_user) {
		super();
		this.id_candidature = id_candidature;
		this.id_offre = id_offre;
		this.titre = titre;
		this.lieux = lieux;
		this.contrat = contrat;
		this.nom = nom;
		this.prenom = prenom;
		this.email = email;
		this.tel = tel;
		this.date_candidature = date_candidature;
		this.experience = experience;
		this.diplome = diplome;
		this.message = message;
		this.statut = statut;
		this.id_user = id_user;
	}

	
	public int getId_candidature() {
		return id_candidature;
	}

	public void setId_candidature(int id_candidature) {
		this.id_candidature = id_candidature;
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

	public String getContrat() {
		return contrat;
	}

	public void setContrat(String contrat) {
		this.contrat = contrat;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getPrenom() {
		return prenom;
	}

	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getDate_candidature() {
		return date_candidature;
	}

	public void setDate_candidature(String date_candidature) {
		this.date_candidature = date_candidature;
	}

	public int getExperience() {
		return experience;
	}

	public void setExperience(int experience) {
		this.experience = experience;
	}

	public String getDiplome() {
		return diplome;
	}

	public void setDiplome(String diplome) {
		this.diplome = diplome;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}
	
	public String getStatut() {
		return statut;
	}


	public void setStatut(String statut) {
		this.statut = statut;
	}

	public int getId_user() {
		return id_user;
	}

	public void setId_user(int id_user) {
		this.id_user = id_user;
	}
	
	
	
}
