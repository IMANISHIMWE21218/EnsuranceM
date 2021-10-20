/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import java.io.Serializable;
import java.util.List;
import org.hibernate.Session;


/**
 *
 * @author Nishimwe Elysee
 */
public class GeneralDao<Y> {
    private Class<Y> type;

    public GeneralDao(Class<Y> type) {
        this.type = type;
    }
    Session session= null;
    public void save(Y obj){
        session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        session.save(obj);
        session.getTransaction().commit();
        session.close();
    }
    public void update(Y obj){
        session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        session.update(obj);
        session.getTransaction().commit();
        session.close();
    }
    public void delete(Y obj){
        session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        session.delete(obj);
        session.getTransaction().commit();
        session.close();
    }
    public Y findById(Serializable id){
        session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        Y obj = (Y) session.get(type,id);
        session.getTransaction().commit();
        session.close();
        return obj;
    }
    public Y findByName(String name){
        session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        Y obj = (Y) session.get(type,name);
        session.getTransaction().commit();
        session.close();
        return obj;
    }
    public List<Y> findAll(){
        session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        List<Y> obj = session.createCriteria(type.getName()).list();
        session.getTransaction().commit();
        session.close();
        return obj;
    }
}
