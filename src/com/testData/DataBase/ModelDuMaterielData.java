package com.testData.DataBase;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


import com.testData.EnStock.ModelDuMateriel;


public class ModelDuMaterielData {
	private Connection connexion;
    
    public List<ModelDuMateriel> recupererUtilisateurs() {
        List<ModelDuMateriel> utilisateurs = new ArrayList<ModelDuMateriel>();
        Statement statement = null;
        ResultSet resultat = null;

        loadDatabase();
        
        try {
            statement = connexion.createStatement();

            // Exécution de la requête
            resultat = statement.executeQuery("SELECT Modele FROM ModeleM;");

            // Récupération des données
            while (resultat.next()) {
                String Modele = resultat.getString("Modele");
                
                
                ModelDuMateriel utilisateur = new ModelDuMateriel();
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
    
    public void ajouterUtilisateur(ModelDuMateriel utilisateur2) {
        loadDatabase();
        
        try {
            PreparedStatement preparedStatement = connexion.prepareStatement("INSERT INTO ModeleM(Modele,idMarque) VALUES(?,?);");
            preparedStatement.setString(1, utilisateur2.getNom());

            preparedStatement.setInt(2, Integer.parseInt(utilisateur2.getId()));
            
            
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
