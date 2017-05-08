package connection;

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ConnectionFactory {
    private static final String DRIVER = "org.postgresql.Driver"; //identifica serviço de BD
    private static final String URL = "jdbc:postgresql://localhost:5432/cliente"; //local do BD
    private static final String LOGIN = "postgres";
    private static final String SENHA = "postgres";
    
    public static Connection getConnection(){
        try {
            Class.forName(DRIVER);
            return DriverManager.getConnection(URL, LOGIN, SENHA);
        } catch (ClassNotFoundException | SQLException ex) {
            throw new RuntimeException("Erro ao inicar conexao \n" + ex.getMessage() );
        }
    }
    
    public static void closeConnection(Connection c){
        try {
            c.close();
        } catch (SQLException ex) {
            throw new RuntimeException("Erro ao fechar conexao \n" + ex.getMessage() );
        }
    }
    
    public static void closeConnection(Connection c, PreparedStatement s){
        try {
            closeConnection(c);
            s.close();
        } catch (SQLException ex) {
            throw new RuntimeException("Erro ao fechar conexao \n" + ex.getMessage() );
        }
    }
    
    public static void closeConnection(Connection c, PreparedStatement s, ResultSet rs){
        try {
            closeConnection(c,s);
            rs.close();
        } catch (SQLException ex) {
            throw new RuntimeException("Erro ao fechar conexao \n" + ex.getMessage() );
        }
    }
}
