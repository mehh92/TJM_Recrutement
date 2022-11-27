package modele;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import controleur.Offre;


public class Modele {

	private static Bdd uneBdd = new Bdd("localhost:3307", "tjm","root", "");
	
	public static ArrayList<Offre> selectAllOffres()
	{
		String requete = "select * from offre;";
		ArrayList<Offre> lesOffres = new ArrayList<Offre>();
		try
		{
			uneBdd.seConnecter();
			Statement unStat = uneBdd.getMaConnexion().createStatement();
			//extraction des Offres
			ResultSet lesResultats = unStat.executeQuery(requete);
			while (lesResultats.next())
			{
				Offre uneOffre = new Offre (lesResultats.getInt("id_offre"), lesResultats.getString("titre"),
						lesResultats.getString("lieux"),lesResultats.getString("secteur"),lesResultats.getString("salaire"),
						lesResultats.getString("contrat"));
				
				//Ajout du client dans l'ArrayList
				lesOffres.add(uneOffre);
			}
			unStat.execute(requete);
			unStat.close();
			uneBdd.seDeconnecter();
		}
		catch(SQLException exp)
		{
			System.out.println("impossible d'executer la requete :" + requete);
		}
		return lesOffres;
	}
}
