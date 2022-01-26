package com.testData.DataBase;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


import com.testData.EnStock.TypeMateriel;

public class TypeMaterielData {
    private Connection connexion;
    
    public List<TypeMateriel> recupererUtilisateurs() {
        List<TypeMateriel> utilisateurs = new ArrayList<TypeMateriel>();
        Statement statement = null;
        ResultSet resultat = null;

        loadDatabase();
        
        try {
            statement = connexion.createStatement();

            // Exécution de la requête
            resultat = statement.executeQuery("SELECT TypeM FROM TypeMateriel;");

            // Récupération des données
            while (resultat.next()) {
                String TypeM = resultat.getString("TypeM");
                
                
                TypeMateriel utilisateur = new TypeMateriel();
                utilisateur.setNom(TypeM);
                
                
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
    
    public void ajouterUtilisateur(TypeMateriel utilisateur) {
        loadDatabase();
        
        try {
            PreparedStatement preparedStatement = connexion.prepareStatement("INSERT INTO TypeMateriel(TypeM) VALUES(?);");
            preparedStatement.setString(1, utilisateur.getNom());
           
            
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
