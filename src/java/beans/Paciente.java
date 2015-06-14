/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

/**
 *
 * @author Spek
 */
import javax.xml.bind.annotation.*;
 
public class Paciente {
    
    private int id;
    private String nome;
    private int idade;
    private String doenca;
    private int visitNum;
    private boolean visitas;
    private boolean alta;
    private int id_qt;
    
    /**
     * @return the id
     */
    public int getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    
    public void setId(int id) {
        this.id = id;
    }

    /**
     * @return the nome
     */
    public String getNome() {
        return nome;
    }

    /**
     * @param nome the nome to set
     */
    
    public void setNome(String nome) {
        this.nome = nome;
    }

    /**
     * @return the idade
     */
    public int getIdade() {
        return idade;
    }

    /**
     * @param idade the idade to set
     */
    
    public void setIdade(int idade) {
        this.idade = idade;
    }

    /**
     * @return the doenca
     */
    public String getDoenca() {
        return doenca;
    }

    /**
     * @param doenca the doenca to set
     */
   
    public void setDoenca(String doenca) {
        this.doenca = doenca;
    }

    /**
     * @return the visitNum
     */
    public int getVisitNum() {
        return visitNum;
    }

    /**
     * @param visitNum the visitNum to set
     */
    
    public void setVisitNum(int visitNum) {
        this.visitNum = visitNum;
    }

    /**
     * @return the visitas
     */
    public boolean isVisitas() {
        return visitas;
    }

    /**
     * @param visitas the visitas to set
     */
    
    public void setVisitas(boolean visitas) {
        this.visitas = visitas;
    }

    /**
     * @return the alta
     */
    public boolean isAlta() {
        return alta;
    }

    /**
     * @param alta the alta to set
     */
    public void setAlta(boolean alta) {
        this.alta = alta;
    }

    /**
     * @return the id_qt
     */
    public int getId_qt() {
        return id_qt;
    }

    /**
     * @param id_qt the id_qt to set
     */
    public void setId_qt(int id_qt) {
        this.id_qt = id_qt;
    }

    
    
            
    
}
