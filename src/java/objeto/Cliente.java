package objeto;

public class Cliente {
    private int codigo;
    private String nome;
    private String email;
    private String login;
    private String senha;
    
    //Metodos get e set
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
