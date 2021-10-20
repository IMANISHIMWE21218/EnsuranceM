/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

/**
 *
 * @author Win 10
 */
@Entity
public class Insurance {
  @Id 
  @GeneratedValue(strategy = GenerationType.AUTO)
  private  int InsuranceId;
  @ManyToOne
  @JoinColumn(name="ClientId")
  private  Client client;
  private  String StartingDate;
  private  String EndingDate;
  private  String services;

    public Insurance() {
    }

    public Insurance(Client client, String StartingDate, String EndingDate, String services) {
        this.client = client;
        this.StartingDate = StartingDate;
        this.EndingDate = EndingDate;
        this.services = services;
    }
    public Client getClient() {
        return client;
    }

    public void setClient(Client client) {
        this.client = client;
    }

    public String getStartingDate() {
        return StartingDate;
    }

    public void setStartingDate(String StartingDate) {
        this.StartingDate = StartingDate;
    }

    public String getEndingDate() {
        return EndingDate;
    }

    public void setEndingDate(String EndingDate) {
        this.EndingDate = EndingDate;
    }

    public String getServices() {
        return services;
    }

    public void setServices(String services) {
        this.services = services;
    }

    public int getInsuranceId() {
        return InsuranceId;
    }

    



    
    
    

   
}
