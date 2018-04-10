package Database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DBManager {
    public static void main(String[] args) throws SQLException {
        System.out.println("Loading driver...");

        try {
            Class.forName("com.mysql.jdbc.Driver");
            System.out.println("Driver loaded!");
        } catch (ClassNotFoundException e) {
            throw new IllegalStateException("Cannot find the driver in the classpath!", e);
        }
        
        String url = "jdbc:mysql://localhost:3306/clinica";
        String username = "root";
        String password = "root";

        System.out.println("Connecting database...");
        Connection connection = DriverManager.getConnection(url, username, password);
        
        System.out.println("Database connected!");
        Statement statement = connection.createStatement();
        statement.execute("select * from Medico");
        ResultSet RS = statement.getResultSet();
        RS.next();
        System.out.println("id: " + RS.getInt("id"));
        System.out.println("Nome: " + RS.getString("nome"));
        System.out.println("Especialidade: " + RS.getString("especialidade"));
    }
}
