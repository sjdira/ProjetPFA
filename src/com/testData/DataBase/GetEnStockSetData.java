package com.testData.DataBase;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


import com.testData.EnStock.GetEnStockSet;

public class GetEnStockSetData {
	private Connection connexion;
    
    public List<GetEnStockSet> recupererUtilisateurs() {
        List<GetEnStockSet> utilisateurs = new ArrayList<GetEnStockSet>();
        Statement statement = null;
        ResultSet resultat = null;

        loadDatabase();
        
        try {
            statement = connexion.createStatement();

            // Exécution de la requête
            resultat = statement.executeQuery("SELECT Fournisseur FROM FournisseurM;");

            // Récupération des données
            while (resultat.next()) {
           //     String Modele = resultat.getString("Fournisseur");
                
                
                GetEnStockSet utilisateur = new GetEnStockSet();
              //  utilisateur.setNom(Modele);
                
                
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
    
    public void ajouterUtilisateur(GetEnStockSet utilisateur3) {
        loadDatabase();
        
        try {
            PreparedStatement preparedStatement = connexion.prepareStatement("INSERT INTO EnStock (IdEnStock, TypeMateriel, MarqueMateriel, Model, NSerie, Fournisseur, BCNom, BLNom, Budget, Ninventaire, ResposableSortie, Commentaire,DateAchat) VALUES (NULL, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?,?);");
            preparedStatement.setString(1, utilisateur3.getTypeMateriel());
            preparedStatement.setString(2, utilisateur3.getMarqueMateriel());
            preparedStatement.setString(3, utilisateur3.getModel());
            preparedStatement.setString(4, utilisateur3.getNSerie());
            preparedStatement.setString(5, utilisateur3.getFournisseur());
            preparedStatement.setString(6, utilisateur3.getBCNom());
            preparedStatement.setString(7, utilisateur3.getBLNom());
            preparedStatement.setString(8, utilisateur3.getBudget());
            preparedStatement.setString(9, utilisateur3.getNinventaire());
            preparedStatement.setString(10, utilisateur3.getResposableSortie());
            preparedStatement.setString(11, utilisateur3.getCommentaire());
           
            preparedStatement.setDate(12, convertUtilToSql( utilisateur3.getDate()));
            
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
    private static java.sql.Date convertUtilToSql(java.util.Date uDate) {
        java.sql.Date sDate = new java.sql.Date(uDate.getTime());
        return sDate;
    }
}
