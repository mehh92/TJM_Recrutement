package controleur;

public class Candidature {

	private int id_candidature, experience;
	private String nom, prenom, email, diplome, message, date_candidature;
	
	public Candidature(int id_candidature, int experience, String nom, String prenom, String email, String diplome,
			String message, String date_candidature) {
		super();
		this.id_candidature = id_candidature;
		this.experience = experience;
		this.nom = nom;
		this.prenom = prenom;
		this.email = email;
		this.diplome = diplome;
		this.message = message;
		this.date_candidature = date_candidature;
	}

	public int getId_candidature() {
		return id_candidature;
	}

	public void setId_candidature(int id_candidature) {
		this.id_candidature = id_candidature;
	}

	public int getExperience() {
		return experience;
	}

	public void setExperience(int experience) {
		this.experience = experience;
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

	public String getDate_candidature() {
		return date_candidature;
	}

	public void setDate_candidature(String date_candidature) {
		this.date_candidature = date_candidature;
	}
	
	
}