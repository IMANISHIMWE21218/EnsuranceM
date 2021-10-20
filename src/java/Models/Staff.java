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
public class Staff {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    String staff_id;
    String Staffuser;
    String staffemail;
    String password;

    public Staff() {
    }

    public Staff(String staff_id, String Staffuser, String staffemail, String password) {
        this.staff_id = staff_id;
        this.Staffuser = Staffuser;
        this.staffemail = staffemail;
        this.password = password;
    }

    public String getStaff_id() {
        return staff_id;
    }

    public void setStaff_id(String staff_id) {
        this.staff_id = staff_id;
    }

    public String getStaffuser() {
        return Staffuser;
    }

    public void setStaffuser(String Staffuser) {
        this.Staffuser = Staffuser;
    }

    public String getStaffemail() {
        return staffemail;
    }

    public void setStaffemail(String staffemail) {
        this.staffemail = staffemail;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
    
    
    
}
