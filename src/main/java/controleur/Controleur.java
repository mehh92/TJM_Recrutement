package controleur;

import java.util.ArrayList;

import modele.Modele;

public class Controleur {

	
	public static ArrayList<Offre> selectAllOffres()
	{
		return Modele.selectAllOffres();
	}
}
