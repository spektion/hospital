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
public class Quarto {
    private int andar;
    private String porta;
    private String cama;
    private int visitNum;

    /**
     * @return the andar
     */
    public int getAndar() {
        return andar;
    }

    /**
     * @param andar the andar to set
     */
    public void setAndar(int andar) {
        this.andar = andar;
    }

    /**
     * @return the porta
     */
    public String getPorta() {
        return porta;
    }

    /**
     * @param porta the porta to set
     */
    public void setPorta(String porta) {
        this.porta = porta;
    }

    /**
     * @return the cama
     */
    public String getCama() {
        return cama;
    }

    /**
     * @param cama the cama to set
     */
    public void setCama(String cama) {
        this.cama = cama;
    }

    /**
     * @return the VisitNum
     */
    public int getvisitNum() {
        return visitNum;
    }

    /**
     * @param VisitNum the VisitNum to set
     */
    public void setvisitNum(int visitNum) {
        this.visitNum = visitNum;
    }
    
}
