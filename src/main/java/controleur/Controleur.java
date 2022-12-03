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
	
	/*
	public static Offre selectWhereOffre(int id_offre)
	{
		return Modele.selectWhereOffre(id_offre);
	}
	*/
	
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
	
	public static ArrayList<Vuelescandidatures> selectAllCandidatures()
	{
		return Modele.selectAllCandidatures();
	}
	
	public static ArrayList<Vuelescandidatures> selectWhereAllCandidatures(int id_user)
	{
		return Modele.selectWhereAllCandidatures(id_user);
	}
	
	/*
	public static Vuelescandidatures selectWhereCandidature(int id_candidature)
	{
		return Modele.selectWhereCandidature(id_candidature);
	}
	*/
}
