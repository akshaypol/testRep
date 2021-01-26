/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Com.Admin.Dao;


import Com.Admin.Model.SuperAdminLogin;
import Com.Util.HibernateUtil;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author roveena
 */
public class SuperAdminDao {

    public boolean save(SuperAdminLogin r) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        if (isExist(r)) {
            return false;
        }
        Transaction t = null;

        try {
            t = session.getTransaction();
            t.begin();
            session.saveOrUpdate(r);
            t.commit();
        } catch (Exception e) {
            e.printStackTrace();
            t.rollback();
        } finally {
            session.close();
        }
        return true;
    }

    public static boolean isExist(SuperAdminLogin r) {
        SessionFactory sf = HibernateUtil.getSessionFactory();
        Session hsession = sf.openSession();
        boolean result = false;
        Criteria c = hsession.createCriteria(SuperAdminLogin.class);
        Transaction tx = hsession.beginTransaction();
        try {

            c.add(Restrictions.eq("Username", r.getUsername()));
            SuperAdminLogin u = (SuperAdminLogin) c.uniqueResult();
            tx.commit();
            if (u != null) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
            tx.rollback();
        } finally {
            hsession.close();
        }
        return result;
    }

    public List<SuperAdminLogin> getAll() {
        SessionFactory sf = HibernateUtil.getSessionFactory();
        Session hsession = sf.openSession();
        Criteria c = hsession.createCriteria(SuperAdminLogin.class);
        Transaction tx = hsession.beginTransaction();
        try {

            List<SuperAdminLogin> empList = c.list();
            tx.commit();
            return empList;
        } catch (Exception e) {
            e.printStackTrace();
            tx.rollback();
        } finally {
            hsession.close();
        }
        return null;
    }

    public SuperAdminLogin getById(long id) {
        SessionFactory sf = HibernateUtil.getSessionFactory();
        Session hsession = sf.openSession();
        SuperAdminLogin u = null;
        Criteria c = hsession.createCriteria(SuperAdminLogin.class);
        Transaction tx = hsession.beginTransaction();
        try {

            c.add(Restrictions.eq("Id", id));
            u = (SuperAdminLogin) c.uniqueResult();
            tx.commit();
            if (u != null) {
                return u;
            }

        } catch (Exception e) {
            e.printStackTrace();
            tx.rollback();
        } finally {
            hsession.close();
        }
        return null;
    }

    public void Update(SuperAdminLogin i) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction tx = session.beginTransaction();

        try {
            System.err.println(i);
            session.update(i);
            tx.commit();

        } catch (Exception e) {
            e.printStackTrace();
            tx.rollback();
        } finally {
            session.close();
        }
    }

    public int Delete(long id) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction tx = session.beginTransaction();
        try {
            SuperAdminLogin deleteObject = (SuperAdminLogin) session.load(SuperAdminLogin.class, id);
            session.delete(deleteObject);
            tx.commit();
        } catch (Exception e) {
            e.printStackTrace();
            tx.rollback();
            return 0;
        } finally {
            session.close();

        }
        return 1;
    }

    public SuperAdminLogin getSuperAdmin(SuperAdminLogin g) {
        SessionFactory sf = HibernateUtil.getSessionFactory();
        Session hsession = sf.openSession();
        SuperAdminLogin u = null;
        Criteria c = hsession.createCriteria(SuperAdminLogin.class);
        Transaction tx = hsession.beginTransaction();
        try {

            c.add(Restrictions.eq("Username", g.getUsername()));
            c.add(Restrictions.eq("Password", g.getPassword()));
            u = (SuperAdminLogin) c.uniqueResult();
            tx.commit();
            if (u != null) {
                return u;
            }

        } catch (Exception e) {
            e.printStackTrace();
            tx.rollback();
        } finally {
            hsession.close();
        }
        return null;
    }

}
