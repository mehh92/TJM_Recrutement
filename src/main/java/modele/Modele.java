package modele;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import controleur.Candidature;
import controleur.Offre;
import controleur.User;
import controleur.Vuelescandidatures;


public class Modele {

	private static Bdd uneBdd = new Bdd("localhost:3307","tjm","root", "");
	
	/*USER*/
	public static void insertUser (User unUser)
	{
		String requete = "insert into utilisateur values (null, '"
						+unUser.getNom()+"','"
						+unUser.getPrenom()+"','"
						+unUser.getEmail()+"','"
						+unUser.getTel()+"','"
						+unUser.getMdp()+"','"
						+unUser.getRole()+"');";
		try
		{
			uneBdd.seConnecter();
			Statement unStat = uneBdd.getMaConnexion().createStatement();
			unStat.execute(requete);
			unStat.close();
			uneBdd.seDeconnecter();
		}
		catch(SQLException exp)
		{
			System.out.println("impossible d'executer la requete :" + requete);
		}
	}
	
	public static User selectWhereUser(String email, String mdp)
	{
		String requete = "select * from utilisateur where email='"+email+"' and mdp='"+mdp+"';";
		User unUser = null;
		
		try
		{
			uneBdd.seConnecter();
			Statement unStat = uneBdd.getMaConnexion().createStatement();
			//extraction des clients
			ResultSet unResultat = unStat.executeQuery(requete);
			if (unResultat.next())
			{
				unUser = new User (unResultat.getInt("id_user"), unResultat.getString("nom"),
						unResultat.getString("prenom"),unResultat.getString("email"),
						unResultat.getString("tel"),unResultat.getString("mdp"), unResultat.getString("role"));
			}
			unStat.execute(requete);
			unStat.close();
			uneBdd.seDeconnecter();
		}
		catch(SQLException exp)
		{
			System.out.println("impossible d'executer la requete :" + requete);
		}
		return 	unUser;
	}
	
	
	/*OFFRE*/
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
						lesResultats.getString("contrat"), lesResultats.getString("date_offre"),
						lesResultats.getString("description_personne"),
						lesResultats.getString("description_travail"),
						lesResultats.getString("description_mission")
						);
				
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
	/*
	public static Offre selectWhereOffre(int id_offre)
	{
		String requete = "select * from offre where id_offre='"+id_offre+"';";
		Offre uneOffre = null;
		
		try
		{
			uneBdd.seConnecter();
			Statement unStat = uneBdd.getMaConnexion().createStatement();
			//extraction des clients
			ResultSet unResultat = unStat.executeQuery(requete);
			if (unResultat.next())
			{
				uneOffre = new Offre (unResultat.getInt("id_offre"), unResultat.getString("titre"),
						unResultat.getString("lieux"),unResultat.getString("secteur"),
						unResultat.getString("salaire"), unResultat.getString("contrat"),
						unResultat.getString("date_offre"),unResultat.getString("description_personne"),
						unResultat.getString("description_travail"),unResultat.getString("description_mission"));
			}
			unStat.execute(requete);
			unStat.close();
			uneBdd.seDeconnecter();
		}
		catch(SQLException exp)
		{
			System.out.println("impossible d'executer la requete :" + requete);
		}
		return 	uneOffre;
	}
	*/
	
	
	/*public static ArrayList<Offre> selectAllOffres (String mot)
	{
		ArrayList<Offre> lesOffres = new ArrayList<Offre>(); 
		String requete = ""; 
		if (mot.equals(""))
		{
			requete = "select * from offre;"; 
		} else {
			requete = "select * from offre where titre like '%"+mot+"%' or lieux like '%"+mot+"%' " 
				  +	" or secteur like '%"+mot+"%' ;";
		}
		try {
			uneBdd.seConnecter();
			Statement unStat = uneBdd.getMaConnexion().createStatement(); //curseur 
			ResultSet desResultats = unStat.executeQuery(requete); //fetchAll de PHP 
			//parcours des résultats pour construire les instances de clients 
			while (desResultats.next()) //tant qu'il y a un résultat suivant 
			{
				//instancier la classe client : créer un objet client
				Offre unClient = new Offre (
						desResultats.getInt("idclient"),  desResultats.getString ("nom"), 
						desResultats.getString ("siret"), desResultats.getString ("tel"),
						desResultats.getString ("email"), desResultats.getString ("adresse"),
						desResultats.getString ("CP"), desResultats.getString ("ville")
						
						);
				//On ajoute cet objet à la liste des clients 
				lesClients.add(unClient);
			}
			unStat.close(); 
			uneBdd.seDeConnecter();
		}
		catch (SQLException exp)
		{
			System.out.println("Erreur execution requete : " + requete);
		}
		
		return lesClients; 
	}
	*/
	
	public static void insertOffre (Offre uneOffre)
	{
		String requete = "insert into offre values (null, '"
						+uneOffre.getTitre()+"','"
						+uneOffre.getLieux()+"','"
						+uneOffre.getSecteur()+"','"
						+uneOffre.getSalaire()+"','"
						+uneOffre.getContrat()+
						"',DATE_FORMAT(curdate(), \"%d/%m/%Y\"),'"
						+uneOffre.getDescription_personne()+"','"
						+uneOffre.getDescription_travail()+"','"
						+uneOffre.getDescription_mission()+"');";
		try
		{
			uneBdd.seConnecter();
			Statement unStat = uneBdd.getMaConnexion().createStatement();
			unStat.execute(requete);
			unStat.close();
			uneBdd.seDeconnecter();
		}
		catch(SQLException exp)
		{
			System.out.println("impossible d'executer la requete :" + requete);
		}
	}
	
	public static void deleteOffre(int id_offre)
	{
		String requete = "delete from offre where id_offre = "+id_offre+";"; 
		try
		{
			uneBdd.seConnecter();
			Statement unStat = uneBdd.getMaConnexion().createStatement();
			unStat.execute(requete);
			unStat.close();
			uneBdd.seDeconnecter();
		}
		catch(SQLException exp)
		{
			System.out.println("impossible d'executer la requete :" + requete);
		}
	}
	
	/*CANDIDATURE*/
	public static void insertCandidature (Candidature uneCandidature)
	{
		String requete = "insert into candidature values (null,'"
						
						+uneCandidature.getNom()+"','"
						+uneCandidature.getPrenom()+"','"
						+uneCandidature.getEmail()+"','"
						+uneCandidature.getTel()+
						"',DATE_FORMAT(curdate(), \"%d/%m/%Y\"),"
						+uneCandidature.getExperience()+",'"
						+uneCandidature.getDiplome()+"','"
						+uneCandidature.getMessage()+"',"
						+uneCandidature.getId_user()+","
						+uneCandidature.getId_offre()+");";
		try
		{
			uneBdd.seConnecter();
			Statement unStat = uneBdd.getMaConnexion().createStatement();
			unStat.execute(requete);
			unStat.close();
			uneBdd.seDeconnecter();
		}
		catch(SQLException exp)
		{
			System.out.println("impossible d'executer la requete :" + requete);
		}
	}
	
	public static void deleteCandidature(int id_candidature)
	{
		String requete = "delete from candidature where id_candidature = "+id_candidature+";"; 
		try
		{
			uneBdd.seConnecter();
			Statement unStat = uneBdd.getMaConnexion().createStatement();
			unStat.execute(requete);
			unStat.close();
			uneBdd.seDeconnecter();
		}
		catch(SQLException exp)
		{
			System.out.println("impossible d'executer la requete :" + requete);
		}
	}
	
	/*VUELESCANDIDATURES*/
	public static ArrayList<Vuelescandidatures> selectAllCandidatures()
	{
		String requete = "select * from vuelescandidatures;";
		ArrayList<Vuelescandidatures> lesCandidatures = new ArrayList<Vuelescandidatures>();
		try
		{
			uneBdd.seConnecter();
			Statement unStat = uneBdd.getMaConnexion().createStatement();
			//extraction des Offres
			ResultSet lesResultats = unStat.executeQuery(requete);
			while (lesResultats.next())
			{
				Vuelescandidatures uneCandidature = new Vuelescandidatures (lesResultats.getInt("id_candidature"), 
						lesResultats.getInt("id_offre"), lesResultats.getString("titre"),
						lesResultats.getString("lieux"),lesResultats.getString("contrat"),lesResultats.getString("nom"),
						lesResultats.getString("prenom"), lesResultats.getString("email"),lesResultats.getString("tel"),
						lesResultats.getString("date_candidature"),lesResultats.getInt("experience"),
						lesResultats.getString("diplome"), lesResultats.getString("message"), lesResultats.getInt("id_user"));
				
				//Ajout du client dans l'ArrayList
				lesCandidatures.add(uneCandidature);
			}
			unStat.execute(requete);
			unStat.close();
			uneBdd.seDeconnecter();
		}
		catch(SQLException exp)
		{
			System.out.println("impossible d'executer la requete :" + requete);
		}
		return lesCandidatures;
	}
	
	public static ArrayList<Vuelescandidatures> selectWhereAllCandidatures(int id_user)
	{
		String requete = "select * from vuelescandidatures where id_user='"+id_user+"';";
		ArrayList<Vuelescandidatures> lesCandidatures = new ArrayList<Vuelescandidatures>();
		try
		{
			uneBdd.seConnecter();
			Statement unStat = uneBdd.getMaConnexion().createStatement();
			//extraction des Offres
			ResultSet lesResultats = unStat.executeQuery(requete);
			while (lesResultats.next())
			{
				Vuelescandidatures uneCandidature = new Vuelescandidatures (lesResultats.getInt("id_candidature"), 
						lesResultats.getInt("id_offre"), lesResultats.getString("titre"),
						lesResultats.getString("lieux"),lesResultats.getString("contrat"),lesResultats.getString("nom"),
						lesResultats.getString("prenom"), lesResultats.getString("email"),lesResultats.getString("tel"),
						lesResultats.getString("date_candidature"),lesResultats.getInt("experience"),
						lesResultats.getString("diplome"), lesResultats.getString("message"), lesResultats.getInt("id_user"));
				
				//Ajout du client dans l'ArrayList
				lesCandidatures.add(uneCandidature);
			}
			unStat.execute(requete);
			unStat.close();
			uneBdd.seDeconnecter();
		}
		catch(SQLException exp)
		{
			System.out.println("impossible d'executer la requete :" + requete);
		}
		return lesCandidatures;
	}
	
	/*
	public static Vuelescandidatures selectWhereCandidature(int id_candidature)
	{
		String requete = "select * from vuelescandidatures where id_candidature='"+id_candidature+"';";
		Vuelescandidatures uneCandidature = null;
		
		try
		{
			uneBdd.seConnecter();
			Statement unStat = uneBdd.getMaConnexion().createStatement();
			//extraction des clients
			ResultSet unResultat = unStat.executeQuery(requete);
			if (unResultat.next())
			{
				uneCandidature = new Vuelescandidatures (unResultat.getInt("id_candidature"), unResultat.getInt("id_offre"), unResultat.getString("titre"),
						unResultat.getString("lieux"),unResultat.getString("contrat"),unResultat.getString("nom"),
						unResultat.getString("prenom"), unResultat.getString("email"),unResultat.getString("tel"),
						unResultat.getString("date_candidature"),unResultat.getInt("experience"),
						unResultat.getString("diplome"), unResultat.getString("message"), unResultat.getInt("id_user"));
			}
			unStat.execute(requete);
			unStat.close();
			uneBdd.seDeconnecter();
		}
		catch(SQLException exp)
		{
			System.out.println("impossible d'executer la requete :" + requete);
		}
		return 	uneCandidature;
	}
	*/
}
