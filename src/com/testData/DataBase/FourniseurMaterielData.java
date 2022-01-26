package com.testData.DataBase;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.testData.EnStock.FourniseurMateriel;


public class FourniseurMaterielData {
	private Connection connexion;
    
    public List<FourniseurMateriel> recupererUtilisateurs() {
        List<FourniseurMateriel> utilisateurs = new ArrayList<FourniseurMateriel>();
        Statement statement = null;
        ResultSet resultat = null;

        loadDatabase();
        
        try {
            statement = connexion.createStatement();

            // Exécution de la requête
            resultat = statement.executeQuery("SELECT Fournisseur FROM FournisseurM;");

            // Récupération des données
            while (resultat.next()) {
                String Modele = resultat.getString("Fournisseur");
                
                
                FourniseurMateriel utilisateur = new FourniseurMateriel();
                utilisateur.setNom(Modele);
                
                
                utilisateurs.add(utilisateur);
            }
        } catch (SQLException e) {
        } finally {
            // Fermeture de la connexion
        	try {
                if (resultat != null)
                    resultat.close();
                if (statement != null)
                    statement.close();
                if (connexion != null)
                    connexion.close();
            } catch (SQLException ignore) {
            }
        }
        
        return utilisateurs;
    }
    
    private void loadDatabase() {
        // Chargement du driver
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
        }

        try {
            connexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/GDPI?autoReconnect=true&useSSL=false", "root", "");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
    public void ajouterUtilisateur(FourniseurMateriel utilisateur3) {
        loadDatabase();
        
        try {
            PreparedStatement preparedStatement = connexion.prepareStatement("INSERT INTO FournisseurM(Fournisseur) VALUES(?);");
            preparedStatement.setString(1, utilisateur3.getNom());
           
            
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
