/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelos;

/**
 *
 * @author Aluno
 */
public class Pessoa implements java.io.Serializable {
    private String nome;
    private String idade;
    private String email;
    
    public Pessoa() {
        this.idade="21";
        this.nome="Reinaldo Vinicius de souza romagnoli";
        this.email="qualquercoisa@gmail.com";
    }
	
    public String getNome() {
        return nome;
    }
	
    public void setNome(String nome) {
        this.nome = nome;
    } 
	
    public String getIdade() {
        return idade;
    }
	
    public void setIdade(String idade) {
        this.idade = idade;
    }   
    
    public String getEmail() {
        return email;
    }
	
    public void setEmail(String email) {
        this.email = email;
    }
}
