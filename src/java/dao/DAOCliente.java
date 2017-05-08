package dao;

import connection.ConnectionFactory;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import objeto.Cliente;

public class DAOCliente {
    
    public void create(Cliente c){
        Connection con = ConnectionFactory.getConnection();
        PreparedStatement stmt = null;
        
        try {
            String sql = "insert into clientes" +
            "(nome,email,login,senha)" +
            "values (?,?,?,?)";
            stmt = con.prepareStatement(sql);
            stmt.setString(1, c.getNome());
            stmt.setString(2, c.getEmail());
            stmt.setString(3, c.getLogin());
            stmt.setString(4, c.getSenha());
            stmt.execute();
        } catch (SQLException ex) {
            Logger.getLogger(DAOCliente.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
            ConnectionFactory.closeConnection(con, stmt);
        }
        
    }
    
    public List<Cliente> read(){
        Connection con = ConnectionFactory.getConnection();
        PreparedStatement stmt = null;
        ResultSet rs = null;
        List<Cliente> clientes = new ArrayList<>();
        
        try {
            String sql = "SELECT * FROM clientes;";
            stmt = con.prepareStatement(sql);
            rs = stmt.executeQuery();
            
            while(rs.next()){
                Cliente c = new Cliente();
                c.setCodigo(rs.getInt("codigo"));
                c.setNome(rs.getString("nome"));
                c.setEmail(rs.getString("email"));
                c.setLogin(rs.getString("login"));
                c.setSenha(rs.getString("senha"));
                clientes.add(c);
            }    
            
        } catch (SQLException ex) {
            Logger.getLogger(DAOCliente.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
            ConnectionFactory.closeConnection(con, stmt, rs);
        }
        return clientes;
    }
}
