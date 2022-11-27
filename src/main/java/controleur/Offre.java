package controleur;

public class Offre {

	private int id_offre;
	private String titre, lieux, secteur, salaire, contrat;
	
	public Offre(int id_offre, String titre, String lieux, String secteur, String salaire, String contrat) {
		super();
		this.id_offre = id_offre;
		this.titre = titre;
		this.lieux = lieux;
		this.secteur = secteur;
		this.salaire = salaire;
		this.contrat = contrat;
	}
	
	public Offre(String titre, String lieux, String secteur, String salaire, String contrat) {
		super();
		this.id_offre = 0;
		this.titre = titre;
		this.lieux = lieux;
		this.secteur = secteur;
		this.salaire = salaire;
		this.contrat = contrat;
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
	
	
}
