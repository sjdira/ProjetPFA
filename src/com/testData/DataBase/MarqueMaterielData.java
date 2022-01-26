package com.testData.DataBase;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.testData.EnStock.MarqueMateriel;


public class MarqueMaterielData {
	private Connection connexion;
    
    public List<MarqueMateriel> recupererUtilisateurs() {
        List<MarqueMateriel> utilisateurs = new ArrayList<MarqueMateriel>();
        Statement statement = null;
        ResultSet resultat = null;

        loadDatabase();
        
        try {
            statement = connexion.createStatement();

            // Exécution de la requête
            resultat = statement.executeQuery("SELECT IdMarque,Marque FROM MarqueM;");

            // Récupération des données
            while (resultat.next()) {
                String Marque = resultat.getString("Marque");
                String IdMarque = resultat.getString("IdMarque");
                
                MarqueMateriel utilisateur = new MarqueMateriel();
                utilisateur.setNom(Marque);
                utilisateur.setId(IdMarque);
                
                
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
    
    public void ajouterUtilisateur(MarqueMateriel utilisateur1) {
        loadDatabase();
        
        try {
            PreparedStatement preparedStatement = connexion.prepareStatement("INSERT INTO MarqueM(Marque) VALUES(?);");
            preparedStatement.setString(1, utilisateur1.getNom());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
