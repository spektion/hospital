/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

import javax.xml.bind.annotation.*;

/**
 *
 * @author Spek
 */
@XmlRootElement
public class DBconf {
    
    private String address;
    private String user;
    private String password;

    /**
     * @return the address
     */
    public String getAddress() {
        return address;
    }

    /**
     * @param address the address to set
     */
    @XmlElement
    public void setAddress(String address) {
        this.address = address;
    }

    /**
     * @return the user
     */
    public String getUser() {
        return user;
    }

    /**
     * @param user the user to set
     */
    @XmlElement
    public void setUser(String user) {
        this.user = user;
    }

    /**
     * @return the password
     */
    public String getPassword() {
        return password;
    }

    /**
     * @param password the password to set
     */
    @XmlElement
    public void setPassword(String password) {
        this.password = password;
    }
    
}
