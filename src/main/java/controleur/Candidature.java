package controleur;

public class Candidature {

	private int id_candidature, experience, id_user, id_offre;
	private String nom, prenom, email, tel, diplome, message, date_candidature;
	
	public Candidature(int id_candidature, String nom, String prenom, String email, String tel, String date_candidature, 
			int experience, String diplome, String message, int id_user, int id_offre) {
		super();
		this.id_candidature = id_candidature;
		this.nom = nom;
		this.prenom = prenom;
		this.email = email;
		this.tel = tel;
		this.date_candidature = date_candidature;
		this.experience = experience;
		this.diplome = diplome;
		this.message = message;
		this.id_user = id_user;
		this.id_offre = id_offre;
	}
	
	//Constructeur sans l'attribut id et date
	public Candidature(String nom, String prenom, String email, String tel, 
			int experience, String diplome, String message, int id_user, int id_offre) {
		super();
		this.nom = nom;
		this.prenom = prenom;
		this.email = email;
		this.tel = tel;
		this.experience = experience;
		this.diplome = diplome;
		this.message = message;
		this.id_user = id_user;
		this.id_offre = id_offre;
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

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
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

	public int getId_user() {
		return id_user;
	}

	public void setId_user(int id_user) {
		this.id_user = id_user;
	}

	public int getId_offre() {
		return id_offre;
	}

	public void setId_offre(int id_offre) {
		this.id_offre = id_offre;
	}
	
	
}