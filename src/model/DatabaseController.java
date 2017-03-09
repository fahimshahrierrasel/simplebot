package model;

import java.sql.*;

/**
 * Created by Fahim Shahrier Rasel on 10-Mar-17.
 */

public class DatabaseController
{
    private Connection connection = null;

    DatabaseController(){
        connectDatabase();
    }

    private void connectDatabase(){
        try {
            String databaseUrl = "jdbc:sqlite:C:/Users/Fahim Shahrier Rasel/EclipseWorkspace/Simple Bot/database/ProjectAI.db";
            this.connection = DriverManager.getConnection(databaseUrl);
            System.out.println("Database Connection Successful!!");
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }

    public void closeDatabaseConnection(){
        try{
            if(this.connection != null){
                this.connection.close();
                this.connection = null;
                System.out.println("Database Close Successful!!");
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }

    public Connection getConnection(){
        return this.connection;
    }


    public String getFact(String keyword){
        String fact = null;
        String query = "Select Fact From Questions Where Question = ?";

        try {
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, keyword);
            ResultSet resultSet = preparedStatement.executeQuery();
            fact = resultSet.getString("Fact");
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        if(fact == null)
            fact = "undefined";
        return fact;
    }
}
