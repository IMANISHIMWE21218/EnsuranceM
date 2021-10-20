/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Test;

import Dao.GeneralDao;
import Models.Client;
import org.testng.annotations.Test;

/**
 *
 * @author Win 10
 */
public class Testing {
    GeneralDao cdao= new GeneralDao(Client.class);
    @Test
    public void savetesting(){
        Client cl =new Client("innocent", "02/05/2013", "0789964", "single");
        cdao.save(cl);
    }
    
    
}
