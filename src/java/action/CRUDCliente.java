package action;

import com.opensymphony.xwork2.ActionSupport;
import objeto.Cliente;
import dao.DAOCliente;
import java.util.ArrayList;
import java.util.List;

public class CRUDCliente extends ActionSupport {
    private int codigo;
    private String nome;
    private String email;
    private String login;
    private String senha;
    private List<Cliente> clientes;
    
    public String cadastro() throws Exception {
        Cliente c = new Cliente();
        c.setNome(nome);
        c.setEmail(email);
        c.setLogin(login);
        c.setSenha(senha);
        
        DAOCliente dao = new DAOCliente();
        dao.create(c);
        
        return SUCCESS;
    }
    
    public String listar() throws Exception {
        DAOCliente dao = new DAOCliente();
        setClientes(dao.read());
        return SUCCESS;
    }
    
    public String remover() throws Exception {
        DAOCliente dao = new DAOCliente();
        dao.delete(getCodigo());
        return SUCCESS;
    }
    
    public String redrectAtualizar(){
        return SUCCESS;
    }
            
    public String atualizar() throws Exception {
        Cliente c = new Cliente();
        c.setCodigo(codigo);
        c.setNome(nome);
        c.setEmail(email);
        c.setLogin(login);
        c.setSenha(senha);
        
        DAOCliente dao = new DAOCliente();
        dao.alterar(c);
        return SUCCESS;
    }
    
    //Metodos get e set
    public List<Cliente> getClientes() { return clientes; }
    public void setClientes(List<Cliente> clientes) { this.clientes = clientes; }
    
    public String getLogin(){ return login; }
    public void setLogin(String login){ this.login = login; }
    
    public String getSenha(){ return senha; }
    public void setSenha(String senha){ this.senha = senha; }
    
    public int getCodigo(){ return codigo; }
    public void setCodigo(int codigo){ this.codigo = codigo; }
    
    public String getNome(){ return nome; }
    public void setNome(String nome){ this.nome = nome; }
    
    public String getEmail() { return email; }
    public void setEmail(String email){ this.email = email; }
}
