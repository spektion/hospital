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
public class Visita {
    private int id_vis;
    private String nome;
    private int idade;
    private int cc;
    private int tel;
    private int id_pac;

    /**
     * @return the id_vis
     */
    public int getId_vis() {
        return id_vis;
    }

    /**
     * @param id_vis the id_vis to set
     */
    public void setId_vis(int id_vis) {
        this.id_vis = id_vis;
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
     * @return the cc
     */
    public int getCc() {
        return cc;
    }

    /**
     * @param cc the cc to set
     */
    public void setCc(int cc) {
        this.cc = cc;
    }

    /**
     * @return the tel
     */
    public int getTel() {
        return tel;
    }

    /**
     * @param tel the tel to set
     */
    public void setTel(int tel) {
        this.tel = tel;
    }

    /**
     * @return the id_pac
     */
    public int getId_pac() {
        return id_pac;
    }

    /**
     * @param id_pac the id_pac to set
     */
    public void setId_pac(int id_pac) {
        this.id_pac = id_pac;
    }
}
