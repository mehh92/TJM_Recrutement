package controleur;

import java.util.ArrayList;

import modele.Modele;

public class Controleur {

	
	public static ArrayList<Offre> selectAllOffres()
	{
		return Modele.selectAllOffres();
	}
	
	public static User selectWhereUser(String email, String mdp)
	{
		return Modele.selectWhereUser (email, mdp);
	}
	
	public static void insertUser (User unUser)
	{
		Modele.insertUser(unUser);
	}
}
