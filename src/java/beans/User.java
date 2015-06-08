/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

import javax.xml.bind.annotation.*;

/**
 *
 * @author Gonçalo Faria
 */
@XmlRootElement
public class User {
    private String name;
    private String pwd;
    private int id;
    private String tipo;



    /**
     * @param name the name to set
     */
    @XmlElement
    public void setName(String name) {
        this.name = name;
    }

    /**
     * @return the name
     */
    public String getName() {
        return name;
    }

    /**
     * @param pwd the pwd to set
     */
    @XmlElement
    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    /**
     * @return the pwd
     */
    public String getPwd() {
        return pwd;
    }

    /**
     * @param id the id to set
     */
    @XmlElement
    public void setId(int id) {
        this.id = id;
    }

    /**
     * @return the id
     */
    
    public int getId() {
        return id;
    }

    /**
     * @param tipo the tipo to set
     */
    @XmlElement
    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

        /**
     * @return the tipo
     */
    public String getTipo() {
        return tipo;
    }
}
