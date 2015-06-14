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
public class Paciente {
    
    private int id;
    private String nome;
    private int idade;
    private String doenca;
    private Quarto quarto;
    private int visitNum;
    private boolean visitas;

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
     * @return the quarto
     */
    public Quarto getQuarto() {
        return quarto;
    }

    /**
     * @param quarto the quarto to set
     */
    public void setQuarto(Quarto quarto) {
        this.quarto = quarto;
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
    
    
            
    
}
