/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

import java.util.ArrayList;
import static java.util.Collections.list;
import java.util.List;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

/**
 *
 * @author Win 10
 */
@Entity
public class Client {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
   private int ClientId;
   private String ClientName;
   private String ClientDob;
   private String ClientPhone;
   private String ClientCategory;

    public Client() {
    }
    public Client(String ClientName, String ClientDob, String ClientPhone, String ClientCategory) {
        this.ClientName = ClientName;
        this.ClientDob = ClientDob;
        this.ClientPhone = ClientPhone;
        this.ClientCategory = ClientCategory;
    }

    public String getClientName() {
        return ClientName;
    }

    public void setClientName(String ClientName) {
        this.ClientName = ClientName;
    }

    public String getClientDob() {
        return ClientDob;
    }

    public void setClientDob(String ClientDob) {
        this.ClientDob = ClientDob;
    }

    public String getClientPhone() {
        return ClientPhone;
    }

    public void setClientPhone(String ClientPhone) {
        this.ClientPhone = ClientPhone;
    }

    public String getClientCategory() {
        return ClientCategory;
    }

    public void setClientCategory(String ClientCategory) {
        this.ClientCategory = ClientCategory;
    }

    public int getClientId() {
        return ClientId;
    }

    public void setClientId(int ClientId) {
        this.ClientId = ClientId;
    }
 
}
