package controleur;

import java.util.ArrayList;

import modele.Modele;

public class Controleur {

	/*USER*/
	public static User selectWhereUser(String email, String mdp)
	{
		return Modele.selectWhereUser (email, mdp);
	}
	
	public static void insertUser (User unUser)
	{
		Modele.insertUser(unUser);
	}
	
	/*OFFRE*/
	public static ArrayList<Offre> selectAllOffres()
	{
		return Modele.selectAllOffres();
	}
	
	public static void insertOffre(Offre uneOffre)
	{
		Modele.insertOffre(uneOffre);
	}
	
	public static void deleteOffre(int id_offre)
	{
		Modele.deleteOffre(id_offre);
	}
	
	/*CANDIDATURE*/
	public static void insertCandidature(Candidature uneCandidature)
	{
		Modele.insertCandidature(uneCandidature);
	}
	
	public static void deleteCandidature(int id_candidature)
	{
		Modele.deleteCandidature(id_candidature);
	}
	
	/*VUECANDIDATURE*/
}
