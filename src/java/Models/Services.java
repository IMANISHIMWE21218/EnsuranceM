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

/**
 *
 * @author Win 10
 */
@Entity
public class Services {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
   private int ServiceId;
   private String ServiceType;
   private String ServicePrice;

    public Services() {
    }

    public Services(String ServiceType, String ServicePrice) {
        this.ServiceType = ServiceType;
        this.ServicePrice = ServicePrice;
    }

    public String getServiceType() {
        return ServiceType;
    }

    public void setServiceType(String ServiceType) {
        this.ServiceType = ServiceType;
    }

    public String getServicePrice() {
        return ServicePrice;
    }

    public void setServicePrice(String ServicePrice) {
        this.ServicePrice = ServicePrice;
    }

    public int getServiceId() {
        return ServiceId;
    }

    public void setServiceId(int ServiceId) {
        this.ServiceId = ServiceId;
    }

   
    
    
}
